<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $primaryKey = 'reply_id';
    protected $guarded = []; //blacklist
    protected $table = 'forumreply';
    public $timestamps = true;


}
