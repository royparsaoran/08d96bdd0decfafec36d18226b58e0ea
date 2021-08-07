<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use URL;
use DateTime;
use Carbon\Carbon;
use Session;
use Excel;


use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\Tournament;
use App\Livestream;
use App\Post;
use App\Komentarmk;

class commentController extends Controller
{ 
 
  public function insert(Request $req)
  {
        $iddetail = $req->input('iddetail');
        $komentar= $req->input('Komentar');
        $nrp = session('nrp');

        $comment = DB::table('komentarmk')->insert([
          'detaildkbs_idDetailDKBS' => $iddetail, 
          'isiKomentar' => $komentar, 
          'pelapor' => $nrp,
          'messagesStatus' => 1
        ]);

      if($comment){
        $req->session()->flash('message', 'Berhasil menambahkan komentar');
        return redirect()->back() ;
      } else{
        echo 'tidak sukses';
      }
  }
//

  public function commentDosen(Request $request)
  {
    //echo "asuk";
    //var_dump($request->post('kodeMK',''));exit;
    $data = DB::table('komentarmk')
            ->join('detaildkbs','komentarmk.detaildkbs_idDetailDKBS','=','detaildkbs.idDetailDKBS')
            ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS' )
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK' )
            ->where('matakuliah.kodeMK','LIKE', $request->post('kodeMK',''))
            ->where('masterdkbs.kelas','LIKE',$request->post ('kelas',''))
            ->orderBy('messagesStatus','desc')
            ->latest('idKomentar')
            ->get();
    $dataMK = DB::table('masterdkbs')
            ->join('matakuliah', 'matakuliah.kodeMK', '=', 'masterdkbs.matakuliah_kodeMK' )
            ->groupby('matakuliah.kodeMK')
            ->get();
    $dataKelas = DB::table('masterdkbs')
            ->join('matakuliah', 'matakuliah.kodeMK', '=', 'masterdkbs.matakuliah_kodeMK' )
            ->get();

    return view('dosen.commentDosen')
            ->with('dataMK', $dataMK)
            ->with('dataKelas', $dataKelas)
            ->with('data', $data);
    
  }

  public function index(Request $request)
  {
    $nrp = session('nrp');
    $dataMK = DB::table('detaildkbs')
              ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS' )
              ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester' )
              ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK' )
              ->where('mahasiswa_NRP',"=",$nrp)
              ->get();
    return view('/comment')->with('dataMK', $dataMK);
  }


  public function read(Request $request,$id)
    {
      // return $request->all();
      $comment = Komentarmk::find($id);
      $comment -> messagesStatus = 0;
      $comment -> save();
//      session()->flash('message','Delete Poster Berhasil');
      // return $id;
      return redirect('/commentDosen');
    }


}