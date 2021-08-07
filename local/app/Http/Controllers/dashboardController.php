<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;

//.

use App\Post;
use App\Mahasiswa;

class dashboardController extends Controller
{
  public function indexDosen(Request $request)
  {
    $trending = DB::table('forumtopicpost')
    ->join('forumpost','forumtopicpost.post_id','forumpost.post_id')
    ->join('forumtopic','forumtopicpost.topic_id','forumtopic.topic_id')
    ->select('forumtopic.*',DB::raw('count(forumtopicpost.post_id) as countpost'))
    ->orderby('countpost','DESC')
    ->groupby('forumtopic.topic_id')
    ->get();
    $ranking = DB::table('forumcomment')
    ->join('mahasiswa','forumcomment.createdby','mahasiswa.nrp')
    ->select('forumcomment.*',DB::raw('count(forumcomment.comment_id) as countcomment'))
    ->orderby('countcomment','DESC')
    ->groupby('forumcomment.createdby')
    ->get();
    // return $ranking;
    $forum = DB::table('forumpost')
    ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
    ->select('forumpost.*', 'dosen.namaDosen', DB::Raw('  IFNULL(1+COUNT( DISTINCT forumcomment.comment_id ),1) as comment'), DB::raw('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
    ->leftjoin('forumcomment', function ($join) {
      $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
        ->where('forumcomment.status', '=', 1);
    })
    ->where('forumpost.status', '=', '1')
    ->where('forumpost.idDKBS', '=', '0')
    ->groupBy('forumpost.post_id')
    ->join('forumtopicpost', 'forumpost.post_id', '=', 'forumtopicpost.post_id')
    ->join('forumtopic', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
    ->where('forumtopic.status', 1)
    ->orderby('comment', 'DESC')
    ->paginate(6);
    return view('dosen.dashboardDosen',['forum'=>$forum,'trending'=>$trending,'ranking'=>$ranking]);

  }
  public function indexMahasiswa(Request $request, $id)
  {
  }
}
