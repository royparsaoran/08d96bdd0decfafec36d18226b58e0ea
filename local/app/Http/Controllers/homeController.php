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
use App\TournamentTeam;
use App\SoalIsian;
use App\SoalPG;
use App\BankSoal;
use App\Slider;
use App\Todo;

class homeController extends Controller
{
  public function index(Request $request)
  {
    $slider = Slider::orderBy('id', 'desc')->get();
    $user = session::get('login');
    $mahasiswa = Mahasiswa::where('namaMhs', $user)->first();
    $todo = Todo::where('idMahasiswa', $mahasiswa->id)->orderBy('id', 'desc')->paginate(4);

    $now = date("Y-m-d H:i:s", strtotime(Carbon::now('Asia/Jakarta')));
    $sekarang = Carbon::parse($now);

    $time = "";
    foreach ($todo as $td) {
      $time = $td->created_at->diffForHumans($sekarang);
    }

    $leaderboard = DB::table('leaderboard')
      ->orderBy('total', 'desc')
      ->orderBy('emas', 'desc')
      ->orderBy('perak', 'desc')
      ->orderBy('perunggu', 'desc')
      ->paginate(5);
    $nik = session('nrp');
    $dataMK = DB::table('masterdkbs')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->join('detaildkbs', 'masterdkbs.idMasterDKBS', '=', 'detaildkbs.masterdkbs_idMasterDKBS')
      ->where('detaildkbs.mahasiswa_NRP', '=', $nik)
      ->get();

    $assign = DB::table('assignment')
      ->join('pertemuan', 'pertemuan.idPertemuan', '=', 'assignment.idPertemuan')
      ->get();
    return view('/home', ['slider' => $slider, 'todo' => $todo, 'time' => $time, 'dataMK' => $dataMK, 'assign' => $assign, 'leaderboard' => $leaderboard, 'sekarang' => $sekarang]);
  }

  public function indexDosenDetail(Request $request, $count, $matakuliah_kodeMK, $kelas)
  {
    $nik = session('nrp');
    $dataMK = DB::table('masterdkbs')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.dosen_nik', $nik)
      ->where('matakuliah.kodeMK', $matakuliah_kodeMK)
      ->where('masterdkbs.kelas', $kelas)
      ->get();
    // dd($dataMK);
    return view('dosen.homeDosenDetail')
      ->with('count', $count)
      ->with('dataMK', $dataMK);;
  }

  public function indexDetail(Request $request, $count, $matakuliah_kodeMK, $kelas)
  {
    $nik = session('nrp');
    $dataMK = DB::table('masterdkbs')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->join('detaildkbs', 'masterdkbs.idMasterDKBS', '=', 'detaildkbs.masterdkbs_idMasterDKBS')
      ->where('detaildkbs.mahasiswa_NRP', '=', $nik)
      ->where('matakuliah.kodeMK', $matakuliah_kodeMK)
      ->where('masterdkbs.kelas', $kelas)
      ->get();
    $pertemuan = DB::table('pertemuan')
      ->join('masterdkbs', 'masterdkbs.idMasterDKBS', '=', 'pertemuan.masterdkbs_idMasterDKBS')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->join('detaildkbs', 'masterdkbs.idMasterDKBS', '=', 'detaildkbs.masterdkbs_idMasterDKBS')
      ->where('detaildkbs.mahasiswa_NRP', '=', $nik)
      ->where('matakuliah.kodeMK', $matakuliah_kodeMK)
      ->where('masterdkbs.kelas', $kelas)
      ->orderBy('pertemuan.idPertemuan')
      ->get();
    // dd($pertemuan);
    $submission = DB::table('submission')
      ->join('assignment', 'assignment.id', '=', 'submission.assignmentId')
      ->join('pertemuan', 'pertemuan.idPertemuan', '=', 'assignment.idPertemuan')
      ->join('masterdkbs', 'masterdkbs.idMasterDKBS', '=', 'pertemuan.masterdkbs_idMasterDKBS')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->join('detaildkbs', 'masterdkbs.idMasterDKBS', '=', 'detaildkbs.masterdkbs_idMasterDKBS')
      ->where('submission.createdby', '=', $nik)
      ->where('matakuliah.kodeMK', $matakuliah_kodeMK)
      ->where('masterdkbs.kelas', $kelas)
      ->orderBy('assignment.id')
      ->groupBy('submission.id')
      ->get(['submission.createdby AS pengirim', 'submission.*', 'assignment.*']);
    $nilaisub = [];
    $max = 0;
    $min = 100;
    $tot = 0;
    foreach ($submission as $key) {
      if ($key->nilai != -1) {
        array_push($nilaisub, $key->nilai);
      } else {
        array_push($nilaisub, 0);
      }
      if ($key->nilai > $max) {
        $max = $key->nilai;
      }
      if ($key->nilai < $min && $key->nilai!=-1) {
        $min = $key->nilai;
      }
      $tot += $key->nilai;
    }
    if (count($submission) != 0 ) {
      $ave = $tot / count($submission);
    }else{
      $ave="-";
      $min="-";
      $max="-";
    }
    if($min==100){
      $ave="-";
      $min="-";
      $max="-";
    }
    $dataAbsen = DB::select('SELECT r.createdby , c.idpertemuan from forumreply r JOIN forumcomment c ON r.comment_id = c.comment_id');
    $dataAssign = DB::select('SELECT a.idPertemuan , s.createdby FROM assignment a JOIN submission s ON a.id = s.assignmentId');
    $dataCR = DB::select('SELECT * FROM answer');
    // $nilaisort = arsort($nilaisub);
    //  dd($nilaisub);
    return view('homeDetail')
      ->with('pertemuan', $pertemuan)
      ->with('count', $count)
      ->with('nilaisub', $nilaisub)
      ->with('max', $max)
      ->with('dataAbsen', $dataAbsen)
      ->with('dataAssign', $dataAssign)
      ->with('dataCR', $dataCR)
      ->with('min', $min)
      ->with('ave', $ave)
      ->with('dataMK', $dataMK);;
  }

