<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;

//.

use Illuminate\Support\Facades\DB;
use Session;

class forumTitleController extends Controller
{
    public function superAdminIndex(Request $request)
    {
        $posts = DB::table('forumpost')
            ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW(' IFNULL(1+COUNT(forumcomment.comment_id ),1) as comment'), DB::RAW('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
                    ->where('forumcomment.status', '=', 1);
            })
            ->where('forumpost.status', '=', '1')
            ->orderby('commenttimestamp', 'desc')
            ->groupBy('forumpost.post_id')
            ->get();
        return view('admin.forumTitleAdmin', ['posts' => $posts]);
    }
    public function indexMK(Request $request)
    {
        $login = session::get('nrp');
        $posts = DB::table('detaildkbs')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW(' IFNULL(COUNT(DISTINCT forumpost.post_id ),1) as comment'), DB::RAW('MAX(forumpost.timestamp) as commenttimestamp'))
            ->where('detaildkbs.mahasiswa_NRP', '=', $login)
            ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
            ->leftjoin('forumpost', function ($join) {
                $join->on('forumpost.iddkbs', '=', 'masterdkbs.matakuliah_kodeMK');
                $join->on('forumpost.semester', '=', 'masterdkbs.semester_namaSemester');
            })
            ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
                    ->where('forumcomment.status', '=', 1);
            })
            ->where('forumpost.status', 1)
            ->groupBy('forumpost.idDKBs')
            ->groupBy('forumpost.semester')
            ->orderby('forumcomment.timestamp', 'DESC')
            ->paginate(5);
        return view('forumTitleMK', ['posts' => $posts, 'login' => $login]);
    }
    public function indexMKDosen(Request $request)
    {
        $login = session::get('nrp');
        $roles = session::get('roles');
        $posts = DB::table('forumpost')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW(' IFNULL(COUNT(DISTINCT forumpost.post_id ),1) as postcount'), DB::RAW('MAX(forumpost.timestamp) as posttimestamp'))
            ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->join('masterdkbs', 'forumpost.idDkbs', '=', 'masterdkbs.matakuliah_kodeMK')
            ->where('masterdkbs.dosen_nik', $login)
            ->where('forumpost.status', '1')
            ->where('forumpost.idDKBS', '!=', '0')
            ->groupBy('forumpost.idDKBs')
            ->groupBy('forumpost.semester')
            ->orderby('forumpost.timestamp', 'DESC')
            ->get();
        return view('dosen.forumTitleMKDosen', ['posts' => $posts, 'login' => $login, 'roles' => $roles]);
    }
    public function indexTitleList(Request $request, $id)
    {
        $login = session::get('nrp');
        $roles = session::get('roles');
        $post = DB::table('forumpost')
            ->where('post_id', '=', $id)
            ->first();
        $kodeMK = $post->idDKBS;
        $semester = $post->semester;
        $posts = DB::table('forumpost')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW('IFNULL(1+COUNT(DISTINCT forumcomment.comment_id ),1) as comment'), DB::RAW('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
            ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->join('masterdkbs', 'forumpost.idDkbs', '=', 'masterdkbs.matakuliah_kodeMK')
            ->where('masterdkbs.dosen_nik', $login)
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
                    ->where('forumcomment.status', '=', 1)
                    ->where('forumcomment.groupcomment', '=', 0);
            })
            ->where('forumpost.status', '1')
            ->where('forumpost.idDKBS', '!=', '0')
            ->where('forumpost.idDKBS', $kodeMK)
            ->where('forumpost.semester', $semester)
            ->groupBy('forumpost.post_id')
            ->orderby('forumpost.timestamp', 'DESC')
            ->get();
        $kelas = DB::table('masterdkbs')
            ->where('masterdkbs.matakuliah_kodeMK', $kodeMK)
            ->where('masterdkbs.semester_namaSemester', $semester)
            ->where('masterdkbs.dosen_nik', SESSION::GET('nrp'))
            ->distinct()
            ->get();
        return view('dosen.forumTitleList', ['posts' => $posts, 'login' => $login, 'roles' => $roles, 'post' => $post, 'kelas' => $kelas]);
    }
    public function indexTitleList2(Request $request, $id)
    {
        $login = session::get('nrp');
        $roles = session::get('roles');
        $post = DB::table('forumpost')
            ->where('post_id', '=', $id)
            ->first();
        $kodeMK = $post->idDKBS;
        $semester = $post->semester;
        $posts = DB::table('forumpost')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW(' IFNULL(1+COUNT(DISTINCT forumcomment.comment_id ),1) as comment'), DB::RAW('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
            ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->join('masterdkbs', 'forumpost.idDkbs', '=', 'masterdkbs.matakuliah_kodeMK')
        // ->where('masterdkbs.dosen_nik', $login)
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
                    ->where('forumcomment.status', '=', 1)
                    ->where('forumcomment.groupcomment', '=', 0);
            })
            ->where('forumpost.status', '1')
            ->where('forumpost.idDKBS', '!=', '0')
            ->where('forumpost.idDKBS', $kodeMK)
            ->where('forumpost.semester', $semester)
            ->groupBy('forumpost.post_id')
            ->orderby('forumpost.timestamp', 'DESC')
            ->get();
        $kelas = DB::table('masterdkbs')
            ->where('masterdkbs.matakuliah_kodeMK', $kodeMK)
            ->where('masterdkbs.semester_namaSemester', $semester)
            ->where('detaildkbs.mahasiswa_NRP', SESSION::GET('nrp'))
            ->join('detaildkbs','masterdkbs.idMasterDKBS','detaildkbs.masterdkbs_idMasterDKBS')
            ->distinct()
            ->first();
        return view('forumTitleList', ['posts' => $posts, 'login' => $login, 'roles' => $roles, 'post' => $post, 'kelas' => $kelas]);
    }
    // public function indexTitleListUmum(Request $request, $id)
    // {
    //     $login = session::get('nrp');
    //     $roles = session::get('roles');
    //     $post = DB::table('forumpost')
    //         ->where('post_id', '=', $id)
    //         ->first();
    //     $topic = DB::table('forumtopic')
    //         ->join('forumtopicpost', 'forumtopic.topic_id', '=', 'forumtopicpost.topic_id')
    //         ->where('forumtopicpost.post_id', '=', $id)
    //         ->get(['forumtopic.topic_id'])
    //         ->toArray();
    //     foreach ($topic as $topic) {
    //         $topics[] = (array) $topic->topic_id;
    //     }
    //     $posts = DB::table('forumpost')
    //         ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
    //         ->select('forumpost.*', 'dosen.namaDosen', DB::RAW('  IFNULL(1+COUNT( DISTINCT forumcomment.comment_id ),1) as comment'), DB::RAW('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
    //         ->leftjoin('forumcomment', function ($join) {
    //             $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
    //                 ->where('forumcomment.status', '=', 1);
    //         })
    //         ->where('forumpost.status', '=', '1')
    //         ->where('forumpost.idDKBS', '=', '0')
    //         ->join('forumtopicpost', 'forumpost.post_id', '=', 'forumtopicpost.post_id')
    //         ->join('forumtopic', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
    //         ->where('forumtopic.status', 1)
    //         ->wherein('forumtopic.topic_id', $topics)
    //         ->orderby('forumpost.post_id', 'DESC')
    //         ->groupBy('forumtopicpost.topic_id')
    //         ->groupBy('forumtopicpost.post_id')
    //         ->distinct()
    //         ->get();

    //     return view('dosen.forumTitleList', ['posts' => $posts, 'login' => $login, 'roles' => $roles, 'post' => $post]);
    // }
    public function indexPublic(Request $request)
    {
        $posts = DB::table('forumpost')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW('IFNULL(1+COUNT(DISTINCT forumcomment.comment_id),1) as comment'), DB::RAW('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
            ->leftjoin('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
                    ->where('forumcomment.status', '=', 1);
            })
            ->where('forumpost.status', '=', '1')
            ->where('forumpost.idDKBS', '=', '0')
            ->join('forumtopicpost', 'forumpost.post_id', '=', 'forumtopicpost.post_id')
            ->join('forumtopic', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
            ->where('forumtopic.status', 1)
            ->orderby('commenttimestamp', 'DESC')
            ->groupby('forumpost.post_id')
            ->get();

        $login = session::get('nrp');
        return view('forumTitlePublic', ['posts' => $posts, 'login' => $login]);
    }

    public function indexPublicDosen(Request $request)
    {
        $posts = DB::table('forumpost')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW('IFNULL(1+COUNT(DISTINCT forumcomment.comment_id),1) as comment'), DB::RAW('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
            ->leftjoin('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
                    ->where('forumcomment.status', '=', 1);
            })
            ->where('forumpost.status', '=', '1')
            ->where('forumpost.idDKBS', '=', '0')
            ->join('forumtopicpost', 'forumpost.post_id', '=', 'forumtopicpost.post_id')
            ->join('forumtopic', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
            ->where('forumtopic.status', 1)
            ->orderby('commenttimestamp', 'DESC')
            ->groupby('forumpost.post_id')
            ->get();

        $login = session::get('nrp');
        return view('dosen.forumTitlePublicDosen', ['posts' => $posts, 'login' => $login]);
    }
    public function indexAllDosen(Request $request)
    {
        $posts = DB::table('forumpost')
            ->join('dosen', 'dosen.nik', '=', 'forumpost.createdby')
            ->select('forumpost.*', 'dosen.namaDosen', DB::RAW('  IFNULL(1+COUNT( DISTINCT forumcomment.comment_id ),1) as comment'), DB::RAW('IFNULL(MAX(forumcomment.timestamp),forumpost.timestamp) as commenttimestamp'))
            ->leftjoin('forumcomment', function ($join) {
                $join->on('forumcomment.post_id', '=', 'forumpost.post_id')
                    ->where('forumcomment.status', '=', 1);
            })
            ->where('forumpost.status', '=', '1')
            ->groupBy('forumpost.post_id')
            ->orderby('forumpost.post_id', 'DESC')
            ->get();

        $login = session::get('nrp');
        return view('dosen.forumTitleAllDosen', ['posts' => $posts, 'login' => $login]);
    }
    public function delete(Request $req, $id)
    {
        $login = session::get('nrp');
        $post = Post::find($id);
        if ($login == $post->createdby) {
            $post->status = 0;
            $post->save();
        }
        return redirect()->back()->with('success', 'Delete Successfull');
    }
    public function deleteadmin(Request $req, $id)
    {
        $post = Post::find($id);
        $post->status = 0;
        $post->save();
        return redirect()->back()->with('success', 'Delete Successfull');
    }
}
