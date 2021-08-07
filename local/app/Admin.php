<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $guarded = []; //blacklist
    protected $table = 'admin';
    public $timestamps = true;

}
