<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use URL;
use DateTime;
use Carbon\Carbon;
use Session;
use Excel;
use App\Semester;
use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\Tournament;
use App\Livestream;
use App\Post;

class courseRatingController extends Controller
{
  public function insert(Request $req)
  {
    // return ($req->all());
    $question = $req->question;
    foreach ($question as $key) {
      // $semester = DB::table('semester')
      //           ->max('idSemester')
      //           ->get();  
      $data = [
        'pertemuan_idPertemuan' => $req->idpertemuan,
        'pertemuan_MasterDKBS_idMasterDKBS' => $req->idmaster,
        'pertemuan_MasterDKBS_semester_idSemester' => 1,
        'mahasiswa_NRP' => session('nrp'),
        'detaiQuestion_idDetailQuestion' => $key,
        'answerFill' =>   $req->{'iCheck' . $key},
        'answerComment' =>   $req->komenmk,
        'timestamp' => date('Y-m-d H:i:s')
      ];
      DB::table('answer')->insert($data);

    }
    $dataPertemuan = DB::select('SELECT * FROM pertemuan p JOIN masterdkbs m on p.masterdkbs_idMasterDKBS = m.idMasterDKBS JOIN matakuliah k ON m.matakuliah_kodeMK = k.kodeMK where idPertemuan = ' . $req->idpertemuan . ' ');
    $log =[
      'user' => session('nrp'),
      'idMasterDKBS' =>$req->idmaster,
      'activity' => 'Telah Mengisi Course rating pada matakuliah ' . $dataPertemuan[0]->namaMK . ' ( ' . $dataPertemuan[0]->namaPertemuan . ' )' 
    ];
    DB::table('logs')->insert($log);
    // dd($dataPertemuan);
    if (!is_null($data)) {
      $req->session()->flash('message', 'Terimakasih telah menambahkan komentar pada matakuliah ' . $dataPertemuan[0]->namaMK . ' ( ' . $dataPertemuan[0]->namaPertemuan . ' )');
    } else {
      $req->session()->flash('error', 'Data Tidak Berhasil Ditambahkan');
    }
    return redirect()->back();
  }

