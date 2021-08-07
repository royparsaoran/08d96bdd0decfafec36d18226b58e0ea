<?php



namespace App;



use Illuminate\Database\Eloquent\Model;



class Assignment extends Model

{

    // protected $fillable['nama','nrp']; whitelist

    protected $guarded = []; //blacklist

    protected $table = 'assignment';

    public $timestamps = false;



}