  public function indexDosen(Request $request)
  {
    $nik = session('nrp');
    $dataMK = DB::table('masterdkbs')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.dosen_nik', $nik)
      ->get();
    $slider = Slider::orderBy('id', 'desc')->get();
    $user = session::get('login');
    // $dosen = Dosen::where('namaDosen',$user)->first();
    // $todo = Todo::where('idMahasiswa', $dosen->id)->orderBy('id','desc')->paginate(4);
    //
    // $now = date("Y-m-d H:i:s", strtotime(Carbon::now('Asia/Jakarta')));
    // $sekarang = Carbon::parse($now);
    //
    // $time="";
    // foreach ($todo as $td) {
    //   $time = $td->created_at->diffForHumans($sekarang);
    // }
    //
    // $leaderboard = DB::table('leaderboard')
    //           ->orderBy('total', 'desc')
    //           ->orderBy('emas', 'desc')
    //           ->orderBy('perak', 'desc')
    //           ->orderBy('perunggu', 'desc')
    //           ->paginate(5);
    $assign = DB::table('assignment')
      ->join('pertemuan', 'pertemuan.idPertemuan', '=', 'assignment.idPertemuan')
      ->get();
    return view('dosen.homeDosen')
      ->with('dataMK', $dataMK)
      ->with('assign', $assign)
      ->with('slider', $slider);
  }


  public function todo(Request $request)
  {
    $user = session::get('login');
    $mahasiswa = Mahasiswa::where('namaMhs', $user)->first();
    $todolist = Todo::where('task', $request->task)->first();
    $now = date("Y-m-d H:i:s", strtotime(Carbon::now('Asia/Jakarta')));
    $sekarang = Carbon::parse($now);

    if ($request->task != null) {
      $todo = new Todo;
      $todo->task = $request->task;
      $todo->idMahasiswa = $mahasiswa->id;
      $todo->created_at = $sekarang;
      $todo->updated_at = $sekarang;
      $todo->save();
    }


    return redirect()->back();
  }

  public function edit(Request $request, $id)
  {
    $todo = Todo::find($id);

    return view("todoUpdate", ['todo' => $todo]);
  }

  public function update(Request $request, $id)
  {
    $todo = Todo::find($id);
    $todo->task = $request->task;
    $todo->save();
    return redirect('home');
  }
  public function check(Request $request, $id)
  {

    $todo = Todo::find($id);

    if ($todo->status == "done") {
      $todo->status = "notdone";
    } else {
      $todo->status = "done";
    }
    $todo->save();
    return redirect('home');
  }

  public function delete(Request $request, $id)
  {
    $todo = Todo::find($id);
    $todo->delete();
    return redirect('home');
  }
}
