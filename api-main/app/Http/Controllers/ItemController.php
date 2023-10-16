<?php
namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\ValidationException;

use App\Models\Category;
use App\Models\Conversion;
use App\Models\Event;
use App\Models\Item;
use App\Models\ItemTransaction;
use App\Models\Warehouse;
use DB;
class ItemController extends Controller
{
    //
    public function index() {
        $data = Item::query();
        if (request()->has('search')) {
            $search = strtoupper(request()->get('search'));
            $data->whereRaw(" (`KodeItem` like ? or `NamaItem` like ?) ",["%".$search."%","%".$search."%"]);
        }
        if (request()->has('category')) {
            $json = stripslashes(request()->get('category'));
            $json = json_decode($json);
            $data = $data->filter(array_filter($json));
        }
        $data = $data->paginate(request()->has('per_page') ? request()->get('per_page') : 10);
        foreach ($data as $key => $value) {
            if(request()->has('warehouse')) {
                $warehouse = request()->get('warehouse');
                $data[$key]['Stok'] = ItemTransaction::select('saldo')->where('KodeItem', '=', $value->KodeItem)
                                ->where('KodeLokasi', '=', $warehouse)
                                ->orderByDesc('id')->limit(1)->value('saldo');
            } else {
                $data[$key]['Stok'] = 0;
                $warehouse = Warehouse::get();
                foreach ($warehouse as $key2 => $value2) {
                    # code...
                    $data[$key]['Stok'] += ItemTransaction::select('saldo')->where('KodeItem', '=', $value->KodeItem)
                    ->where('KodeLokasi', '=', $value2->KodeLokasi)
                    ->orderByDesc('id')->limit(1)->value('saldo');

                    $value2['Stok'] = ItemTransaction::select('saldo')->where('KodeItem', '=', $value->KodeItem)
                    ->where('KodeLokasi', '=', $value2->KodeLokasi)
                    ->orderByDesc('id')->limit(1)->value('saldo');
                }
                $data[$key]['Stats'] = $warehouse;
            }
            if(is_null($data[$key]['Stok'])) {
                $data[$key]['Stok'] = 0;
            }
            $data[$key]['KodeSatuan'] = Conversion::where('KodeItem', '=', $value->KodeItem)->value('KodeSatuan');
            $data[$key]['HargaJual'] = Conversion::where('KodeItem', '=', $value->KodeItem)->value('HargaJual');
            $data[$key]['HargaBeli'] = Conversion::where('KodeItem', '=', $value->KodeItem)->value('HargaBeli');
        }

        return response()->json([
            'data'       => $data,
            'status'     => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }

    public function store() {

        $validator = \Validator::make(request()->all(), [
            'rack' => 'required',
            'category' => 'required',
            'name' => 'required',
            'type' => 'required',
            'description' => 'required',
            'unit' => 'required',
            'hpp' => 'required',
            'sale' => 'required'
        ]);
        
        if ($validator->fails()) {
            return response()->json([
                'errors'     => $validator->errors()->all(),
                'status'     => false,
                'message'    => 'Data tidak berhasil Disimpan'
            ]);
        }
        
        $last_id = Item::where('KodeKategori', '=', request()->get('category'))
        ->orderBy('id', 'desc')
        ->count();
            
        $id = empty($last_id) ? 1 : $last_id+1;
        $code = Category::select('KodeItemAwal')->where('KodeKategori', '=', request()->get('category'))->first();
        $newID = $code->KodeItemAwal.'-'.str_pad($id, 3, '0', STR_PAD_LEFT);

        try {
            //code...
            Item::insert([
                'KodeItem'       => $newID,
                'KodeRak'        => request()->get('rack'),
                'Barcode'        => $newID,
                'KodeKategori'   => request()->get('category'),
                'NamaItem'       => request()->get('name'),
                'Alias'          => '-',
                'jenisitem'      => request()->get('type'),
                'Keterangan'     => request()->get('description'),
                'Status'         => 'OPN',
                'BatasBawah'     => 0,
                'KodeUser'       => \Auth::user()->username,
                'TanggalExp'     => null,
                'created_at'     => Carbon::now(),
                'updated_at'     => Carbon::now()
            ]);
            
            Conversion::insert([
                'KodeItem'         => $newID,
                'KodeSatuan'       => request()->get('unit'),
                'Konversi'         => 1,
                'HargaBeli'        => request()->get('hpp'),
                'HargaJual'        => request()->get('sale'),
                'HargaMember'      => request()->get('sale'),
                'HargaGrosir'      => request()->get('sale'),
                'Grab'             => request()->get('sale'),
                'Shopee'           => request()->get('sale'),
                'created_at'       => Carbon::now(),
                'updated_at'       => Carbon::now()
            ]);

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Membuat Product dengan Kode ' . $newID,
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
            return response()->json([
                'data'       => $th,
                'status'     => false,
                'message'    => 'Data tidak berhasil Disimpan'
            ]);
        }
    }

    public function update() {
        try {
            //code...
            $items = Item::where('KodeItem', '=', request()->get('code'))->first();
            $items->KodeRak      = request()->get('rack');
            $items->KodeKategori = request()->get('category');
            $items->NamaItem     = request()->get('name');
            $items->jenisitem    = request()->get('type');
            $items->Keterangan   = request()->get('description');
            $items->updated_at   = Carbon::now();
            $items->save();


            $conversions = Conversion::where('KodeItem', '=', request()->get('code'))->first();
            $conversions->KodeSatuan    = request()->get('unit');
            $conversions->HargaBeli     = request()->get('hpp');
            $conversions->HargaJual     = request()->get('sale');
            $conversions->HargaMember   = request()->get('sale');
            $conversions->HargaGrosir   = request()->get('sale');
            $conversions->Grab          = request()->get('sale');
            $conversions->Shopee        = request()->get('sale');
            $conversions->updated_at    = Carbon::now();
            $conversions->save();

            Event::insert([
                'KodeUser' => \Auth::user()->name,
                'Tanggal' => Carbon::now()->format('Y-m-d'),
                'Jam' => Carbon::now()->format('H:i:s'),
                'Keterangan' => \Auth::user()->name . ' Mengubah Produk dengan kode  ' . $items->KodePindah,
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

    public function delete() {

    }

    public function category() {
        $data = Category::get();

        return response()->json([
            'data'       => $data,
            'status'     => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }
     public function harga() {
        $data = DB::table('lokasis')->get();

        return response()->json([
            'data'       => $data,
            'status'     => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }


    public function indexharga() {
       $selectedChoice = request()->input('selectedChoice');

    if ($selectedChoice == 'gojek') {
        $data = DB::table('items')
            ->join('itemkonversis', 'itemkonversis.KodeItem', '=', 'items.KodeItem')
            ->select('items.NamaItem', 'itemkonversis.HargaGrosir')
            ->get();
    } else if ($selectedChoice == 'grab') {
        $data = DB::table('items')
            ->join('itemkonversis', 'itemkonversis.KodeItem', '=', 'items.KodeItem')
            ->select('items.NamaItem', 'itemkonversis.Grab')
            ->get();
    } else if ($selectedChoice == 'shopee') {
        $data = DB::table('items')
            ->join('itemkonversis', 'itemkonversis.KodeItem', '=', 'items.KodeItem')
            ->select('items.NamaItem', 'itemkonversis.Shopee')
            ->get();
    }

    return response()->json([
        'data'       => $data,
        'status'     => true,
        'message'    => 'Data berhasil Diambil'
    ]);
    }

}
