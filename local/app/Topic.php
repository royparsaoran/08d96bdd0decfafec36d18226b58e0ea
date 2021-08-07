<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $primaryKey = 'topic_id';
    protected $guarded = []; //blacklist
    protected $table = 'forumtopic';
    public $timestamps = true;


}

