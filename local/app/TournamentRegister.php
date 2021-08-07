<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TournamentRegister extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $guarded = []; //blacklist
    protected $table = 'tournamentregister';
    public $timestamps = true;

}
