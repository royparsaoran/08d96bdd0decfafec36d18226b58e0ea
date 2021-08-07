<?php

namespace App\Http\Controllers;

use App\Post;
use App\Topic;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;

class forumNewPostController extends Controller
{
    public function index(Request $request)
    {
        $topic = Topic::all();
        return view('dosen.forumNewPost', ['topics' => $topic]);
    }
    public function indexMK(Request $request)
    {
        $login = session::get('nrp');
        $title = DB::table('masterdkbs')
            ->join('semester', 'masterdkbs.semester_namaSemester', 'semester.namaSemester')
            ->select('kodeMK as kodeMK', 'masterdkbs.semester_namaSemester as semester')
            ->selectRAW('CONCAT(kodeMK ,CONCAT(" - ",CONCAT(namaMK,CONCAT(" - ",semester.namaSemester))))  as title')
            ->leftjoin('forumpost', function ($join) {
                $join->on('forumpost.iddkbs', '=', 'masterdkbs.matakuliah_kodeMK');
                $join->on('forumpost.semester', '=', 'masterdkbs.semester_namaSemester');
            })
            ->where('forumpost.post_id', null)
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.KodeMK')
            ->where('masterdkbs.dosen_nik', '=', $login)
            ->groupby('masterdkbs.idmasterdkbs')
            ->distinct()
            ->get();
        // return $title;
        return view('dosen.forumNewPostMK', ['title' => $title]);
    }
    public function indexTitleMK(Request $request, $id)
    {
        return view('dosen.forumNewPostTitleMK');
    }
    public function indexEditPost(Request $request, $id)
    {
        $post = DB::table('forumpost')
            ->where('forumpost.post_id', $id)
            ->first();
        return view('dosen.forumNewPostTitleMK2', ['post' => $post]);
    }

