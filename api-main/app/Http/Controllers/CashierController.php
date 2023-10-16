<?php
namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

use App\Models\Event;
use App\Models\Cashier;
use App\Models\CashierTransaction;
use App\Models\ReturnTransaction;
use App\Models\ReturnTransactionDetail;
use App\Models\ItemTransaction;
use App\Models\Conversion;
use App\Models\Customer;
use App\Models\Stock;
class CashierController extends Controller
{
    //
    public function index() {
        $data = Cashier::query();
        dd($data);
        if (request()->has('start_date') || request()->has('end_date')) {
            $data = $data->whereBetween('created_at', [request()->get('start_date'), request()->get('end_date')]);
        }
        $data = $data->paginate(request()->has('per_page') ? request()->get('per_page') : 10);
        return response()->json([
            'data'       => $data,
            'status'     => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }

    public function customer() {
        $data = Customer::query();
        // dd(request()->has('search'));
        if (request()->has('search')) {
            $search = strtoupper(request()->get('search'));
            $data->whereRaw(" (`KodePelanggan` like ? or `NamaPelanggan` like ?) ",["%".$search."%","%".$search."%"]);             
        }
        $data = $data->paginate(request()->has('per_page') ? request()->get('per_page') : 5);
        return response()->json([
            'data'       => $data,
            'status'     => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }

    public function transactionIndex() {
        // where('KodeLokasi', '=', request()->get('warehouse'))->
        // this->validate($request,[
        //     'start_date' => 'required|date',
        //     'end_date' => 'required|date|before_or_equal:start_date',
        //    ]);
         
        $data = Cashier::query()->orderBy('id', 'desc');
        if (request()->has('search')) {
            $search = strtoupper(request()->get('search'));
            $data->whereRaw(" (`KodeKasir` like ? or `KodePelanggan` like ?) ",["%".$search."%","%".$search."%"]);
        }
        if (request()->has('start_date')) {
            $data->where('created_at', '>=', request()->get('start_date'));
        }
        if (request()->has('end_date')) {
            $data->where('created_at', '<=', request()->get('end_date'));
        }
        $data = $data->paginate(request()->has('per_page') ? request()->get('per_page') : 10);
        foreach ($data as $key => $value) {
            $value['Items'] = DB::table('kasirdetails')
                            ->join('items', 'kasirdetails.KodeItem', '=', 'items.KodeItem')
                            ->where('kasirdetails.KodeKasir', '=', $value->KodeKasir)
                            ->get();
                            foreach ($value['Items'] as $key2 => $value2) {
                                # code...
                                $value2->Return = ReturnTransactionDetail::where([['KodeKasir', '=', $value2->KodeKasir],['KodeItem', '=', $value2->KodeItem]])
                                                    ->first();
                            }
            $value['Customer'] = Customer::where('KodePelanggan', '=', $value->KodePelanggan)->first();
        }

        return response()->json([
            'data'       => $data,
            'status'     => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }
     public function checker(){
        try {
            //code...
            $items = CashierTransaction::where('KodeKasir', '=', request()->get('code'))->first();
            $items->KodeKasir   = request()->get('KodeKasir');
            $items->KodeItem      = request()->get('KodeItem');
            $items->Qty = request()->get('Qty');
            $items->KodeLokasi = request()->get('KodeLokasi');
            $items->Harga     = request()->get('HargaJual');
            $items->KodeSatuan    = request()->get('KodeSatuan');
            $items->updated_at   = Carbon::now();
            $items->save();

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Mengecek Penjualan dengan kode  ' . $items->KodeKasir,
                'Tipe' => 'I',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]);
            Cashier::update([
                'Status' => 'CFM'
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
     public function checkerUpdate(){
        
        $transaction = Cashier::where('KodeKasir', '=', request()->get('KodeKasir'))->first();
            $transaction->Status  = 'OPN';
            $transaction->updated_at  = Carbon::now();
            $transaction->save();
            $newID = request()->get('KodeKasir');
        $total = 0;
        
        foreach (request()->get('lines') as $key => $value) {
            # code...
            $value['KodeSatuan'] = Conversion::where('KodeItem', '=', $value['code'])->value('KodeSatuan');
            $value['HargaJual'] = Conversion::where('KodeItem', '=', $value['code'])->value('HargaJual');
            $total += $value['qty'] * $value['HargaJual'];
        }
        $tax = request()->has('tax') ? $total * request()->get('tax') : 0;
        $discount = request()->get('discount');
        $subtotal = $total + $tax - $discount;
        try {
            //code...
            foreach (request()->get('lines') as $key => $value) {
                # code...
                $value['KodeSatuan'] = Conversion::where('KodeItem', '=', $value['code'])->value('KodeSatuan');
                $value['HargaJual'] = Conversion::where('KodeItem', '=', $value['code'])->value('HargaJual');
                 $transaction = Cashier::where('KodeKasir', '=', request()->get('KodeKasir'))->update([
                     'Total'          => $total,
                      'Diskon'         => $discount,
                       'NilaiDiskon'    => $discount,
                        'Subtotal'       => $subtotal,
                        'Bayar'          => request()->get('payment'),
                        'Kembalian'      => request()->get('payment') - $subtotal
                     ]);
                CashierTransaction::insert([
                    'KodeKasir'   => $newID,
                    'KodeItem'    => $value['code'],
                    'Qty'         => $value['qty'],
                    'Harga'       => $value['HargaJual'],
                    'HargaRata'   => $value['HargaJual'],
                    'KodeSatuan'  => $value['KodeSatuan'],
                    'NoUrut'      => $key + 1,
                    'Subtotal'    => $subtotal,
                    'created_at'  => Carbon::now(),
                    'updated_at'  => Carbon::now()
                ]);

                $checkAsal = ItemTransaction::CurrentStock($value['code'],  request()->get('warehouse'));
                Stock::insert([
                    'Tanggal'         => Carbon::now()->format('Y-m-d'),
                    'KodeLokasi'      => request()->get('warehouse'),
                    'KodeItem'        => $value['code'],
                    'JenisTransaksi'  => 'KS',
                    'KodeTransaksi'   => $newID,
                    'Qty'             => $value['qty'] * -1,
                    'HargaRata'       => $value['HargaJual'],
                    'KodeUser'        => \Auth::user()->username,
                    'idx'             => $key,
                    'indexmov'        => $key,
                    'saldo'           => $checkAsal - $value['qty'],
                    'created_at'      => Carbon::now(),
                    'updated_at'      => Carbon::now()
                ]);
            }

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membuat Transaksi Nomor ' . $newID,
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
    public function transaction () {
        //dd(\Auth::user());
        $last_id = Cashier::where('KodeKasir', 'like', '%KSR-'.date('y').date('m').'%')
        ->orderBy('id', 'desc')
        ->count();
        
        $id = empty($last_id) ? 1 : $last_id+1;
        $newID = 'KSR-'.date('y').date('m').str_pad($id, 4, '0', STR_PAD_LEFT);

        $lastid = DB::table('kasir')->where('KodeKasir', 'like', '%KSR-'.date('y').date('m').'%')
        ->orderBy('id', 'desc')
        ->count();
        
        $id_kedua = empty($lastid) ? 1 : $lastid+1;
        $newID_kedua = 'KSR-'.date('y').date('m').str_pad($id_kedua, 4, '0', STR_PAD_LEFT);
        $total = 0;
        
        foreach (request()->get('lines') as $key => $value) {
            # code...
            $value['KodeSatuan'] = Conversion::where('KodeItem', '=', $value['code'])->value('KodeSatuan');
            $value['HargaJual'] = Conversion::where('KodeItem', '=', $value['code'])->value('HargaJual');
            $total += $value['qty'] * $value['HargaJual'];
        }
        $tax = request()->has('tax') ? $total * request()->get('tax') : 0;
        $discount = request()->get('discount');
        $subtotal = $total + $tax - $discount;
        try {
            //code...
            if(request()->get('choice') == 'yes'){
                Cashier::insert([
                    'KodeKasir'      => $newID,
                    'Tanggal'        => Carbon::now(),
                    'KodeLokasi'     => request()->get('warehouse'),
                    'KodeMataUang'   => 'Rp',
                    'Status'         => 'OPN',
                    'KodeUser'       => \Auth::user()->username,
                    'Total'          => $total,
                    'PPN'            => request()->get('tax') !== 0 ? 'iya' : 'tidak',
                    'NilaiPPN'       => $tax,
                    'Printed'        => 0,
                    'Diskon'         => $discount,
                    'NilaiDiskon'    => $discount,
                    'Subtotal'       => $subtotal,
                    'Bayar'          => request()->get('payment'),
                    'Kembalian'      => request()->get('payment') - $subtotal,
                    'KodePelanggan'  => request()->get('customer'),
                    'Keterangan'     => '',
                    'created_at'     => Carbon::now(),
                    'updated_at'     => Carbon::now()
                ]);
                
                foreach (request()->get('lines') as $key => $value) {
                    # code...
                    $value['KodeSatuan'] = Conversion::where('KodeItem', '=', $value['code'])->value('KodeSatuan');
                    $value['HargaJual'] = Conversion::where('KodeItem', '=', $value['code'])->value('HargaJual');
                    CashierTransaction::insert([
                        'KodeKasir'   => $newID,
                        'KodeItem'    => $value['code'],
                        'Qty'         => $value['qty'],
                        'Harga'       => $value['HargaJual'],
                        'HargaRata'   => $value['HargaJual'],
                        'KodeSatuan'  => $value['KodeSatuan'],
                        'NoUrut'      => $key + 1,
                        'Subtotal'    => $subtotal,
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now()
                    ]);
    
                    $checkAsal = ItemTransaction::CurrentStock($value['code'],  request()->get('warehouse'));
                    Stock::insert([
                        'Tanggal'         => Carbon::now()->format('Y-m-d'),
                        'KodeLokasi'      => request()->get('warehouse'),
                        'KodeItem'        => $value['code'],
                        'JenisTransaksi'  => 'KS',
                        'KodeTransaksi'   => $newID,
                        'Qty'             => $value['qty'] * -1,
                        'HargaRata'       => $value['HargaJual'],
                        'KodeUser'        => \Auth::user()->username,
                        'idx'             => $key,
                        'indexmov'        => $key,
                        'saldo'           => $checkAsal - $value['qty'],
                        'created_at'      => Carbon::now(),
                        'updated_at'      => Carbon::now()
                    ]);
                }
            }else if(request()->get('choice') == 'no'){
                DB::table('kasir')->insert([
                    'KodeKasir'      => $newID_kedua,
                    'Tanggal'        => Carbon::now(),
                    'KodeLokasi'     => request()->get('warehouse'),
                    'KodeMataUang'   => 'Rp',
                    'Status'         => 'OPN',
                    'KodeUser'       => \Auth::user()->username,
                    'Total'          => $total,
                    'PPN'            => request()->get('tax') !== 0 ? 'iya' : 'tidak',
                    'NilaiPPN'       => $tax,
                    'Printed'        => 0,
                    'Diskon'         => $discount,
                    'NilaiDiskon'    => $discount,
                    'Subtotal'       => $subtotal,
                    'Bayar'          => request()->get('payment'),
                    'Kembalian'      => request()->get('payment') - $subtotal,
                    'KodePelanggan'  => request()->get('customer'),
                    'Keterangan'     => '',
                    'created_at'     => Carbon::now(),
                    'updated_at'     => Carbon::now()
                ]);
                
                foreach (request()->get('lines') as $key => $value) {
                    # code...
                    $value['KodeSatuan'] = Conversion::where('KodeItem', '=', $value['code'])->value('KodeSatuan');
                    $value['HargaJual'] = Conversion::where('KodeItem', '=', $value['code'])->value('HargaJual');
                    DB::table('kasirdetail')->insert([
                        'KodeKasir'   => $newID_kedua,
                        'KodeItem'    => $value['code'],
                        'Qty'         => $value['qty'],
                        'Harga'       => $value['HargaJual'],
                        'HargaRata'   => $value['HargaJual'],
                        'KodeSatuan'  => $value['KodeSatuan'],
                        'NoUrut'      => $key + 1,
                        'Subtotal'    => $subtotal,
                        'created_at'  => Carbon::now(),
                        'updated_at'  => Carbon::now()
                    ]);
    
                    $checkAsal = ItemTransaction::CurrentStock($value['code'],  request()->get('warehouse'));
                    Stock::insert([
                        'Tanggal'         => Carbon::now()->format('Y-m-d'),
                        'KodeLokasi'      => request()->get('warehouse'),
                        'KodeItem'        => $value['code'],
                        'JenisTransaksi'  => 'KS',
                        'KodeTransaksi'   => $newID,
                        'Qty'             => $value['qty'] * -1,
                        'HargaRata'       => $value['HargaJual'],
                        'KodeUser'        => \Auth::user()->username,
                        'idx'             => $key,
                        'indexmov'        => $key,
                        'saldo'           => $checkAsal - $value['qty'],
                        'created_at'      => Carbon::now(),
                        'updated_at'      => Carbon::now()
                    ]);
                }
            }
            

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membuat Transaksi Nomor ' . $newID,
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

    public function transactionCancel () {
        try {
            //code...
            $transaction = Cashier::where('KodeKasir', '=', request()->get('code'))->first();
                        
            $transaction->Status = 'DEL';
            $transaction->save();

            $stock       = ItemTransaction::where('KodeTransaksi', '=',request()->get('code'))->delete();
            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membatalkan Transaksi Nomor ' . $transaction->KodeKasir,
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
            throw $th;
            return response()->json([
                'data'       => (object)[],
                'status'     => false,
                'message'    => 'Data tidak berhasil dibatalkan'
            ]);
        }
    }

    public function returnTransactionIndex() {
        $data = ReturnTransaction::query()->orderBy('id', 'desc');
        
        if (request()->has('search')) {
            $search = strtoupper(request()->get('search'));
            $data->whereRaw(" (`KodeKasirReturn` like ? or `KodeKasir` like ?) ",["%".$search."%","%".$search."%"]);
        }
        if (request()->has('start_date')) {
            $data->where('created_at', '>=', request()->get('start_date'));
        }
        if (request()->has('end_date')) {
            $data->where('created_at', '<=', request()->get('end_date'));
        }
        $data = $data->paginate(request()->has('per_page') ? request()->get('per_page') : 10);
        foreach ($data as $key => $value) {
            $value['Items'] = DB::table('kasirreturndetails')
                            // ->join('kasirs', 'kasirreturndetails.KodeKasir', '=', 'kasirs.KodeKasir')
                            ->join('items', 'kasirreturndetails.KodeItem', '=', 'items.KodeItem')
                            ->where('kasirreturndetails.KodeKasir', '=', $value->KodeKasir)
                            ->get();
        }

        return response()->json([
            'data'       => $data,
            'status'     => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }

    public function returnTransaction () {
        $last_id = ReturnTransaction::where('KodeKasirReturn', 'like', '%RKS-'.date('y').date('m').'%')
        ->orderBy('id', 'desc')
        ->count();
        
        $id = empty($last_id) ? 1 : $last_id+1;
        $newID = 'RKS-'.date('y').date('m').str_pad($id, 4, '0', STR_PAD_LEFT);
        $total = 0;

        $invoice = Cashier::where('KodeKasir', '=', request()->get('code'))->first();
        
        foreach (request()->get('lines') as $key => $value) {
            # code...
            $value['KodeSatuan'] = Conversion::where('KodeItem', '=', $value['code'])->value('KodeSatuan');
            $value['HargaJual'] = Conversion::where('KodeItem', '=', $value['code'])->value('HargaJual');
            $total += $value['qty'] * $value['HargaJual'];
        }
        $tax = $invoice->PPN === 'iya' ? $total * 0.11 : 0;
        $subtotal = $total + $tax;
        try {
            //code...
            ReturnTransaction::insert([
                'KodeKasirReturn'      => $newID,
                'KodeKasir'            => request()->get('code'),
                'Tanggal'              => Carbon::now(),
                'Status'               => 'CFM',
                'KodeUser'             => \Auth::user()->username,
                'Keterangan'           => '',
                'PPN'                  => $invoice->PPN === 'iya' ? 'iya' : 'tidak',
                'NilaiPPN'             => $tax,
                'Diskon'               => 0,
                'NilaiDiskon'          => 0,
                'Subtotal'             => $subtotal,
                'Total'                => $total,
                'Printed'              => 0,
                'created_at'           => Carbon::now(),
                'updated_at'           => Carbon::now()
            ]);
            
            foreach (request()->get('lines') as $key => $value) {
                # code...
                $value['KodeSatuan'] = Conversion::where('KodeItem', '=', $value['code'])->value('KodeSatuan');
                $value['HargaJual'] = Conversion::where('KodeItem', '=', $value['code'])->value('HargaJual');
                if($value['qty'] > 0) {
                    ReturnTransactionDetail::insert([
                        'KodeKasirReturn'   => $newID,
                        'KodeKasir'         => request()->get('code'),
                        'KodeItem'          => $value['code'],
                        'KodeSatuan'        => $value['KodeSatuan'],
                        'Harga'             => $value['HargaJual'],
                        'Qty'               => $value['qty'],
                        'Keterangan'        => '',
                        'NoUrut'            => $key + 1,
                        'created_at'        => Carbon::now(),
                        'updated_at'        => Carbon::now()
                    ]);
    
                    $checkAsal = ItemTransaction::CurrentStock($value['code'],  request()->get('warehouse'));
                    Stock::insert([
                        'Tanggal'         => Carbon::now()->format('Y-m-d'),
                        'KodeLokasi'      => $invoice->KodeLokasi,
                        'KodeItem'        => $value['code'],
                        'JenisTransaksi'  => 'RK',
                        'KodeTransaksi'   => $newID,
                        'Qty'             => $value['qty'],
                        'HargaRata'       => $value['HargaJual'],
                        'KodeUser'        => \Auth::user()->username,
                        'idx'             => $key,
                        'indexmov'        => $key,
                        'saldo'           => $checkAsal + $value['qty'],
                        'created_at'      => Carbon::now(),
                        'updated_at'      => Carbon::now()
                    ]);
                }
                }

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membuat Retur Transaksi Nomor ' . $newID,
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
    public function penjualan(){
        try {
            //code...
            $Subtotal = DB::table('kasirs')
            ->select('Subtotal');
            return response()->json([
                'data'       => [
                    'subtotal' => $Subtotal
                ],
                'status'     => true,
                'message'    => 'Data berhasil diambil'
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

    public function returnTransactionCancel () {
        try {
            //code...
            $transaction = Cashier::where('KodeKasir', '=', request()->get('code'))->first();
                        
            $transaction->Status = 'DEL';
            $transaction->save();

            $stock       = ItemTransaction::where('KodeTransaksi', '=',request()->get('code'))->delete();
            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membatalkan Transaksi Nomor ' . $transaction->KodeKasir,
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
            throw $th;
            return response()->json([
                'data'       => (object)[],
                'status'     => false,
                'message'    => 'Data tidak berhasil dibatalkan'
            ]);
        }
    }

    
}
