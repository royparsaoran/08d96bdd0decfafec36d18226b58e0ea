<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\DKBS;

class leaderboardController extends Controller 
{
    public function index()
    {

      $leaderboard = DB::table('leaderboard')
                ->orderBy('total', 'desc')
                ->orderBy('emas', 'desc')
                ->orderBy('perak', 'desc')
                ->orderBy('perunggu', 'desc')
                ->paginate(10);
      $dkbs = DKBS::all()->unique('kodeMK');

      $log = Leaderboard::where('updated_at','!=',null)->get();
      return view('/leaderboard',['leaderboard'=>$leaderboard,'log'=>$log,'dkbs'=>$dkbs]);
    }

    public function indexDosen()
    {

      $leaderboard = DB::table('leaderboard')
                ->orderBy('total', 'desc')
                ->orderBy('emas', 'desc')
                ->orderBy('perak', 'desc')
                ->orderBy('perunggu', 'desc')
                ->paginate(10);

      $dkbs = DKBS::all()->unique('kodeMK');


      $log = Leaderboard::where('updated_at','!=',null)->get();
      return view('dosen.leaderboardDosen',['leaderboard'=>$leaderboard,'log'=>$log,'dkbs'=>$dkbs]);
    }
    public function detail(Request $request, $id)
    {
      $namaMK = DKBS::find($id);
      $nama = DKBS::where('kodeMK',$namaMK->kodeMK)->orderBy('nrp')->get();
      // dd($nama->pluck('nrp'));
      // $dkbs = DB::table('leaderboard')
      //       ->join('dkbs', 'leaderboard.nrp', '=', 'dkbs.nrp ')
      //       ->where('namaMataKuliah',$namaMK->namaMataKuliah)
      //       ->select('dkbs.*', 'leaderboard.*')
      //       ->get();
      //
      //
      // dd($dkbs);
      // $nrp = $nama->pluck('nrp');

     $dkbs = Leaderboard::whereIn('nrp',$nama->pluck('nrp'))
                         ->orderBy('total', 'desc')
                         ->orderBy('emas', 'desc')
                         ->orderBy('perak', 'desc')
                         ->orderBy('perunggu', 'desc')
                         ->get();

      return view('dosen.leaderboardDosenDetail',['dkbs'=>$dkbs, 'namaMK'=>$namaMK,'nama'=>$nama]);
    }

    public function detailMhs(Request $request, $id)
    {
      $namaMK = DKBS::find($id);
      $nama = DKBS::where('kodeMK',$namaMK->kodeMK)->orderBy('nrp')->get();
      // dd($nama->pluck('nrp'));
      // $dkbs = DB::table('leaderboard')
      //       ->join('dkbs', 'leaderboard.nrp', '=', 'dkbs.nrp ')
      //       ->where('namaMataKuliah',$namaMK->namaMataKuliah)
      //       ->select('dkbs.*', 'leaderboard.*')
      //       ->get();
      //
      //
      // dd($dkbs);
      // $nrp = $nama->pluck('nrp');

     $dkbs = Leaderboard::whereIn('nrp',$nama->pluck('nrp'))
                         ->orderBy('total', 'desc')
                         ->orderBy('emas', 'desc')
                         ->orderBy('perak', 'desc')
                         ->orderBy('perunggu', 'desc')
                         ->get();

      return view('leaderboardDetail',['dkbs'=>$dkbs, 'namaMK'=>$namaMK,'nama'=>$nama]);
    }



}
