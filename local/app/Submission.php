<?php



namespace App;



use Illuminate\Database\Eloquent\Model;



class Submission extends Model

{

    // protected $fillable['nama','nrp']; whitelist

    protected $guarded = []; //blacklist

    protected $table = 'submission';

    public $timestamps = false;



}

