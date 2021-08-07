<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Komentarmk extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $primaryKey ='idKomentar';
    protected $guarded = []; //blacklist
    protected $table = 'komentarmk';
    public $timestamps = true;

}
