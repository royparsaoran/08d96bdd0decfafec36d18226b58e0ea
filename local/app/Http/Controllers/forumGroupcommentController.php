<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;

class forumGroupcommentController extends Controller
{
    public function index(Request $request, $id)
    {
        $mahasiswa = DB::table('forumpost')
            ->leftjoin('masterdkbs', function ($join) {
                $join->on('masterdkbs.matakuliah_kodeMK', '=', 'forumpost.idDKBS');
                $join->on('masterdkbs.semester_namaSemester', '=', 'forumpost.semester');
            })
            ->join('detaildkbs', 'masterdkbs.idMasterDKBS', 'detaildkbs.masterdkbs_idMasterDKBS')
            ->join('mahasiswa', 'mahasiswa.nrp', 'detaildkbs.mahasiswa_NRP')
            ->where('forumpost.post_id', $id)
            ->get();

        return view('dosen.forumGroupcommentDosen', ['mahasiswa' => $mahasiswa]);
    }

    public function insert(Request $request, $id)
    {
        $body = $request->input('body');
        $nrp = Session::get('nrp');
        $gambar_name = "";
        $request->validate([
            'img' => 'max:2048|mimes:jpeg,bmp,png,jpg',
        ]);

        if ($request->hasFile('img')) {
            $gambar = $request->file('img');
            $ext = $gambar->getClientOriginalExtension();

            if ($request->file('img')->isValid()) {
                $gambar_name = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'images/forum';
                $request->file('img')->move($upload_path, $gambar_name);
            }
        }

        $data = array('body' => $body, 'createdby' => $nrp, 'status' => 1, 'post_id' => $id, 'img' => $gambar_name, 'groupcomment' => 1);
        if (isset($body)) {
            $commentid = DB::table('forumcomment')->insertGetid($data);
            foreach ($request->list as $l) {
                DB::table('forumgroupcomment')->insert(['comment_id' => $commentid, 'mahasiswa' => $l]);
            }
            return redirect("forumThreadDosen/" . $id)->with('success', 'Success Insert Comment');
        } else {
            return redirect()->back()->with('fail', 'Fail Insert Comment');
        }
        return $request;
    }
    public function insertAnother(Request $request)
    {
        $body = $request->input('body');
        $nrp = Session::get('nrp');
        $mahasiswa = explode(",", $request->mahasiswa);
        $gambar_name = "";
        $request->validate([
            'img' => 'max:2048|mimes:jpeg,bmp,png,jpg',
        ]);

        if ($request->hasFile('img')) {
            $gambar = $request->file('img');
            $ext = $gambar->getClientOriginalExtension();

            if ($request->file('img')->isValid()) {
                $gambar_name = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'images/forum';
                $request->file('img')->move($upload_path, $gambar_name);
            }
        }

        $data = array('body' => $body, 'createdby' => $nrp, 'status' => 1, 'post_id' => $request->post_id, 'img' => $gambar_name, 'groupcomment' => 1);
        if (isset($body)) {
            $commentid = DB::table('forumcomment')->insertGetid($data);
            foreach ($mahasiswa as $l) {
                DB::table('forumgroupcomment')->insert(['comment_id' => $commentid, 'mahasiswa' => $l]);
            }
            return redirect("forumThreadDosen/" . $request->post_id)->with('success', 'Success Insert Comment');
        } else {
            return redirect()->back()->with('fail', 'Fail Insert Comment');
        }
        return $request;
    }
    public function indexAnother(Request $request)
    {
        $session = Session::get('nrp');
        $mahasiswa = $request->nrp;
        $postid= $request->post_id;
        return view('dosen.forumInsertAnotherGroupcomment', ['mahasiswa' => $mahasiswa, 'login'=>$session , "post_id"=>$postid]);
        // return view('dosen.forumGroupThreadDosen', ['comments' => $comment]);
    }
}
