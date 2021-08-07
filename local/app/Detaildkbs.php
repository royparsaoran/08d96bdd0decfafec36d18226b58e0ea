<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Detaildkbs extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $guarded = []; //blacklist
    protected $table = 'detaildkbs';
    public $timestamps = true;

}
