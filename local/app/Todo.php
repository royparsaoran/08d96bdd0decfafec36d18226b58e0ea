<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Todo extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $guarded = []; //blacklist
    protected $table = 'todo';
    public $timestamps = true;

}
