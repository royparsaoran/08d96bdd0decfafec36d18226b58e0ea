<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Masterdkbs extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $guarded = []; //blacklist
    protected $table = 'masterdkbs';
    public $timestamps = true;

}
