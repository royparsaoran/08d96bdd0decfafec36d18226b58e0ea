<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use URL;
use DateTime;
use Carbon\Carbon;
use Session;


use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\Tournament;
use App\Livestream;

class livestreamController extends Controller
{
    public function index(Request $request)
    {

      $livestream = Livestream::orderBy('created_at','desc')->paginate(1);
      $somevideo = Livestream::orderBy('created_at','desc')->take(8)->get();
      $jadwallive = Livestream::orderBy('created_at','desc')->get();
      $chidMhs = Mahasiswa::where('streamlink','!=',null)->orderBy('nrp','asc')->get();
      $chidDosen = Dosen::where('streamlink','!=',null)->orderBy('nik','asc')->get();
      $chid = $chidDosen->concat($chidMhs);
      $chid->all();



      return view('/livestream',['livestream'=>$livestream,'somevideo'=>$somevideo,'chid'=>$chid,'jadwallive'=>$jadwallive]);
    }

    public function indexDosen(Request $request)
    {

      $livestream = Livestream::orderBy('created_at','desc')->paginate(1);
      $somevideo = Livestream::orderBy('created_at','desc')->take(8)->get();
      $jadwallive = Livestream::orderBy('created_at','desc')->get();
      $chidMhs = Mahasiswa::where('streamlink','!=',null)->orderBy('nrp','asc')->get();
      $chidDosen = Dosen::where('streamlink','!=',null)->orderBy('nik','asc')->get();
      $chid = $chidDosen->concat($chidMhs);
      $chid->all();



      return view('dosen.livestreamDosen',['livestream'=>$livestream,'somevideo'=>$somevideo,'chid'=>$chid,'jadwallive'=>$jadwallive]);
    }

    public function create(Request $request)
    {
      $user = session::get('login');
      $chn = Mahasiswa::where('namaMhs',$user)->first();
      $newJadwal = date("Y-m-d H:i:s", strtotime($request->jadwal));



      $request->validate([
          'jadwal' => 'required|date|after:now',
          'hlink' => 'url',
          'link' => 'required',
      ]);

      $livestream = new Livestream;
      $livestream->nama = $user;
      $livestream->hlink = $request->hlink;
      $livestream->link = $request->link ;
      $livestream->about= $request->deskripsi;
      $livestream->channel = $chn->streamlink;
      $livestream->jadwal = $newJadwal;
      $livestream->save();

      return redirect('/livestream');
    }
    public function createDosen(Request $request)
    {

      $user = session::get('login');
      $chn = Dosen::where('namaMhs',$user)->first();
      $newJadwal = date("Y-m-d H:i:s", strtotime($request->jadwal));



      $request->validate([
          'jadwal' => 'required|date|after:now',
          'hlink' => 'url',
          'link' => 'required',
      ]);

      $livestream = new Livestream;
      $livestream->nama = $user;
      $livestream->hlink = $request->hlink;
      $livestream->link = $request->link ;
      $livestream->about= $request->deskripsi;
      $livestream->channel = $chn->streamlink;
      $livestream->jadwal = $newJadwal;
      $livestream->save();

      return redirect('/livestreamDosen');
    }















}
