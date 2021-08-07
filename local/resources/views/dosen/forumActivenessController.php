<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//.

use Illuminate\Support\Facades\DB;
use Session;

class forumActivenessController extends Controller
{
    public function index(Request $request)
    {

        $login = session::get('nrp');
        $forum = DB::table('masterdkbs')
            ->leftjoin('forumpost', function ($join) {
                $join->on('forumpost.iddkbs', 'masterdkbs.matakuliah_kodeMK');
                $join->on('forumpost.semester', 'masterdkbs.semester_namaSemester');
            })
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', 'forumpost.post_id')
                    ->where('forumcomment.status', 1);
            })
            ->leftjoin('forumreply', function ($join) {
                $join->on('forumreply.comment_id', 'forumcomment.comment_id')
                    ->where('forumreply.status', 1);
            })
            ->select('forumpost.*')
            ->selectraw('IFNULL(COUNT(DISTINCT forumcomment.comment_id),0) AS comment,IFNULL(COUNT(DISTINCT forumreply.reply_id),0) AS reply,IFNULL(COUNT(DISTINCT forumreply.reply_id)+COUNT(DISTINCT forumcomment.comment_id),0) AS TOTAL')
            ->where('masterdkbs.dosen_nik', $login)
            ->where('forumpost.iddkbs', '!=', '0')
            ->where('forumpost.semester', '!=', '0')
            ->where('forumpost.status', '=', 1)
            ->groupby('forumpost.post_id')
            ->get();

        // return $forum;
        return view('dosen.forumActiveness', ['forum' => $forum]);
    }
    public function indexMahasiswa(Request $request, $id)
    {
        $title = DB::table('forumpost')
            ->where('forumpost.post_id', $id)
            ->first();
        $datacomment = DB::table('forumcomment')
            ->select('forumcomment.createdby')
            ->where('forumcomment.post_id', $id)
            ->where('forumcomment.status', 1)
            ->groupby('forumcomment.createdby')
            ->distinct()
            ->get();
        $datareply = DB::table('forumreply')
            ->select('forumreply.createdby')
            ->join('forumcomment', 'forumreply.comment_id', 'forumcomment.comment_id')
            ->where('forumcomment.post_id', $id)
            ->where('forumreply.status', 1)
            ->where('forumcomment.status', 1)
            ->groupby('forumreply.createdby')
            ->distinct()
            ->get();
        $merged = $datacomment->merge($datareply);

        $data = $merged->unique();
        // return $data;
        return view('dosen.forumActivenessMahasiswa', ['data' => $data, 'title' => $title]);
    }
    public function indexDetail(Request $request, $id, $nrp)
    {
        $comment = DB::table('forumcomment')
            ->where('forumcomment.post_id', '=', $id)
            ->where('forumcomment.createdby', '=', $nrp)
            ->where('forumcomment.status', '=', 1)
            ->get();
        $title = DB::table('forumpost')
            ->where('forumpost.post_id', $id)
            ->first();
        $reply = DB::table('forumreply')
            ->select('forumreply.*')
            ->where('forumreply.status', 1)
            ->join('forumcomment', 'forumreply.comment_id', 'forumcomment.comment_id')
            ->where('forumcomment.status', 1)
            ->where('forumcomment.post_id', $id)
            ->where('forumreply.createdby', $nrp)
            ->groupby('forumreply.reply_id')
            ->get();
        return view('dosen.forumActivenessDetail', ['comment' => $comment, 'title' => $title, 'reply' => $reply, 'nrp' => $nrp]);

    }

}
