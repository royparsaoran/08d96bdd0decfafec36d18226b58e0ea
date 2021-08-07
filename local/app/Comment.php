<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    // protected $fillable['nama','nrp']; whitelist
    protected $primaryKey ='comment_id';
    protected $guarded = []; //blacklist
    protected $table = 'forumcomment';
    public $timestamps = true;

}
