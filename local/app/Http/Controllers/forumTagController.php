<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;

//.

use App\Post;

class forumTagController extends Controller
{
  public function index(Request $request, $id)
  {
    $posts =  DB::table('forumpost')
    ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
    ->select('forumpost.*', 'dosen.namaDosen', DB::Raw(' IFNULL(1+COUNT(forumcomment.comment_id ),1) as comment'), DB::raw('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
    ->leftjoin('forumcomment', function ($join) {
      $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
        ->where('forumcomment.status', '=', 1);
    })
    ->where('forumpost.status', '=', '1')
    ->where('forumpost.idDKBS', '=', '0')
    ->groupBy('forumpost.post_id')
    ->join('forumtopicpost', 'forumpost.post_id', '=', 'forumtopicpost.post_id')
    // ->join('forumtopic', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
    ->where('forumtopicpost.topic_id','=',$id)
    ->orderby('forumpost.timestamp','DESC')
    ->get();
    $topic = DB::table('forumtopic')
    ->select('forumtopic.title')
    ->where('forumtopic.topic_id',$id)
    ->get();
    // return $topic;
  $login = session::get('nrp');
  return view('forumTag', ['posts' => $posts, 'login' => $login ,'topic'=>$topic]);
  }
  public function indexAdmin(Request $request, $id)
  {
    $posts =  DB::table('forumpost')
    ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
    ->select('forumpost.*', 'dosen.namaDosen', DB::Raw(' IFNULL(1+COUNT(forumcomment.comment_id ),1) as comment'), DB::raw('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
    ->leftjoin('forumcomment', function ($join) {
      $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
        ->where('forumcomment.status', '=', 1);
    })
    ->where('forumpost.status', '=', '1')
    ->where('forumpost.idDKBS', '=', '0')
    ->groupBy('forumpost.post_id')
    ->join('forumtopicpost', 'forumpost.post_id', '=', 'forumtopicpost.post_id')
    // ->join('forumtopic', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
    ->where('forumtopicpost.topic_id','=',$id)
    ->orderby('forumpost.timestamp','DESC')
    ->get();
    $topic = DB::table('forumtopic')
    ->select('forumtopic.title')
    ->where('forumtopic.topic_id',$id)
    ->get();
    // return $topic;
  $login = session::get('nrp');
    return view('admin.forumTagAdmin', ['posts' => $posts, 'login' => $login ,'topic'=>$topic]);
  }
  public function indexDosen(Request $request, $id)
  {
    $posts =  DB::table('forumpost')
    ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
    ->select('forumpost.*', 'dosen.namaDosen', DB::Raw(' IFNULL(1+COUNT(forumcomment.comment_id ),1) as comment'), DB::raw('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
    ->leftjoin('forumcomment', function ($join) {
      $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
        ->where('forumcomment.status', '=', 1);
    })
    ->where('forumpost.status', '=', '1')
    ->where('forumpost.idDKBS', '=', '0')
    ->groupBy('forumpost.post_id')
    ->join('forumtopicpost', 'forumpost.post_id', '=', 'forumtopicpost.post_id')
    // ->join('forumtopic', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
    ->where('forumtopicpost.topic_id','=',$id)
    ->orderby('forumpost.timestamp','DESC')
    ->get();
    $topic = DB::table('forumtopic')
    ->select('forumtopic.title')
    ->where('forumtopic.topic_id',$id)
    ->get();
    // return $topic;
  $login = session::get('nrp');
  return view('dosen.forumTagDosen', ['posts' => $posts, 'login' => $login ,'topic'=>$topic]);
  }
}
