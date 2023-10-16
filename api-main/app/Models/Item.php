<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'items';

    public function scopeFilter($q, Array $filters)
    {
        /*----------  Query  ----------*/
        foreach ($filters as $field => $val)
        {
            $q = $q->orWhere('KodeKategori', '=', $val);
        }
        return $q;
    }
}