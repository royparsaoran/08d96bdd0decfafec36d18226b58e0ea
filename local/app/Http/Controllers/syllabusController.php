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
use App\Pertemuan;
class syllabusController extends Controller
{ 
  public function indexDosen(Request $request){
    $nik = session('nrp');
    $role = session('roles');
    if ($role=='PJS') {
      $dataMK = DB::table('masterdkbs')
              ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester' )
              ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK' )
              ->get();
    }else{
      $dataMK = DB::table('masterdkbs')
              ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester' )
              ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK' )
              ->where('masterdkbs.dosen_nik',$nik)
              ->get();
    }
    $pertemuan =DB::table('pertemuan')
               ->where('masterDKBS_idMasterDKBS','LIKE', '%'.$request->get('idmaster','').'%' )
               ->get();
    $currentMK = DB::table('masterdkbs')
                ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK' )
                ->where('idMasterDKBS','LIKE', $request->get('idmaster','') )
                ->get();
    // return $currentMK;
    return view('dosen.syllabusDosen')
          ->with('pertemuan', $pertemuan)
          ->with('dataMK', $dataMK)
          ->with('currentMK', $currentMK);
  }

  public function insert(Request $req,$id)
  {
       // dd($req->input('namaPertemuan'));
       $dataMK = DB::table('masterdkbs')
              ->where('idMasterDKBS',$id)
              ->get();
              // dd($dataMK[0]->jamMulai);
        $banyakPertemuan = $req->input('banyakPertemuan');
        for ($x = 1; $x <= $banyakPertemuan; $x++) {
          $syllabus = DB::table('pertemuan')->insert([
            'masterDKBS_idMasterDKBS' => $id, 
            'paketquestion_idPaketQuestion' => 1, 
            'namaPertemuan' => "Pertemuan ".$x." : ",
            'tanggal' => date("Y.m.d"),
            'waktu' => $dataMK[0]->jamMulai
          ]);
        }
        
        if($syllabus){
          $req->session()->flash('message', 'Berhasil menambahkan syllabus');
        } else{
          $req->session()->flash('error','Syllabus Tidak Berhasil Ditambahkan');
        }return redirect(('/syllabusDosen?idmaster='.$id)) ;
  }

   public function editnama(Request $req,$idPertemuan)
  {
    $pertemuan = Pertemuan::find($idPertemuan);
    $pertemuan -> namaPertemuan = $req->value;
    $pertemuan -> save();
    return redirect()->back() ;
  }

  public function edittanggal(Request $req,$idPertemuan)
  {
    $pertemuan = Pertemuan::find($idPertemuan);
    $pertemuan -> tanggal = $req->value;
    $pertemuan -> save();
    return redirect()->back() ;
  }

  public function editwaktu(Request $req,$idPertemuan)
  {
    $pertemuan = Pertemuan::find($idPertemuan);
    $pertemuan -> waktu = $req->value;
    $pertemuan -> save();
    return redirect()->back() ;
  }

}