  public function index(Request $request)
  {
    //     $dataMK = DB::select('select *
    // from detaildkbs 
    // join masterdkbs on detaildkbs.masterdkbs_idMasterDKBS = masterdkbs_idMasterDKBS 
    // join semester on masterdkbs.idMasterDKBS = semester.idSemester
    // join matakuliah on masterdkbs.matakuliah_kodeMK = matakuliah.kodeMK');
    $nrp = session('nrp');
    $dataMK = DB::table('detaildkbs')
      ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'mataKuliah.kodeMK')
      ->where('detaildkbs.mahasiswa_NRP', $nrp)
      ->get();
    $dataPertemuan = DB::table('pertemuan')
      ->get();
    return view('/courseRating')
      ->with('dataPertemuan', $dataPertemuan)
      ->with('dataMK', $dataMK);
  }

  public function read(Request $req)
  {
    $dataHitung = DB::table('answer')
      ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
      ->select(DB::raw('count(answerFill) as jumlahjawaban'))
      ->where('answer.pertemuan_idPertemuan', $req->idpertemuan)
      ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $req->idmaster)
      ->where('answer.answerFill', $req->answerfill)
      ->get();
  }

  public function indexDosen(Request $request)
  {
    $sem = Semester::latest('idSemester')->first();
    $nik = session('nrp');
    $role = session('roles');
    if ($role == 'PJS') {
      $dataMK = DB::table('masterdkbs')
        ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
        ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
        ->get();
    } else {
      $dataMK = DB::table('masterdkbs')
        ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
        ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
        ->where('masterdkbs.dosen_nik', $nik)
        ->get();
    }
    $dataPertemuan = DB::table('pertemuan')->get();
    $dataPertanyaan = DB::table('detailquestion')
      ->join('paketquestion', 'detailquestion.paketQuestion_idPaketQuestion', '=', 'paketquestion.idPaketQuestion')
      ->join('answer', 'detailquestion.idDetailQuestion', '=', 'answer.detaiQuestion_idDetailQuestion')
      ->join('masterdkbs', 'answer.pertemuan_MasterDKBS_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->join('pertemuan', 'answer.pertemuan_idPertemuan', '=', 'pertemuan.idPertemuan')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->where('answer.pertemuan_idPertemuan', 'LIKE', $request->post('idpertemuan', ''))
      ->groupby('answer.detaiQuestion_idDetailquestion')
      ->get();
    $dataJawaban = DB::table('pertemuan')->get();
    $categories = [];
    $tm = [];
    $km = [];
    $m = [];
    $sm = [];
    $mk = "";
    $p = "";
    $k = "";
    foreach ($dataPertanyaan as $dpy) {
      $categories[] = $dpy->Soal;
      $mk = $dpy->namaMK;
      $p = $dpy->namaPertemuan;
      $k = $dpy->kelas;
      $dataHitungTM = DB::table('answer')
        ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
        ->where('answer.pertemuan_idPertemuan', $dpy->pertemuan_idPertemuan)
        ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dpy->pertemuan_MasterDKBS_idMasterDKBS)
        ->where('answer.detaiQuestion_idDetailQuestion', $dpy->detaiQuestion_idDetailQuestion)
        ->where('answer.answerFill', 'TM')
        ->count();
      $dataHitungKM = DB::table('answer')
        ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
        ->where('answer.pertemuan_idPertemuan', $dpy->pertemuan_idPertemuan)
        ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dpy->pertemuan_MasterDKBS_idMasterDKBS)
        ->where('answer.detaiQuestion_idDetailQuestion', $dpy->detaiQuestion_idDetailQuestion)
        ->where('answer.answerFill', 'KM')
        ->count();
      $dataHitungM = DB::table('answer')
        ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
        ->where('answer.pertemuan_idPertemuan', $dpy->pertemuan_idPertemuan)
        ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dpy->pertemuan_MasterDKBS_idMasterDKBS)
        ->where('answer.detaiQuestion_idDetailQuestion', $dpy->detaiQuestion_idDetailQuestion)
        ->where('answer.answerFill', 'M')
        ->count();
      $dataHitungSM = DB::table('answer')
        ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
        ->where('answer.pertemuan_idPertemuan', $dpy->pertemuan_idPertemuan)
        ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dpy->pertemuan_MasterDKBS_idMasterDKBS)
        ->where('answer.detaiQuestion_idDetailQuestion', $dpy->detaiQuestion_idDetailQuestion)
        ->where('answer.answerFill', 'SM')
        ->count();
      $tm[] = $dataHitungTM;
      $km[] = $dataHitungKM;
      $m[] = $dataHitungM;
      $sm[] = $dataHitungSM;
    }
    $dataPertanyaan2 = DB::table('detailquestion')->get();
    $dataPertemuan2 = DB::table('pertemuan')
      ->leftjoin('answer', 'pertemuan.idPertemuan', '=', 'answer.pertemuan_idPertemuan')
      ->where('answer.idAnswer', '!=', null)
      ->where('masterDKBS_idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->groupby('idPertemuan')
      ->get();
    $namaMK2 = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    $namaDosen = DB::table('dosen')
      ->get();
    $namaDosen2 = DB::table('dosen')
      ->where('nik', 'LIKE', $request->post('nik', ''))
      ->get();
    $matkulajar = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('dosen_nik', '=', $request->post('nik', ''))
      ->get();
    return view('dosen.courseRatingDosen')
      ->with('dataPertemuan', $dataPertemuan)
      ->with('dataPertemuan2', $dataPertemuan2)
      ->with('dataMK', $dataMK)
      ->with('dataJawaban', $dataJawaban)
      ->with('dataPertanyaan', $dataPertanyaan)
      ->with('dataPertanyaan2', $dataPertanyaan2)
      ->with('tm', $tm)
      ->with('km', $km)
      ->with('m', $m)
      ->with('sm', $sm)
      ->with('mk', $mk)
      ->with('p', $p)
      ->with('k', $k)
      ->with('sem', $sem)
      ->with('namaMK2', $namaMK2)
      ->with('matkulajar', $matkulajar)
      ->with('namaDosen', $namaDosen)
      ->with('namaDosen2', $namaDosen2)
      ->with('categories', $categories);
  }

  public function indexDosen2(Request $request)
  {
    $sem = Semester::latest('idSemester')->first();
    $nik = session('nrp');
    $role = session('roles');
    if ($role == 'PJS') {
      $dataMK = DB::table('masterdkbs')
        ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
        ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
        ->get();
    } else {
      $dataMK = DB::table('masterdkbs')
        ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
        ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
        ->where('masterdkbs.dosen_nik', $nik)
        ->get();
    }

    $dataPertanyaan2 = DB::table('detailquestion')->get();

    $dataPertemuan2 = DB::table('pertemuan')
      ->leftjoin('answer', 'pertemuan.idPertemuan', '=', 'answer.pertemuan_idPertemuan')
      ->where('answer.idAnswer', '!=', null)
      ->where('masterDKBS_idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->groupby('idPertemuan')
      ->get();
    $namaMK2 = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    $dataGraff = [];
    foreach ($dataPertanyaan2 as $dprtny2) {
      $categories = [];
      $tm = [];
      $km = [];
      $m = [];
      $sm = [];
      $p = "";
      foreach ($dataPertemuan2 as $dprtmn2) {
        $categories[] = $dprtmn2->namaPertemuan;
        // $mk = $dpy->namaMK;
        $p = $dprtny2->Soal;
        // $k = $dpy->kelas;
        $dataHitungTM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_idPertemuan', $dprtmn2->idPertemuan)
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dprtmn2->pertemuan_MasterDKBS_idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'TM')
          ->count();
        $dataHitungKM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_idPertemuan', $dprtmn2->idPertemuan)
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dprtmn2->pertemuan_MasterDKBS_idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'KM')
          ->count();
        $dataHitungM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_idPertemuan', $dprtmn2->idPertemuan)
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dprtmn2->pertemuan_MasterDKBS_idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'M')
          ->count();
        $dataHitungSM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_idPertemuan', $dprtmn2->idPertemuan)
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $dprtmn2->pertemuan_MasterDKBS_idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'SM')
          ->count();
        $tm[] = $dataHitungTM;
        $km[] = $dataHitungKM;
        $m[] = $dataHitungM;
        $sm[] = $dataHitungSM;
      }
      $arrayData = [$categories, $tm, $km, $m, $sm, $p];
      $array_new = [$dprtny2->Soal, $arrayData];
      array_push($dataGraff, $array_new);
    }
    // $test = $dataGraff[1]; 
    // dump($test[1]);
    return view('dosen.courseRatingDosen2')

      ->with('sem', $sem)
      ->with('dataPertemuan2', $dataPertemuan2)
      ->with('dataMK', $dataMK)
      ->with('dataPertanyaan2', $dataPertanyaan2)
      ->with('dataGraff', $dataGraff)
      ->with('namaMK2', $namaMK2);
  }

  public function indexDosen3(Request $request)
  {
    $sem = Semester::latest('idSemester')->first();
    $nik = session('nrp');
    $dataPertanyaan2 = DB::table('detailquestion')->get();
    $namaDosen = DB::table('dosen')
      ->get();
    $namaDosen2 = DB::table('dosen')
      ->where('nik', 'LIKE', $request->post('nik', ''))
      ->get();
    $matkulajar = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('dosen_nik', '=', $request->post('nik', ''))
      ->where('semester_namaSemester', '=', $request->post('namaSemester', ''))
      ->get();
    $dataGraff = [];
    $semtot = DB::table('semester')
      ->get();
    foreach ($dataPertanyaan2 as $dprtny2) {
      $categories = [];
      $tm = [];
      $km = [];
      $m = [];
      $sm = [];
      $p = "";
      foreach ($matkulajar as $mka) {
        $categories[] = $mka->namaMK . ' ( ' . $mka->kelas . ' )';
        // $mk = $dpy->namaMK;
        $p = $dprtny2->Soal;
        // $k = $dpy->kelas;
        $dataHitungTM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'TM')
          ->count();
        $dataHitungKM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'KM')
          ->count();
        $dataHitungM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'M')
          ->count();
        $dataHitungSM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'SM')
          ->count();
        $tm[] = $dataHitungTM;
        $km[] = $dataHitungKM;
        $m[] = $dataHitungM;
        $sm[] = $dataHitungSM;
      }
      $arrayData = [$categories, $tm, $km, $m, $sm, $p];
      $array_new = [$dprtny2->Soal, $arrayData];
      array_push($dataGraff, $array_new);
    }
    $dataTopMahasiswa = DB::select('select a.mahasiswa_NRP,m.namaMhs ,count(*) 
                                  FROM answer a JOIN mahasiswa m ON a.mahasiswa_NRP = m.nrp JOIN masterdkbs md ON a.pertemuan_MasterDKBS_idMasterDKBS = md.idMasterDKBS
                                  WHERE mahasiswa_NRP IS NOT NULL AND  md.dosen_nik = ' . $request->post('nik', '000') . '
                                  GROUP BY mahasiswa_NRP
                                  ORDER BY count(*) DESC
                                  LIMIT 1');
    $dataWorstMK  = DB::select('
  select k.namaMK , p.namaPertemuan ,count(*) ,(SUM(IF(a.answerFill="TM",1,0))*1 + SUM(IF(a.answerFill="KM",1,0))*2 + SUM(IF(a.answerFill="M",1,0))*3 + SUM(IF(a.answerFill="SM",1,0))*4) AS Hasil 
FROM answer a 
JOIN masterdkbs m ON a.pertemuan_MasterDKBS_idMasterDKBS = m.idMasterDKBS 
JOIN matakuliah k ON m.matakuliah_kodeMK = k.kodeMK 
JOIN pertemuan p on p.idPertemuan = a.pertemuan_idPertemuan 
WHERE m.dosen_nik = ' . $request->post('nik', '000') . '
GROUP BY p.idPertemuan 
ORDER BY Hasil ASC
limit 1
                              ');
    $dataBestMK = DB::select('
select k.namaMK , p.namaPertemuan ,count(*) ,(SUM(IF(a.answerFill="TM",1,0))*1 + SUM(IF(a.answerFill="KM",1,0))*2 + SUM(IF(a.answerFill="M",1,0))*3 + SUM(IF(a.answerFill="SM",1,0))*4) AS Hasil 
FROM answer a 
JOIN masterdkbs m ON a.pertemuan_MasterDKBS_idMasterDKBS = m.idMasterDKBS 
JOIN matakuliah k ON m.matakuliah_kodeMK = k.kodeMK 
JOIN pertemuan p on p.idPertemuan = a.pertemuan_idPertemuan
WHERE m.dosen_nik = ' . $request->post('nik', '000') . ' 
GROUP BY p.idPertemuan 
ORDER BY Hasil DESC
limit 1
                              ');
    $datarata2 = DB::select('
                    select (SUM(IF(a.answerFill="TM",1,0))*1 + SUM(IF(a.answerFill="KM",1,0))*2 + SUM(IF(a.answerFill="M",1,0))*3 + SUM(IF(a.answerFill="SM",1,0))*4)/count(*) AS Hasil
                    FROM answer a
                    JOIN masterdkbs m on a.pertemuan_MasterDKBS_idMasterDKBS = m.idMasterDKBS
                    WHERE m.dosen_nik = ' . $request->post('nik', '000') . '
    ');
    // dd ($dataTopMahasiswa);
    return view('dosen.courseRatingDosen3')
      ->with('dataPertanyaan2', $dataPertanyaan2)
      ->with('datarata2', $datarata2)
      ->with('dataBestMK', $dataBestMK)
      ->with('dataWorstMK', $dataWorstMK)
      ->with('matkulajar', $matkulajar)
      ->with('namaDosen', $namaDosen)
      ->with('dataGraff', $dataGraff)
      ->with('semtot', $semtot)
      ->with('sem', $sem)
      ->with('dataTopMahasiswa', $dataTopMahasiswa)
      ->with('namaDosen2', $namaDosen2);
  }

  public function indexDosen4(Request $request)
  {
    $request;
    $sem = Semester::latest('idSemester')->first();
    $nik = session('nrp');
    $dataPertanyaan2 = DB::table('detailquestion')->get();
    $namaDosen = DB::table('dosen')
      ->get();
    $namaDosen2 = DB::table('dosen')
      ->where('nik', 'LIKE', $request->post('nik', ''))
      ->get();
    $matkulajar = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('dosen_nik', '=', $request->post('nik', ''))
      ->where('semester_namaSemester', '=', $request->post('namaSemester', ''))
      ->get();
    $dataGraff = [];
    $semtot = DB::table('semester')
      ->get();

    $sem = Semester::latest('idSemester')->first();
    foreach ($matkulajar as $mka) {
      $categories = [];
      $tm = [];
      $km = [];
      $m = [];
      $sm = [];
      $p = "";

      $kelas_semester = "";
      foreach ($dataPertanyaan2 as $dprtny2) {
        $categories[] = $dprtny2->Soal;
        // $mk = $dpy->namaMK;
        $p = $mka->namaMK;

        $kelas_semester = $mka->kelas . ' - (' . $mka->semester_namaSemester . ')';
        // $k = $dpy->kelas;
        $dataHitungTM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'TM')
          ->count();
        $dataHitungKM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'KM')
          ->count();
        $dataHitungM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'M')
          ->count();
        $dataHitungSM = App('db')->table('answer')
          ->join('detailquestion', 'detailquestion.idDetailquestion', '=', 'answer.detaiQuestion_idDetailQuestion')
          ->where('answer.pertemuan_MasterDKBS_idMasterDKBS', $mka->idMasterDKBS)
          ->where('answer.detaiQuestion_idDetailQuestion', $dprtny2->idDetailQuestion)
          ->where('answer.answerFill', 'SM')
          ->count();
        $tm[] = $dataHitungTM;
        $km[] = $dataHitungKM;
        $m[] = $dataHitungM;
        $sm[] = $dataHitungSM;
      }
      $arrayData = [$categories, $tm, $km, $m, $sm, $p, $kelas_semester];
      $array_new = [$mka->namaMK, $arrayData];
      array_push($dataGraff, $array_new);
    }

    // dd ($dataTopMahasiswa);
    return view('dosen.courseRatingDosen4')
      ->with('sem', $sem)
      ->with('dataPertanyaan2', $dataPertanyaan2)
      ->with('matkulajar', $matkulajar)
      ->with('namaDosen', $namaDosen)
      ->with('dataGraff', $dataGraff)
      ->with('semtot', $semtot)
      ->with('namaDosen2', $namaDosen2);
  }

  public function index0(Request $request)
  {
    $sem = Semester::latest('idSemester')->first();
    $nrp = session('nrp');
    // return "'$nrp'";
    $dataMK = DB::table('detaildkbs')
      ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('detaildkbs.mahasiswa_NRP', $nrp)
      ->get();
    $dataPertemuan = DB::table('pertemuan')->get();
    $dataPertanyaan = DB::table('detailquestion')
      ->join('paketquestion', 'detailquestion.paketQuestion_idPaketQuestion', '=', 'paketquestion.idPaketQuestion')
      //                    ->join('answer','detailquestion.idDetailQuestion','=','answer.detaiQuestion_idDetailQuestion')
      ->get();
    //    $dataJawaban = DB::table('pertemuan')
    //                    ->leftjoin('answer','pertemuan.idPertemuan','=','answer.pertemuan_idPertemuan')
    //                    // ->rightjoin('mahasiswa','mahasiswa.nrp','=','answer.mahasiswa_NRP')
    // // ->leftjoin('answer', function ($join) {
    // //            $join->on('pertemuan_idPertemuan', '=', 'answer.pertemuan_idPertemuan')
    // //            ->where('answer.idAnswer',null);
    // //        })
    //                    // ->where('pertemuan_idPertemuan',null)
    //                    ->where('answer.idAnswer',null)
    //                    ->where('timePertemuan','<=',date("Y-m-d", time()))
    //                    ->get();
    $curentdate = date('Y-m-d');
    // dd($curentdate);
    $dataJawaban = DB::select('select * from pertemuan p where p.idPertemuan not in (select pertemuan_idPertemuan from answer a where a.mahasiswa_nrp = ' . $nrp . ') AND p.tanggal <= "' . $curentdate . '" ');
    return view('/courseRating0')

      ->with('sem', $sem)
      ->with('dataPertemuan', $dataPertemuan)
      ->with('dataMK', $dataMK)
      ->with('dataJawaban', $dataJawaban)
      ->with('dataPertanyaan', $dataPertanyaan);
  }
}
