<?php

namespace App\Http\Controllers;

use App\Topic;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;

class forumManageTopicsController extends Controller
{
    public function index(Request $request)
    {
        $topic = Topic::all();
        $topic = DB::table('forumtopic')
            ->join('dosen', 'forumtopic.createdby', '=', 'dosen.nik')
            ->select('forumtopic.*', 'dosen.namadosen')
            ->where('forumtopic.status', '=', '1')
            ->paginate(5);
        $total = DB::table('forumtopic')
            ->join('dosen', 'forumtopic.createdby', '=', 'dosen.nik')
            ->where('forumtopic.status', '=', '1')
            ->count('forumtopic.topic_id');
        // return $topic;
        return view('dosen.forumManageTopics', ['topics' => $topic, 'total' => $total]);
    }
    public function indexAdmin(Request $request)
    {
        $topic = Topic::all();
        $topic = DB::table('forumtopic')
            ->join('dosen', 'forumtopic.createdby', '=', 'dosen.nik')
            ->select('forumtopic.*', 'dosen.namadosen')
            ->where('forumtopic.status', '=', '1')
            ->paginate(5);
        $total = DB::table('forumtopic')
            ->join('dosen', 'forumtopic.createdby', '=', 'dosen.nik')
            ->where('forumtopic.status', '=', '1')
            ->count('forumtopic.topic_id');
        // return $topic;
        return view('admin.forumManageTopicsAdmin', ['topics' => $topic, 'total' => $total]);
    }
    public function insert(Request $req)
    {
        if ($req->title != null) {$title = $req->input('title');
            $login = session::get('nrp');
            $data = array('title' => $title, 'status' => 1, 'createdby' => $login);
            DB::table('forumtopic')->insert($data);
            return redirect()->back()->with('success', 'Insert Successfull');
        }
        return redirect()->back()->with('fail', 'Insert Fail');
    }
    public function edit(Request $req, $id)
    {
        // $login = session::get('nrp');
        $topic = Topic::find($id);
        $topic->title = $req->value;
        // $topic->createdby = $login;
        $topic->save();
        return redirect()->back()->with('success', 'Edit Successfull');
    }
    public function delete(Request $req, $id)
    {
        $topic = Topic::find($id);
        $topic->status = 0;
        $topic->save();
        return redirect()->back()->with('success', 'Delete Successfull');
    }
}
