<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'pelanggans';

    public function scopeFilter($q, Array $filters)
    {
        /*----------  Query  ----------*/
        foreach ($filters as $field => $val)
        {
            $q = $q->orWhere('KodePelanggan', '=', $val);
            $q = $q->orWhere('NamaPelanggan', '=', $val);
        }
        return $q;
    }
}