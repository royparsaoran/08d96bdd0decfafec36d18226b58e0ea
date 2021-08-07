<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DKBS extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $guarded = []; //blacklist
    protected $table = 'dkbs';
    public $timestamps = true;

}
