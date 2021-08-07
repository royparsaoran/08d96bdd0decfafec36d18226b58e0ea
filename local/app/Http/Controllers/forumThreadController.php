<?php

namespace App\Http\Controllers;

use App\Comment;
use App\Dosen;
use App\Mahasiswa;
use App\Reply;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;

class forumThreadController extends Controller
{
    public function index(Request $request, $id)
    {
        $topic = DB::table('forumtopic')
            ->join('forumtopicpost', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
            ->where('forumtopicpost.post_id', '=', $id)
            ->where('forumtopic.status', '=', 1)
            ->get();
        $comment = DB::table('forumcomment')
            ->leftjoin('mahasiswa', 'forumcomment.createdby', '=', 'mahasiswa.nrp')
            ->leftjoin('dosen', 'forumcomment.createdby', '=', 'dosen.nik')
            ->leftjoin('forumreply', function ($join) {
                $join->on('forumreply.comment_id', '=', 'forumcomment.comment_id')
                    ->where('forumreply.status', '=', 1);
            })
            ->select('forumcomment.*', DB::raw('IFNULL(namaDosen,namaMhs) as nama'), DB::raw('IFNULL(dosen.nik,mahasiswa.nrp) as nrp'), DB::raw('IFNULL(dosen.foto,mahasiswa.foto) as foto'))
            ->selectraw(' IFNULL(count(forumreply.reply_id),0) as totalreply')
            ->where('forumcomment.post_id', '=', $id)
            ->where('forumcomment.status', '=', 1)
            ->where('forumcomment.groupcomment', '=', 0)
            ->groupby('forumcomment.comment_id')
            ->orderby('forumcomment.timestamp', 'asc')
            ->paginate(5);
        $current_date_time = now('Asia/jakarta')->toDateTimeString();
        $groupcomment = DB::table('forumcomment')
            ->join('forumgroupcomment', 'forumcomment.comment_id', 'forumgroupcomment.comment_id')
            ->leftjoin('mahasiswa', 'forumcomment.createdby', '=', 'mahasiswa.nrp')
            ->leftjoin('dosen', 'forumcomment.createdby', '=', 'dosen.nik')
            ->leftjoin('forumreply', function ($join) {
                $join->on('forumreply.comment_id', '=', 'forumcomment.comment_id')
                    ->where('forumreply.status', '=', 1);
            })
            ->select('forumcomment.*', DB::raw('IFNULL(namaDosen,namaMhs) as nama'), DB::raw('IFNULL(dosen.nik,mahasiswa.nrp) as nrp'), DB::raw('IFNULL(dosen.foto,mahasiswa.foto) as foto'))
            ->selectraw(' IFNULL(count(forumreply.reply_id),0) as totalreply')
            ->where('forumcomment.post_id', '=', $id)
            ->where('forumcomment.status', '=', 1)
            ->where('forumcomment.groupcomment', '=', 1)
            ->Where('forumgroupcomment.mahasiswa', Session::get('nrp'))
            ->groupby('forumcomment.comment_id')
            ->orderby('forumcomment.timestamp', 'asc')
            ->get();
        $title = DB::table('forumpost')
            ->join('dosen', 'forumpost.createdby', '=', 'dosen.nik')
            ->select('forumpost.*', 'namaDosen', 'foto', 'nik')
            ->where('forumpost.post_id', '=', $id)
            ->first();
        $page = $request->page;
        $login = session::get('nrp');
        if ($title->status == 1) {
            return view('forumThread', ['comments' => $comment, 'currentdatetime' => $current_date_time, 'topics' => $topic, 'title' => $title, 'page' => $page, 'login' => $login, 'id' => $id, 'groupcomments' => $groupcomment]);
        }
        return redirect()->back();
    }

    public function indexDosen(Request $request, $id)
    {
        $topic = DB::table('forumtopic')
            ->join('forumtopicpost', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
            ->where('forumtopicpost.post_id', '=', $id)
            ->where('forumtopic.status', '=', 1)
            ->get();
        $post = DB::table('forumpost')
            ->join('masterdkbs', function ($join) {
                $join->on('forumpost.iddkbs', '=', 'masterdkbs.matakuliah_kodeMK');
                $join->on('forumpost.semester', '=', 'masterdkbs.semester_namaSemester');
            })
            ->where('forumpost.post_id', $id)
            ->first();
        $semester = $post->semester ?? 0;
        $mk = $post->idDKBS ?? 0;
        $current_date_time = now('Asia/jakarta')->toDateTimeString();
        $title = DB::table('forumpost')
            ->join('dosen', 'forumpost.createdby', '=', 'dosen.nik')
            ->select('forumpost.*', 'namaDosen', 'foto', 'dosen.nik')
            ->where('forumpost.post_id', '=', $id)
            ->first();
        $comment = DB::table('forumpost')
            ->join('forumcomment', 'forumcomment.post_id', 'forumpost.post_id')
            ->leftjoin('mahasiswa', 'forumcomment.createdby', '=', 'mahasiswa.nrp')
            ->leftjoin('detaildkbs', 'detaildkbs.mahasiswa_NRP', 'forumcomment.createdby')
            ->leftjoin('masterdkbs', 'masterdkbs.idMasterDKBS', 'detaildkbs.masterdkbs_idMasterDKBS')
            ->where(DB::raw('IFNULL(masterdkbs.semester_namaSemester,"' . $semester . '")'), $semester)
            ->where(DB::raw('IFNULL(masterdkbs.matakuliah_kodeMK,"' . $mk . '")'), $mk)
            ->leftjoin('dosen', 'forumcomment.createdby', '=', 'dosen.nik')
            ->leftjoin('forumreply', function ($join) {
                $join->on('forumreply.comment_id', '=', 'forumcomment.comment_id')
                    ->where('forumreply.status', '=', 1);
            })
            ->select('forumcomment.*', DB::raw('IFNULL(mahasiswa.nrp,dosen.nik) as nrp'), DB::raw('IFNULL(namaDosen,IFNULL(CONCAT(namaMhs,CONCAT(" - Kelas : ",kelas)),namaMhs)) as nama'), DB::raw('IFNULL(dosen.foto,mahasiswa.foto) as foto'))
            ->selectraw(' IFNULL(count(forumreply.reply_id),0) as totalreply')
            ->where('forumpost.post_id', '=', $id)
            ->where('forumcomment.status', '=', 1)
            ->groupby('forumcomment.comment_id')
            ->where('forumcomment.groupcomment', '=', 0)
            ->orderby('forumcomment.timestamp', 'asc')
            ->paginate(5);
        $groupcomment = DB::table('forumgroupcomment')
            ->select(DB::RAW('GROUP_CONCAT(mahasiswa.namaMhs separator "<br>")  as namamhs'), DB::RAW('GROUP_CONCAT(DISTINCT mahasiswa.nrp)  as nrp'), 'dosen.namaDosen as createdby')
            ->leftjoin('forumcomment', 'forumgroupcomment.comment_id', 'forumcomment.comment_id')
            ->leftjoin('mahasiswa', 'forumgroupcomment.mahasiswa', 'mahasiswa.nrp')
            ->join('dosen', 'forumcomment.createdby', 'dosen.nik')
            ->where('forumcomment.post_id', $id)
            ->where('forumcomment.status', 1)
            ->where('forumcomment.groupcomment', 1)
            ->groupby('forumcomment.comment_id')
            ->distinct()
            ->get();
        // return $groupcomment;
        $groupcomment2 = DB::table('forumgroupcomment')
            ->select('forumcomment.body as comment', DB::raw('IFNULL(mahasiswa.nrp,dosen.nik) as nrp'), DB::raw('GROUP_CONCAT(mahasiswa.namaMhs) as namagroup'), 'namaDosen as nama', 'dosen.foto as foto', 'forumcomment.*')
            ->join("forumcomment", 'forumcomment.comment_id', "forumgroupcomment.comment_id")
            ->join('mahasiswa', 'forumgroupcomment.mahasiswa', '=', 'mahasiswa.nrp')
            ->join('dosen', 'forumcomment.createdby', '=', 'dosen.nik')
            ->where('forumcomment.status', 1)
            ->where('forumcomment.post_id', $id)
            ->orderby('forumcomment.timestamp', 'asc')
            ->groupby('forumgroupcomment.comment_id')
            ->get();
        $pertemuan = DB::table('pertemuan')
            ->where('pertemuan.masterdkbs_idMasterDKBS', $post->idMasterDKBS ?? 0)
            ->distinct()
            ->get();
        $page = $request->page;
        $login = session::get('nrp');
        if ($title->status == 1) {
            return view('dosen.forumThreadDosen', ['comments' => $comment, 'pertemuan' => $pertemuan, 'groupcomments' => $groupcomment, 'groupcomments2' => $groupcomment2, 'topics' => $topic, 'id' => $id, 'title' => $title, 'page' => $page, 'semester' => $semester, 'currentdatetime' => $current_date_time, 'mk' => $mk, 'login' => $login]);
        }
        return redirect()->back();
    }

    public function indexPJS(Request $request, $id)
    {
        $topic = DB::table('forumtopic')
            ->join('forumtopicpost', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
            ->where('forumtopicpost.post_id', '=', $id)
            ->where('forumtopic.status', '=', 1)
            ->get();
        $comment = DB::table('forumpost')
            ->join('forumcomment', 'forumcomment.post_id', 'forumpost.post_id')
            ->leftjoin('mahasiswa', 'forumcomment.createdby', '=', 'mahasiswa.nrp')
            ->leftjoin('dosen', 'forumcomment.createdby', '=', 'dosen.nik')
            ->leftjoin('forumreply', function ($join) {
                $join->on('forumreply.comment_id', '=', 'forumcomment.comment_id')
                    ->where('forumreply.status', '=', 1);
            })
            ->select('forumcomment.*', DB::raw('IFNULL(namaDosen,namaMhs) as nama'), DB::raw('IFNULL(dosen.foto,mahasiswa.foto) as foto'))
            ->selectraw(' IFNULL(count(forumreply.reply_id),0) as totalreply')
            ->where('forumpost.post_id', '=', $id)
            ->where('forumcomment.status', '=', 1)
            ->groupby('forumcomment.comment_id')
            ->orderby('forumcomment.timestamp', 'asc')
            ->paginate(5);
        $title = DB::table('forumpost')
            ->join('dosen', 'forumpost.createdby', '=', 'dosen.nik')
            ->select('forumpost.*', 'namaDosen', 'foto')
            ->where('forumpost.post_id', '=', $id)
            ->first();
        $page = $request->page;
        $login = session::get('nrp');
        // return $page;
        if ($title->status == 1) {
            return view('dosen.forumThreadPJS', ['comments' => $comment, 'topics' => $topic, 'title' => $title, 'page' => $page, 'login' => $login]);
        }
        return redirect()->back();
    }
    public function indexAdmin(Request $request, $id)
    {
        $topic = DB::table('forumtopic')
            ->join('forumtopicpost', 'forumtopicpost.topic_id', '=', 'forumtopic.topic_id')
            ->where('forumtopicpost.post_id', '=', $id)
            ->where('forumtopic.status', '=', 1)
            ->get();
        $comment = DB::table('forumcomment')
            ->leftjoin('mahasiswa', 'forumcomment.createdby', '=', 'mahasiswa.nrp')
            ->leftjoin('dosen', 'forumcomment.createdby', '=', 'dosen.nik')
            ->leftjoin('forumreply', function ($join) {
                $join->on('forumreply.comment_id', '=', 'forumcomment.comment_id')
                    ->where('forumreply.status', '=', 1);
            })
            ->select('forumcomment.*', DB::raw('IFNULL(namaDosen,namaMhs) as nama'), DB::raw('IFNULL(dosen.foto,mahasiswa.foto) as foto'))
            ->selectraw(' IFNULL(count(forumreply.reply_id),0) as totalreply')
            ->where('forumcomment.post_id', '=', $id)
            ->where('forumcomment.status', '=', 1)
            ->groupby('forumcomment.comment_id')
            ->orderby('forumcomment.timestamp', 'asc')
            ->paginate(5);
        // return $request;
        $title = DB::table('forumpost')
            ->join('dosen', 'forumpost.createdby', '=', 'dosen.nik')
            ->select('forumpost.*', 'namaDosen', 'foto')
            ->where('forumpost.post_id', '=', $id)
            ->first();
        // return $title;
        $page = $request->page;
        $login = session::get('nrp');
        // return $page;

        if ($title->status == 1) {
            return view('admin.forumThreadAdmin', ['comments' => $comment, 'topics' => $topic, 'title' => $title, 'page' => $page, 'login' => $login]);
        }
        return redirect()->back();
    }

    public function delete(Request $request, $id)
    {
        $comment = Comment::find($id);
        $comment->status = 0;
        $comment->save();
        return redirect()->back()->with('success', 'Success Deleting');
    }
    public function insert(Request $req, $id)
    {
        $body = $req->input('body');
        $login = session::get('login');
        $mahasiswa = Mahasiswa::where('namaMhs', $login)->first();

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

        $data = array('body' => $body, 'createdby' => $mahasiswa->nrp, 'status' => 1, 'post_id' => $id, 'img' => $gambar_name);
        if (isset($body)) {
            DB::table('forumcomment')->insert($data);
            return redirect()->back()->with('success', 'Success Insert Post');
        } else {
            return redirect()->back()->with('fail', 'Fail Insert Post');
        }
    }
    public function insertDosen(Request $req, $id)
    {
        // return $req;
        if ($req->start == null || $req->finish == null) {
            $req->start = 0;
            $req->finish = 0;
        }
        $body = $req->input('body');
        $login = session::get('nrp');

        $gambar_name = "";
        $test = $req->validate([
            'img' => 'max:2048',
        ]);
        if ($req->hasFile('img')) {
            $gambar = $req->file('img');
            $ext = $gambar->getClientOriginalExtension();

            if ($req->file('img')->isValid()) {
                $gambar_name = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'files/forum';
                $req->file('img')->move($upload_path, $gambar_name);
            } else {
                return redirect()->back()->with('fail', 'Image too large');
            }
        }
        $important = 0;
        $idpertemuan = $req->idPertemuan;
        if (!isset($req->idPertemuan)) {
            $idpertemuan = 0;
        }
        if ($req->important == "True") {
            $important = 1;
        }
        $data = array('body' => $body, 'createdby' => $login, 'status' => 1, 'post_id' => $id, 'img' => $gambar_name, 'important' => $important, 'valid_start' => $req->start, 'valid_end' => $req->finish, 'idpertemuan' => $idpertemuan);
        if (isset($body)) {
            DB::table('forumcomment')->insert($data);
            return redirect()->back()->with('success', 'Success Insert Post');
        } else {
            return redirect()->back()->with('fail', 'Please Insert Text In Form');
        }

    }

    public function insertReply(Request $req, $id)
    {
        $body = $req->input('body');
        $login = session::get('login');
        $mahasiswa = Mahasiswa::where('namaMhs', $login)->first();
        $privatereply = 0;
        if ($req->privatereply == "true") {
            $privatereply = 1;
        }
        $newFile = "";
        $req->validate([
            'file' => 'max:2048',
        ]);

        if ($req->hasFile('file')) {
            $gambar = $req->file('file');
            $ext = $gambar->getClientOriginalExtension();

            if ($req->file('file')->isValid()) {
                $newFile = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'files/forum';
                $req->file('file')->move($upload_path, $newFile);
            }
        }
        $data = array('body' => $body, 'createdby' => $mahasiswa->nrp, 'status' => 1, 'comment_id' => $id, 'file' => $newFile, 'private' => $privatereply);
        if ($body == "") {return redirect()->back()->with('fail', 'Fail Insert Reply');}
        DB::table('forumreply')->insert($data);
        return redirect()->back()->with('success', 'Success Insert Reply');
    }
    public function deletereply(Request $request, $id)
    {
        // $comment = DB::table('forumcomment')
        $reply = Reply::find($id);
        // ->where('forumcomment.comment_id','=',$id)
        // ->get();
        $reply->status = 0;
        $reply->save();
        return redirect()->back()->with('success', 'Success Delete Reply');
    }
    public function insertReplyDosen(Request $req, $id)
    {
      // return $req;
        $login = session::get('nrp');
        $privatereply = 0;
        if ($req->privatereply == "true") {
            $privatereply = 1;
        }
        $newFile = "";
        $req->validate([
            'file' => 'max:2048',
        ]);

        if ($req->hasFile('file')) {
            $gambar = $req->file('file');
            $ext = $gambar->getClientOriginalExtension();

            if ($req->file('file')->isValid()) {
                $newFile = date('YmdHis') . '_' . $login . ".$ext";
                $upload_path = 'files/forum';
                $req->file('file')->move($upload_path, $newFile);
            }
        }
        $body = $req->input('body');
        $data = array('body' => $body, 'createdby' => $login, 'status' => 1, 'comment_id' => $id, 'file' => $newFile, 'private' => $privatereply);
        if ($body == "") {return redirect()->back()->with('fail', 'Fail Insert Reply');}
        DB::table('forumreply')->insert($data);
        return redirect()->back()->with('success', 'Success Insert Reply');
    }
    public function deletereplyDosen(Request $request, $id)
    {
        $reply = Reply::find($id);
        $reply->status = 0;
        $reply->save();
        return redirect()->back();
    }
    public function profileDosen(Request $req, $nrp)
    {
        $mahasiswa = Mahasiswa::where('nrp', $nrp)->select('mahasiswa.*', 'namaMhs as nama')->first();
        $dosen = Dosen::where('nik', $nrp)->select('dosen.*', 'namaDosen as nama')->first();
        $user = null;
        if ($mahasiswa != null) {
            $user = $mahasiswa;
        } else if ($dosen != null) {
            $user = $dosen;
        }
        return view('dosen.forumProfileDosen', ['user' => $user]);
    }
    public function profile(Request $req, $nrp)
    {
        $mahasiswa = Mahasiswa::where('nrp', $nrp)->select('mahasiswa.*', 'namaMhs as nama')->first();
        $dosen = Dosen::where('nik', $nrp)->select('dosen.*', 'namaDosen as nama')->first();
        $user = null;
        if ($mahasiswa != null) {
            $user = $mahasiswa;
        } else if ($dosen != null) {
            $user = $dosen;
        }
        return view('forumProfile', ['user' => $user]);
    }
    public function indexLivestream(Request $req, $id)
    {
        $kelas = DB::table('masterdkbs')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->where('masterdkbs.idMasterDKBS', $id)
            ->groupby('masterdkbs.idMasterDKBS')
            ->first();
        return view('dosen.forumLivestream', ['id' => $id, 'kelas' => $kelas]);
    }
}
