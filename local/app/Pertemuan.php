<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pertemuan extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $primaryKey ='idPertemuan';
    protected $guarded = []; //blacklist
    protected $table = 'pertemuan';
    public $timestamps = true;

}
