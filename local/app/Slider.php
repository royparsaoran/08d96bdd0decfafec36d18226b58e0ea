<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $guarded = []; //blacklist
    protected $table = 'slider';
    public $timestamps = true;

}
