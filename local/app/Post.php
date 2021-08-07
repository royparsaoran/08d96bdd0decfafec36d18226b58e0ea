<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $primaryKey = 'post_id';
    protected $guarded = []; //blacklist
    protected $table = 'forumpost';
    public $timestamps = true;


}
