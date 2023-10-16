<?php
namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use App\Models\Event;
use App\Models\Stock;
use App\Models\ItemTransaction;
use App\Models\WarehouseTransaction;
use App\Models\WarehouseTransactionDetail;
class WarehouseController extends Controller
{
    //
    public function index () {
        try {
            //code...
            $data = WarehouseTransaction::query();
            if (request()->has('search')) {
                $search = strtoupper(request()->get('search'));
                $data->whereRaw(" (`KodePindah` like ?) ",["%".$search."%"]);
            }
            if (request()->has('start_date')) {
                $data->where('created_at', '>=', request()->get('start_date'));
            }
            if (request()->has('end_date')) {
                $data->where('created_at', '<=', request()->get('end_date'));
            }
            $data =  $data->orderByDesc('id')->paginate(request()->has('per_page') ? request()->get('per_page') : 10);
            foreach ($data as $key => $value) {
                $value['Items'] = DB::table('pindahgudangdetails')
                                ->join('items', 'pindahgudangdetails.KodeItem', '=', 'items.KodeItem')
                                ->where('pindahgudangdetails.KodePindah', '=', $value->KodePindah)
                                ->get();
            }
            
            return response()->json([
                'data'       => $data,
                'status'     => true,
                'message'    => 'Data berhasil Diambil'
            ]);
        } catch (\Throwable $th) {
            dd($th);
            return response()->json([
                'data'       => (object)[],
                'status'     => false,
                'message'    => 'Data tidak berhasil Diambil'
            ]);
        }
    }

    public function outbound () {
        $last_id = WarehouseTransaction::where('KodePindah', 'like', '%WHT-'.date('y').date('m').'%')
        ->orderBy('id', 'desc')
        ->count();
        
        $id = empty($last_id) ? 1 : $last_id+1;
        $newID = 'WHT-'.date('y').date('m').str_pad($id, 4, '0', STR_PAD_LEFT);
        try {
            //code...
            WarehouseTransaction::insert([
                'KodePindah'  => $newID,
                'KodeUser'    => \Auth::user()->username,
                'Status'      => 'OPN',
                'DariLokasi'  => request()->get('from'),
                'KeLokasi'    => request()->get('to'),
                'Tanggal'     => request()->get('date'),
                'Keterangan'  => request()->get('description'),
                'created_at'  => Carbon::now(),
                'updated_at'  => Carbon::now()
            ]);
            
            foreach (request()->get('lines') as $key => $value) {
                # code...
                WarehouseTransactionDetail::insert([
                    'KodePindah'  => $newID,
                    'KodeItem'    => $value['code'],
                    'KodeSatuan'  => $value['unit'],
                    'Qty'         => $value['qty'],
                    'Keterangan'  => request()->get('description'),
                    'NoUrut'      => $key + 1,
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now()
                ]);
            }

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membuat Mutasi Nomor ' . $newID,
                'Tipe' => 'I',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]);

