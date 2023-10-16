<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ItemTransaction extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'keluarmasukbarangs';
    

    public function scopeCurrentStock ($query, $items, $warehouse) {
        $data = ItemTransaction::where('KodeItem', '=', $items)
                    ->where('KodeLokasi', '=', $warehouse)
                    ->orderByDesc('id')->limit(1)->value('saldo');
        return $data ? $data : 0;
    }
}