    public function insert(Request $req)
    {
        $post = Post::all();
        $title = $req->input('title');
        $topic = $req->input('topic');
        $postbody = $req->input('post');
        $login = session::get('nrp');

        $gambar_name = "";
        $req->validate([
            'img' => 'max:2048',
        ]);
        if ($postbody == null) {
            $postbody = "";
        }
        if ($req->hasFile('img')) {
            $gambar = $req->file('img');
            $ext = $gambar->getClientOriginalExtension();

            if ($req->file('img')->isValid()) {
                $gambar_name = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'files/forum';
                $req->file('img')->move($upload_path, $gambar_name);
            } 
        }
        $data = array('title' => $title, 'body' => $postbody, 'createdby' => $login, 'status' => 1, 'semester' => 0, 'iddkbs' => 0, 'img' => $gambar_name);

        if ($topic != null) {
            $postid = DB::table('forumpost')->insertGetid($data);
            foreach ($topic as $to) {
                $data3 = array('topic_id' => $to, 'post_id' => $postid);
                DB::table('forumtopicpost')->insert($data3);
            }
        } else {
            return redirect()->back()->with('fail', 'Fail Please Pick Topic');
        }
        // DB::table('forumcomment')->insert($data2);
        return redirect('forumTitlePublicDosen')->with('success', 'Success Insert Post');
        // return $data3;
    }
    public function insertMK(Request $req)
    {
        $result = $_POST['iddkbs'];
        $result_explode = explode('|', $result);
        $semester = $result_explode[0];
        $kodeMK = $result_explode[1];
        $postbody = $req->input('post');
        $login = session::get('nrp');
        $title = DB::table('masterdkbs')
            ->join('matakuliah', 'matakuliah.kodeMK', 'masterdkbs.matakuliah_kodeMK')
            ->where('masterdkbs.matakuliah_kodeMK', '=', $kodeMK)
            ->where('masterdkbs.dosen_nik', '=', $login)
            ->join('semester', 'semester.namaSemester', '=', 'masterdkbs.semester_namaSemester')
            ->where('semester_namaSemester', '=', $semester)
            ->selectRAW('CONCAT(kodeMK ,CONCAT(" - ",CONCAT(namaMK,CONCAT(" - ",semester.namaSemester))))  as title')
            ->get(1);
        $gambar_name = "";
        $req->validate([
            'img' => 'max:2048',
        ]);
        if ($postbody == null) {
            $postbody = "";
        }
        if ($req->hasFile('img')) {
            $gambar = $req->file('img');
            $ext = $gambar->getClientOriginalExtension();

            if ($req->file('img')->isValid()) {
                $gambar_name = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'files/forum';
                $req->file('img')->move($upload_path, $gambar_name);
            } 
        }
        foreach ($title as $t):
            $title = $t->title;
        endforeach;
        // return $title;
        $data = array('title' => $title, 'body' => $postbody, 'createdby' => $login, 'status' => 1, 'idDKBS' => $kodeMK, 'semester' => $semester, 'img' => $gambar_name);
        // return $data;
        DB::table('forumpost')->insert($data);
        return redirect('forumTitleMKDosen')->with('success', 'Success Insert Post');

        // DB::table('forumcomment')->insert($data2);
        // return $data3;
    }
    public function insertTitleMK(Request $req, $id)
    {
        if ($req->start == null || $req->finish == null) {
            $req->start = 0;
            $req->finish = 0;
        }
        $post = DB::table('forumpost')
            ->where('post_id', $id)
            ->first();
        $kodeMK = $post->idDKBS;
        $semester = $post->semester;
        $postbody = $req->input('post');
        $login = session::get('nrp');
        $title = $req->input('title');
        $gambar_name = "";
        $req->validate([
            'img' => 'max:2048',
        ]);
        if ($postbody == null) {
            $postbody = "";
        }
        if ($req->hasFile('img')) {
            $gambar = $req->file('img');
            $ext = $gambar->getClientOriginalExtension();

            if ($req->file('img')->isValid()) {
                $gambar_name = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'files/forum';
                $req->file('img')->move($upload_path, $gambar_name);
            } 
        }
        // return $semester;
        if ($kodeMK == '0' && $semester == '0') {
            $data = array('title' => $title, 'body' => $postbody, 'createdby' => $login, 'status' => 1, 'semester' => 0, 'iddkbs' => 0, 'img' => $gambar_name);
            $postid = DB::table('forumpost')->insertGetid($data);
            $topics = DB::table('forumtopicpost')
                ->where('post_id', $id)
                ->get()
                ->toArray();
            foreach ($topics as $to) {
                $data3 = array('topic_id' => $to->topic_id, 'post_id' => $postid);
                DB::table('forumtopicpost')->insert($data3);
            }
        } else {
            $data = array('title' => $title, 'body' => $postbody, 'createdby' => $login, 'status' => 1, 'idDKBS' => $kodeMK, 'semester' => $semester, 'img' => $gambar_name, 'valid_start' => $req->start, 'valid_end' => $req->finish);
            DB::table('forumpost')->insert($data);
        }
        return redirect('forumTitleMKDosen')->with('success', 'Success Insert Post');
    }
    public function editPost(Request $req, $id)
    {
        // return $req;
        if ($req->start == null || $req->finish == null) {
            $req->start = 0;
            $req->finish = 0;
        }
        $post = DB::table('forumpost')
            ->where('post_id', $id)
            ->first();

        $login = session::get('nrp');
        $gambar_name = "";
        $req->validate([
            'img' => 'max:2048',
        ]);

        if ($req->hasFile('img')) {
            $gambar = $req->file('img');
            $ext = $gambar->getClientOriginalExtension();

            if ($req->file('img')->isValid()) {
                $gambar_name = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'files/forum';
                $req->file('img')->move($upload_path, $gambar_name);
            } 
        }
        $data = array('title' => $req->title, 'body' => $req->post, 'img' => $gambar_name, 'valid_start' => $req->start, 'valid_end' => $req->finish);
        DB::table('forumpost')->where('forumpost.post_id', $id)->update($data);
        return redirect('forumTitleMKDosen')->with('success', 'Success Edit Post');
    }
}