            return response()->json([
                'data'       => (object)[],
                'status'     => true,
                'message'    => 'Data berhasil Disimpan'
            ]);
        } catch (\Throwable $th) {
            dd($th);
            return response()->json([
                'data'       => (object)[],
                'status'     => false,
                'message'    => 'Data tidak berhasil Disimpan'
            ]);
        }

    }

    public function outboundConfirm () {
        $transaction = WarehouseTransaction::where('KodePindah', '=', request()->get('code'))->first();
        $items       = WarehouseTransactionDetail::where('KodePindah', '=',  request()->get('code'))->get();
        $state       = true;
        foreach ($items as $key => $value) {
            $check = ItemTransaction::CurrentStock($value->KodeItem,  $transaction->DariLokasi);
            if($check < $value->Qty) {
                $state = false;
            }
        };
        if($state) {
            foreach ($items as $key => $value) {
                # code...
    
                $checkAsal = ItemTransaction::CurrentStock($value->KodeItem,  $transaction->DariLokasi);
                $checkTujuan = ItemTransaction::CurrentStock($value->KodeItem,  $transaction->KeLokasi);
                try {
                    //code...
                    Stock::insert([
                        'Tanggal'         => $transaction->Tanggal,
                        'KodeLokasi'      => $transaction->KeLokasi,
                        'KodeItem'        => $value->KodeItem,
                        'JenisTransaksi'  => 'WHT',
                        'KodeTransaksi'   => $transaction->KodePindah,
                        'Qty'             => $value->Qty,
                        'HargaRata'       => 0,
                        'KodeUser'        => \Auth::user()->username,
                        'idx'             => $key,
                        'indexmov'        => $key,
                        'saldo'           => $checkTujuan + $value->Qty,
                        'created_at'      => Carbon::now(),
                        'updated_at'      => Carbon::now()
                    ]);
                    Stock::insert([
                        'Tanggal'         => $transaction->Tanggal,
                        'KodeLokasi'      => $transaction->DariLokasi,
                        'KodeItem'        => $value->KodeItem,
                        'JenisTransaksi'  => 'WHT',
                        'KodeTransaksi'   => $transaction->KodePindah,
                        'Qty'             => $value->Qty * -1,
                        'HargaRata'       => 0,
                        'KodeUser'        => \Auth::user()->username,
                        'idx'             => $key,
                        'indexmov'        => $key,
                        'saldo'           => $checkAsal - $value->Qty,
                        'created_at'      => Carbon::now(),
                        'updated_at'      => Carbon::now()
                    ]);
                } catch (\Throwable $th) {
                    dd($th);
                    return response()->json([
                        'data'       => (object)[],
                        'status'     => false,
                        'message'    => 'Data tidak berhasil Disimpan'
                    ]);
                }
            }

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Mengonfirmasi Mutasi Nomor ' . $transaction->KodePindah,
                'Tipe' => 'I',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]);

            $transaction->Status = 'CFM';
            $transaction->save();
    
            return response()->json([
                'data'       => (object)[],
                'status'     => true,
                'message'    => 'Data berhasil Disimpan'
            ]);
        } else {
            return response()->json([
                'data'       => (object)[],
                'status'     => false,
                'message'    => 'Ada stok yang tidak sesuai'
            ]);
        }
    }

    public function outboundUpdate () {
        try {
            //code...
            $transaction = WarehouseTransaction::where('KodePindah', '=', request()->get('code'))->first();
            // dd(request()->get('code'));
            $transaction->KodeUser    = \Auth::user()->username;
            $transaction->DariLokasi  = request()->get('from');
            $transaction->KeLokasi    = request()->get('to');
            $transaction->Keterangan  = request()->get('description');
            $transaction->updated_at  = Carbon::now();
            $transaction->save();

            $items       = WarehouseTransactionDetail::where('KodePindah', '=',  request()->get('code'))->delete();
            
            foreach (request()->get('lines') as $key => $value) {
                # code...
                WarehouseTransactionDetail::insert([
                    'KodePindah'  => request()->get('code'),
                    'KodeItem'    => $value['code'],
                    'KodeSatuan'  => $value['unit'],
                    'Qty'         => $value['qty'],
                    'Keterangan'  => request()->get('description'),
                    'NoUrut'      => $key + 1,
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now()
                ]);
            }

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Mengubah Mutasi Nomor ' . $transaction->KodePindah,
                'Tipe' => 'I',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]);

            return response()->json([
                'data'       => (object)[],
                'status'     => true,
                'message'    => 'Data berhasil diubah'
            ]);
        } catch (\Throwable $th) {
            throw $th;
            return response()->json([
                'data'       => (object)[],
                'status'     => false,
                'message'    => 'Data tidak berhasil diubah'
            ]);
        }
    }

    public function outboundCancel () {
        try {
            //code...
            $transaction = WarehouseTransaction::where('KodePindah', '=', request()->get('code'))->first();
                        
            $transaction->Status = 'DEL';
            $transaction->save();

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membatalkan Mutasi Nomor ' . $transaction->KodePindah,
                'Tipe' => 'I',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]);

            return response()->json([
                'data'       => (object)[],
                'status'     => true,
                'message'    => 'Data berhasil dibatalkan'
            ]);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json([
                'data'       => (object)[],
                'status'     => false,
                'message'    => 'Data tidak berhasil dibatalkan'
            ]);
        }
    }
}
