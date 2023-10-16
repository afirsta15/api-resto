<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\Unit;
use App\Models\Warehouse;
use App\Models\ItemCategory;
use App\Models\Rack;
class ConfigController extends Controller
{
    //
    public function index() {
        $unit = Unit::get();
        $warehouse = Warehouse::get();
        $category = ItemCategory::get();
        $rack = Rack::get();
        $data['unit'] = $unit;
        $data['warehouse'] = $warehouse;
        $data['item']['category'] = $category;
        $data['item']['rack'] = $rack;
        return response()->json([
            'data'       => $data,
            'status'       => true,
            'message'    => 'Data berhasil Diambil'
        ]);
    }
}
