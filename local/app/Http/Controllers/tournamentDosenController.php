<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Http\RedirectResponse;
use Storage;
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
use App\Score;
use App\TournamentRegister;
use App\MataKuliah;
use App\JawabanIsian;
use App\JawabanPG;
use App\DKBS;



class tournamentDosenController extends Controller
{
    public function index(Request $request)
    {
      $banksoal = BankSoal::all();
      $banksoalpg = BankSoal::all();
      $banksoalisian = BankSoal::all();
      $alltournament = Tournament::all();
      $matkul = MataKuliah::all();

      $soalpg = SoalPG::all();
      $soalisian = SoalIsian::all();
      return view('dosen.tournamentDosen',['soalpg'=> $soalpg,'soalisian'=> $soalisian , 'banksoalpg'=> $banksoalpg ,'banksoalisian'=> $banksoalisian ,'banksoal'=>$banksoal ,'alltournament'=>$alltournament,'matkul'=>$matkul]);
    }

    public function formDosen($id)
    {
      $tournament = Tournament::find($id);


      return view('dosen.tournamentFormDosen',['tournament'=>$tournament]);

    }

    public function create(Request $request)
    {
      $request->validate([
          'namaTournament' => 'required|unique:tournament',
          'tanggalTournament' => 'required|after:yesterday',
          'start' => 'required|after_or_equal:tanggalTournament',
          'finish' => 'required|after_or_equal:start',
          'gambar' => 'max:500|mimes:jpeg,bmp,png',
      ]);
      $user = session::get('login');
      $input = $request->all();
      $banksoalpg = BankSoal::all();
      $banksoal = BankSoal::all();
      $banksoalisian = BankSoal::all();
      $soalpg = SoalPG::all();
      $soalisian = SoalIsian::all();
      $alltournament = Tournament::all();
      $tournament = new Tournament;
      $date = $request->tanggalTournament;

      $newTanggalTournament = date("Y-m-d", strtotime($date));
      $newStart = date("Y-m-d H:i:s", strtotime($request->start));
      $newFinish = date("Y-m-d H:i:s", strtotime($request->finish));
      $duration = date("H:i:s", strtotime($request->duration));


      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/tournament';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }
      else
      {
        $gambar_name ="";
      }



      $tournament->namaTournament = $request->namaTournament;
      $tournament->tanggalTournament = $newTanggalTournament;
      $tournament->creator = $user;
      $tournament->status = $request->status;
      $tournament->point = $request->point;
      $tournament->gambar = $gambar_name;
      $tournament->tempat = $request->tempat;
      $tournament->start = $newStart;
      $tournament->finish =$newFinish;
      $tournament->duration = $duration;
      $tournament->idBankSoal = $request->banksoal;
      $tournament->tempat = $request->tempat;
      $tournament->about = $request->about;
      $tournament->namaMK = $request->namaMK;
      $tournament->jenis = $request->jenis;
      $tournament->kondisi = "belumselesai";

      $tournament->save();
      session()->flash('createTournament','Tournament Berhasil dibuat');
      return redirect("/tournamentDosen");

    }

    public function indexDosen(Request $request)
    {
      $tournament = Tournament::all();
      // $day = Carbon::now('Asia/Jakarta')->format('D');
      // $month = Carbon::now('Asia/Jakarta')->addMonth(1)->format('m');
      // $year = Carbon::now('Asia/Jakarta')->format('Y');
      $mulai = Carbon::now('Asia/Jakarta');
      $now = date("Y-m-d", strtotime(Carbon::now('Asia/Jakarta')));
      $time = Carbon::now('Asia/Jakarta')->toTimeString();




      $tournamentupcoming = DB::table('tournament')
                      ->whereDate('tanggalTournament','>=',$now)
                      //->whereTime('start',"<",$time)
                      ->get();
      $tournamentongoing = DB::table('tournament')
                      ->where('start','<=',$mulai)
                      ->where('finish','>=',$mulai)
                      ->get();
      $tournamentpast = DB::table('tournament')
                      //->whereDate('tanggalTournament','<=',$now)
                      //->whereTime('finish','>',$time)
                      ->get();

      return view('dosen.tournament',['tournament'=>$tournament ,'tournamentongoing'=>$tournamentongoing ,'tournamentpast'=> $tournamentpast ,'tournamentupcoming'=>$tournamentupcoming ]);
    }

    public function edit(Request $request,$id)
    {
      $user = session::get('login');
      $input = $request->all();
      $banksoalpg = BankSoal::all();
      $banksoal = BankSoal::all();
      $banksoalisian = BankSoal::all();
      $soalpg = SoalPG::all();
      $soalisian = SoalIsian::all();
      $alltournament = Tournament::all();
      $tournament = Tournament::find($id);
      $bankpilihan = BankSoal::find($tournament->idBankSoal);
      $date = $request->tanggalTournament;
      $matkul = MataKuliah::all();

      $newTanggalTournament = date("Y-m-d", strtotime($date));
      $newStart = date("Y-m-d H:i:s", strtotime($request->start));
      $newFinish = date("Y-m-d H:i:s", strtotime($request->finish));
      $duration = date("H:i:s", strtotime($request->duration));

      return view("dosen.tournamentDosenUpdate",['soalpg'=> $soalpg,'soalisian'=> $soalisian , 'banksoalpg'=> $banksoalpg ,'banksoalisian'=> $banksoalisian,'banksoal'=>$banksoal , 'alltournament'=>$alltournament, 'tournament'=>$tournament
    ,'matkul'=>$matkul,'bankpilihan'=>$bankpilihan]);
    }

    public function update(Request $request,$id)
    {
      $user = session::get('login');
      $input = $request->all();
      $banksoalpg = BankSoal::all();
      $banksoal = BankSoal::all();
      $banksoalisian = BankSoal::all();
      $soalpg = SoalPG::all();
      $soalisian = SoalIsian::all();
      $alltournament = Tournament::all();
      $tournament = Tournament::find($id);
      $date = $request->tanggalTournament;
      $newTanggalTournament = date("Y-m-d", strtotime($date));
      $newStart = date("Y-m-d H:i:s", strtotime($request->start));
      $newFinish = date("Y-m-d H:i:s", strtotime($request->finish));
      $duration = date("H:i:s", strtotime($request->duration));
      $matkul = MataKuliah::all();

      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/tournament';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;

        }
      }
      else {
        $gambar_name="";
      }


      // $hour =  date('h', strtotime($request->finish));
      // $minute = date('m', strtotime($request->finish));
      // $second = date('s', strtotime($request->finish));
      //
      // $start = $request->finish->subHours($hour)->toDateTimeString();  ;
      // $start = $request->finish->subMinutes($minute)->toDateTimeString();  ;
      // $start = $request->finish->subSeconds($second)->toDateTimeString();  ;
      // dd($start);

      $tournament->namaTournament = $request->namaTournament;
      $tournament->tanggalTournament = $newTanggalTournament;
      $tournament->creator = $user;
      $tournament->status = $request->status;
      $tournament->point = $request->point;
      if($gambar_name!="")
      {
        $tournament->gambar = $gambar_name;
      }

      $tournament->tempat = $request->tempat;
      $tournament->start = $newStart;
      $tournament->finish =$newFinish;
      $tournament->duration = $duration;
      $tournament->idBankSoal = $request->banksoal;
      $tournament->tempat = $request->tempat;
      $tournament->about = $request->about;
      $tournament->namaMK = $request->namaMK;


      $tournament->save();
      session()->flash('createTournament','Tournament Berhasil diperbaharui');
      return redirect("/tournamentDosen");
    }

    public function delete(Request $request,$id)
    {
      $score = Score::where('idTournament',$id)->first();
      $tournament = Tournament::find($id);
      if($score == null)
      {
        $tournament->delete();
        session()->flash('createTournament','Tournament Berhasil dihapus');
      }
      else
      {
          session()->flash('deleteTournament','Tournament gagal dihapus');
      }

      return redirect("/tournamentDosen");
    }

    public function register(Request $request)
    {
       $tournament = Tournament::all();
       $register = DB::table('tournamentteam')
            ->join('tournament', 'tournament.id', '=', 'tournamentteam.idTournament')
            ->join('mahasiswa','mahasiswa.namaMhs','=','tournamentteam.anggota1')
            ->select('mahasiswa.*','tournament.*','tournamentteam.*')
            ->get();

      $registered = DB::table('tournamentregister')
           ->join('tournament', 'tournament.id', '=', 'tournamentregister.idTournament')
           ->join('mahasiswa','mahasiswa.namaMhs','=','tournamentregister.nama')
           ->select('mahasiswa.*','tournament.*','tournamentregister.*' )
           ->get();

      return view("dosen.tournamentRegister",['register'=>$register,'registered'=>$registered,'tournament'=>$tournament]);
    }
    public function detailRegister(Request $request,$id)
    {
       $tournament= Tournament::find($id);
       $namaMK = DKBS::find($id);
    //   $nama = DKBS::where('namaMataKuliah',strtoupper($tournament->namaMK))->get();
      $nama = DB::table('mahasiswa')
      ->join('detaildkbs','detaildkbs.mahasiswa_NRP','mahasiswa.nrp')
      ->join('masterdkbs','masterdkbs.idMasterDKBS','detaildkbs.masterdkbs_idMasterDKBS')
      ->select('*','namaMhs as nama')
      ->groupby('mahasiswa.nrp')
      ->get() ;
// return $nama;
       $register = DB::table('tournamentteam')
            ->join('tournament', 'tournament.id', '=', 'tournamentteam.idTournament')
            ->join('mahasiswa','mahasiswa.nrp','=','tournamentteam.anggota1')
            ->where('tournamentteam.idTournament',$tournament->id)
            ->select('mahasiswa.*','tournament.*','tournamentteam.*')
            ->get();


      $registered = DB::table('tournamentregister')
           ->join('tournament', 'tournament.id', '=', 'tournamentregister.idTournament')
           ->join('mahasiswa','mahasiswa.namaMhs','=','tournamentregister.nama')
           ->where('tournamentregister.idTournament',$tournament->id)
           ->select('mahasiswa.*','tournament.*','tournamentregister.*' )
           ->get();

      return view("dosen.tournamentRegisterDetail",['register'=>$register,'registered'=>$registered,'tournament'=>$tournament,'nama'=>$nama]);
    }
    public function detailPeserta(Request $request,$id)
    {
      $tournament= Tournament::find($id);
      $namaMK = DKBS::find($id);
      $nama = DKBS::where('namaMataKuliah',strtoupper($tournament->namaMK))->get();

      $register = DB::table('tournamentteam')
           ->join('tournament', 'tournament.id', '=', 'tournamentteam.idTournament')
           ->join('mahasiswa','mahasiswa.nrp','=','tournamentteam.anggota1')
           ->where('tournamentteam.idTournament',$tournament->id)
           ->select('mahasiswa.*','tournament.*','tournamentteam.*')
           ->get();

      $registered = DB::table('tournamentregister')
           ->join('tournament', 'tournament.id', '=', 'tournamentregister.idTournament')
           ->join('mahasiswa','mahasiswa.nrp','=','tournamentregister.nama')
           ->where('tournamentregister.idTournament',$tournament->id)
           ->select('mahasiswa.*','tournament.*','tournamentregister.*' )
           ->get();

     $registeredteam = DB::table('tournamentregister')
          ->join('tournament', 'tournament.id', '=', 'tournamentregister.idTournament')
          ->join('tournamentteam', 'tournamentteam.id', '=', 'tournamentregister.idTeam')
          ->where('tournamentregister.idTournament',$tournament->id)
          ->select('tournamentteam.*','tournament.*','tournamentregister.*' )
          ->get();

     return view("dosen.tournamentRegisterDetailPeserta",['register'=>$register,'registered'=>$registered,'tournament'=>$tournament,'registeredteam'=>$registeredteam]);
    }

    public function insertTeam(Request $request,$id)
    {
        // return $request->idPeserta;
    $dkbs  = DB::table('mahasiswa')->where('nrp',$request->idPeserta)->first();
    $mhs = Mahasiswa::where('nrp',$dkbs->nrp)->first();
    $tour = TournamentTeam::where('idTournament',$id)
                              ->where('anggota1',$dkbs->namaMhs)
                              ->first();

      $register = TournamentRegister::where('nama',$dkbs->nrp)->where('idTournament',$id)->first();


      if($mhs!=null)
      {

          if($tour==null)
          {
            $tournamentteam = new TournamentTeam;
            $tournamentteam->namaTeam = "MCU";
            $tournamentteam->anggota1 = $dkbs->nrp;
            $tournamentteam->anggota2 = "";
            $tournamentteam->anggota3 = "";
            $tournamentteam->anggota4 = "";
            $tournamentteam->anggota5 = "";
            $tournamentteam->idTournament = $id;
            $tournamentteam->save();
            session()->flash('success','Registrasi Team Berhasil');
          }
          else
          {
            session()->flash('error','Mahasiswa Telah Terdaftar di team!!!');
          }
      }
      else {
        session()->flash('error','Data Belum Terdaftar Sebagai Mahasiswa!!!');
      }
      return redirect()->back();
    }

    public function insertRegister(Request $request)
    {

      $nrp = session::get('nrp');
      $user = session::get('login');
      $team = TournamentTeam::find($request->tournament);
      $tournament = Tournament::find($team->idTournament);
      $unik = TournamentRegister::where('nama',$team->anggota1)->where('idTournament',$team->idTournament)->first();


      if($unik == null)
      {
        $register = new TournamentRegister;
        if($tournament->jenis == "team")
        {
          $register->nama = $team->namaTeam;
        }
        else
        {
          $register->nama = $team->anggota1;
        }

        $register->idTournament = $team->idTournament;
        $register->idTeam = $team->id;
        $register->save();

        $team->status = "terdaftar";
        $team->save();
      }
      else {
          session()->flash('error','Peserta Sudah Terdaftar di Tournament!!!');
      }


      return redirect()->back();
    }
    public function scoreboard(Request $request,$id)
    {
        $tournament = Tournament::find($id);
        $banksoal= BankSoal::where('id',$tournament->idBankSoal)->first();
        $banyaksoal = $banksoal->jumlahSoal;
        $nilai = Score::where('idTournament',$tournament->id)
                       ->orderBy('totalSolve','desc')
                       ->get();


        return view('dosen.tournamentScoreboardDosen',['tournament'=> $tournament ,'nilai'=>$nilai,'banyaksoal'=>$banyaksoal,'banksoal'=>$banksoal]);
    }

    public function exam(Request $request,$id)
    {
      $user = session::get('login');

      $mulai = Carbon::now('Asia/Jakarta');
      $tournament = Tournament::find($id);
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $totalIsian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->get();
      $totalPg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->get();
      $soalisian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalisian');
      $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalpg');
      $gabungan = $soalpg->concat($soalisian);
      $gabungan->all();


      $startTime = Carbon::parse($tournament->start);
      $finishTime = Carbon::parse($tournament->finish);
      $now = date("Y-m-d H:i:s", strtotime(Carbon::now('Asia/Jakarta')));
      $sekarang = Carbon::parse($now);


      if($sekarang > $finishTime)
      {
        session(['expiredTournament' => "expired"]);
      }

      $totalDuration =$finishTime->diffInSeconds($sekarang);
      $jumlah_soal_pg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->count();
      $jumlah_soal_isian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->count();
      // $index = SoalIsian::find($request->idsoalisian);
      // $indexjawab = JawabanIsian::where('idsoalisian',$request->idsoalisian)->first();
      // $idMhs = JawabanIsian::where('idMhs',$idMahasiswa->id)->first();
      // $idJawabanIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
      //                 ->where('idsoalisian',$request->idsoalisian)
      //                 ->where('idTournament',$tournament->id)
      //                 ->where('idBankSoal',$tournament->idBankSoal)
      //                 ->first();
      // $idJawabanIsian2 = JawabanIsian::where('idMhs',$idMahasiswa->id)
      //                 ->where('idTournament',$tournament->id)
      //                 ->where('idBankSoal',$tournament->idBankSoal)
      //                 ->get();
      //
      // $jawabanDetail = JawabanIsian::where('idMhs',$idMahasiswa->id)
      //                 ->where('idTournament',$tournament->id)
      //                 ->where('idBankSoal',$tournament->idBankSoal)
      //                 ->get();
      //

      // $indexpg = SoalPG::find($request->idsoalpg);
      // $indexjawabpg = JawabanPG::where('idsoalpg',$request->idsoalpg)->first();
      // $idMhspg = JawabanPG::where('idMhs',$idMahasiswa->id)->first();
      // $idJawabanPG = JawabanPG::where('idMhs',$idMahasiswa->id)
      //                 ->where('idsoalpg',$request->idsoalpg)
      //                 ->where('idTournament',$tournament->id)
      //                 ->where('idBankSoal',$tournament->idBankSoal)
      //                 ->first();
      // $idJawabanPG2 = JawabanPG::where('idMhs',$idMahasiswa->id)
      //                 ->where('idTournament',$tournament->id)
      //                 ->where('idBankSoal',$tournament->idBankSoal)
      //                 ->get();
      //
      // $jawabanPGDetail = JawabanPG::where('idMhs',$idMahasiswa->id)
      //                 ->where('idTournament',$tournament->id)
      //                 ->where('idBankSoal',$tournament->idBankSoal)
      //                 ->get();



      return view('dosen.tournamentExamDosen',['tournament'=> $tournament ,'soalisian'=>$soalisian,'gabungan' => $gabungan , 'soalpg'=>$soalpg ,
      'banksoal'=>$banksoal,'jumlah_soal_isian'=>$jumlah_soal_isian,'totalDuration'=>$totalDuration,'totalPg' =>$totalPg ,'totalIsian'=>$totalIsian  ]);
    }

    public function indexCheck(Request $request)
    {
      $tour = Tournament::all();
      $now = date("Y-m-d", strtotime(Carbon::now('Asia/Jakarta')));
      $time = Carbon::now('Asia/Jakarta')->toTimeString();

      $tournament = DB::table('tournament')
            ->join('banksoal', 'banksoal.id', '=', 'tournament.idBankSoal')
            ->where('tipeSoal','isiancheck')
            ->orWhere('tipeSoal','gabungancheck')
            ->select('banksoal.*','tournament.*')
            ->get();


      $tournamentupcoming = DB::table('tournament')
                      ->whereDate('tanggalTournament','>=',$now)
                      //->whereTime('start',"<",$time)
                      ->get();

      $tournamentongoing = DB::table('tournament')
                      ->whereDate('tanggalTournament','>=',$now)
                      ->whereDate('tanggalTournament','<=',$now)
                      ->whereTime('start','<=',$time)
                      ->whereTime('finish','>=',$time)
                      ->get();

      $tournamentpast = DB::table('tournament')
                      ->whereDate('tanggalTournament','<=',$now)
                      //->whereTime('finish','>',$time)
                      ->get();

      return view('dosen.tournamentCheck',['tournament'=>$tournament ,'tournamentongoing'=>$tournamentongoing ,'tournamentpast'=> $tournamentpast ,'tournamentupcoming'=>$tournamentupcoming ]);
    }
    public function indexPeserta(Request $request,$id)
    {
      $peserta = TournamentRegister::where('idTournament',$id)->get();
      $tournament = Tournament::find($id);


      return view('dosen.tournamentPeserta',['peserta'=>$peserta,'tournament'=>$tournament]);
    }

    public function indexJawabanPeserta(Request $request,$id)
    {
      $peserta = TournamentRegister::find($id);
      $team = TournamentTeam::find($peserta->idTeam);
      $tournament = Tournament::where('id',$peserta->idTournament)->first();
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $idMhs = Mahasiswa::where('nrp',$team->anggota1)->first();
      $jawabandetail = JawabanIsian::where('idMhs',$idMhs->id)->where('idTournament',$peserta->idTournament)->get();
      $isiancek = DB::table('jawabanisian')
            ->join('mahasiswa', 'mahasiswa.id', '=', 'jawabanisian.idMhs')
            ->join('tournament', 'tournament.id', '=', 'jawabanisian.idTournament')
            ->join('soalisian', 'soalisian.id', '=', 'jawabanisian.idsoalisian')
            ->where('idMhs',$idMhs->id)
            ->where('idTournament',$peserta->idTournament)
            ->select('mahasiswa.*','tournament.*','soalisian.*','jawabanisian.*')
            ->get();

      $score = Score::where('namaPeserta',$peserta->nama)
                 ->where('idTournament',$tournament->id)
                 ->orderBy('totalSolve','desc')
                 ->first();


      return view('dosen.tournamentJawabanPeserta',['isiancek'=>$isiancek,'tournament'=>$tournament,'peserta'=>$peserta,'banksoal'=>$banksoal,'score'=>$score]);
    }

    public function response(Request $request,$id)
   {
     $jawaban = JawabanIsian::find($id);
     if($jawaban->jawabanGambar == null)
     {
        return redirect()->back();
     }
     $path = "images/jawaban/".$jawaban->jawabanGambar;
     return response()->file($path);
   }

   public function show(Request $request,$id)
  {
      $jawaban = JawabanIsian::find($id);
      if($jawaban->jawabanGambar == null)
      {
         return redirect()->back();
      }
      $path = "images/jawaban/".$jawaban->jawabanGambar;
      return response()->file($path);
  }


   public function download(Request $request,$id)
   {
     $jawaban = JawabanIsian::find($id);
     if($jawaban->jawabanGambar == null)
     {
        return redirect()->back();
     }
     $path = "images/jawaban/".$jawaban->jawabanGambar;
     return response()->download($path);
   }

    public function keterangan(Request $request,$id,$id2)
    {
       $isiancek = JawabanIsian::find($id);
	     $peserta = $id2;

       return view('dosen.tournamentKeteranganJawabanPeserta',['isiancek'=>$isiancek,'peserta'=>$peserta]);
    }
    public function keteranganUpdate(Request $request,$id,$id2)
    {
      $isiancek = JawabanIsian::find($id);
      $isiancek->keterangan = $request->keterangan;
      $isiancek->save();


	  $peserta = TournamentRegister::find($id2);
      $team = TournamentTeam::find($peserta->idTeam);
      $tournament = Tournament::where('id',$peserta->idTournament)->first();
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $idMhs = Mahasiswa::where('nrp',$team->anggota1)->first();
      $jawabandetail = JawabanIsian::where('idMhs',$idMhs->id)->where('idTournament',$peserta->idTournament)->get();
      $isiancek = DB::table('jawabanisian')
            ->join('mahasiswa', 'mahasiswa.id', '=', 'jawabanisian.idMhs')
            ->join('tournament', 'tournament.id', '=', 'jawabanisian.idTournament')
            ->join('soalisian', 'soalisian.id', '=', 'jawabanisian.idsoalisian')
            ->where('idMhs',$idMhs->id)
            ->where('idTournament',$peserta->idTournament)
            ->select('mahasiswa.*','tournament.*','soalisian.*','jawabanisian.*')
            ->get();

      $score = Score::where('namaPeserta',$peserta->nama)
                 ->where('idTournament',$tournament->id)
                 ->orderBy('totalSolve','desc')
                 ->first();


      return view('dosen.tournamentJawabanPeserta',['isiancek'=>$isiancek,'tournament'=>$tournament,'peserta'=>$peserta,'banksoal'=>$banksoal,'score'=>$score]);
    }


    public function judgeTrue(Request $request,$id)
    {
      $jawaban = JawabanIsian::find($id);
      $jawaban->status = "benar";
      $jawaban->save();
      return redirect()->back();
    }

    public function judgeFalse(Request $request,$id)
    {
      $jawaban = JawabanIsian::find($id);
      $jawaban->status = "salah";
      $jawaban->save();
        return redirect()->back();
    }

    public function score(Request $request,$id)
    {
       $count = count(Input::get('bobots'));
       $idJawaban        =   Input::get('idJawaban');
       $bobots        =   Input::get('bobots');

       //loop through and save data
       for($i = 0; $i < $count; ++$i) {

           $jwb = JawabanIsian::find($idJawaban[$i]);
           $jwb->bobot      = $bobots[$i] ;
           $jwb->save();
       }


      $tot = $request->bobots;
      $hasil= 0;
      foreach ($tot as $t) {
        $hasil+= $t;
      }
      if($hasil>100)
      {
        session()->flash('error','Nilai tidak boleh lebih dari 100');
        return redirect()->back();
      }
      elseif ($hasil<0)
      {
        session()->flash('error','Nilai tidak boleh kurang dari 0');
        return redirect()->back();
      }
      elseif($hasil==null)
      {
        session()->flash('error','Kolom nilai harus diisi terlebih dahulu');
        return redirect()->back();
      }

      $user = TournamentRegister::find($id);
      $team = TournamentTeam::find($user->idTeam);
      $idMahasiswa = Mahasiswa::where('nrp',$team->anggota1)->first();
      $mulai = Carbon::now('Asia/Jakarta');
      $tournament = Tournament::find($user->idTournament);
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $soalisian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->paginate(1);
      $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1);
      $startTime = Carbon::parse($tournament->start);
      $finishTime = Carbon::parse($tournament->finish);
      $totalDuration = $finishTime->diffInSeconds($startTime);



      $jumlah_soal_isian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->count();
      $index = SoalIsian::find($request->idsoalisian);
      $jawaban = JawabanIsian::where('idTournament',$tournament->id);
      $indexjawab = JawabanIsian::where('idsoalisian',$request->idsoalisian)->first();
      $idJawabanIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idsoalisian',$request->idsoalisian)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->first();
      $jawabanDetail = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $scoreboard = JawabanIsian::
                      where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->groupBy('idMhs')
                      ->get();
      $jawab = JawabanIsian::
                      where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jumlah_soal_pg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->count();
      $indexpg = SoalPG::find($request->idsoalpg);
      $indexjawabpg = JawabanPG::where('idsoalpg',$request->idsoalpg)->first();
      $idMhspg = JawabanPG::where('idMhs',$idMahasiswa->id)->first();
      $idJawabanPG = JawabanPG::where('idMhs',$idMahasiswa->id)
                      ->where('idsoalpg',$request->idsoalpg)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->first();
      $idJawabanPG2 = JawabanPG::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanPGDetail = JawabanPG::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $scoreboardpg = JawabanPG::where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->groupBy('idMhs')
                      ->get();
      $jawabpg = JawabanPG::where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

     //  $registered = DB::table('tournamentregister')
     //       ->join('tournament', 'tournament.id', '=', 'tournamentregister.idTournament')
     //       ->join('mahasiswa','mahasiswa.namaMhs','=','tournamentregister.nama')
     //       ->where('tournamentregister.idTournament',$tournament->id)
     //       ->select('mahasiswa.*','tournament.*','tournamentregister.*' )
     //       ->get();
     //
     // $registeredteam = DB::table('tournamentregister')
     //      ->join('tournament', 'tournament.id', '=', 'tournamentregister.idTournament')
     //      ->join('tournamentteam', 'tournamentteam.id', '=', 'tournamentregister.idTeam')
     //      ->where('tournamentregister.idTournament',$tournament->id)
     //      ->select('tournamentteam.*','tournament.*','tournamentregister.*' )
     //      ->get();

    if($jawabanPGDetail ==null)
    {
      return redirect()->back();
    }
    if( $scoreboardpg ==null)
    {
      return redirect()->back();
    }

      $idbanksoal= BankSoal::where('id',$tournament->idBankSoal)->first();
      $banyaksoal = $idbanksoal->jumlahSoal;

      if($banksoal->tipeSoal == "isian")
      {

          $namaMahasiswa = Mahasiswa::where('id',$scoreboard->pluck('idMhs'))->get();
          $idMahasiswa = $scoreboard->pluck('idMhs');
          $totalSolve = $jawabanDetail->where('status','benar')->pluck('status')->count();

      }
      else if($banksoal->tipeSoal == "pg")
      {

          $namaMahasiswaPG = Mahasiswa::where('id',$scoreboardpg->pluck('idMhs'))->get();
          $idMahasiswaPG = $scoreboardpg->pluck('idMhs');
          $totalSolvePG = $jawabanPGDetail->where('status','benar')->pluck('status')->count();

      }
      else if($banksoal->tipeSoal == "gabungan")
      {
        $namaMahasiswa = Mahasiswa::where('id',$scoreboard->pluck('idMhs'))->get();
        $idMahasiswa = $scoreboard->pluck('idMhs');
        $totalSolve = $jawabanDetail->where('status','benar')->pluck('status')->count();
        $namaMahasiswaPG = Mahasiswa::where('id',$scoreboardpg->pluck('idMhs'))->get();
        $idMahasiswaPG = $scoreboardpg->pluck('idMhs');
        $totalSolvePG = $jawabanPGDetail->where('status','benar')->pluck('status')->count();
        $totalSolveGabungan = $totalSolvePG +$totalSolve;
      }
      else if($banksoal->tipeSoal == "isiancheck")
      {
        $namaMahasiswa = Mahasiswa::where('id',$scoreboard->pluck('idMhs'))->get();
        $idMahasiswa = $scoreboard->pluck('idMhs');
        $totalSolve = $jawabanDetail->where('status','benar')->pluck('status')->count();
      }
      else if($banksoal->tipeSoal == "gabungancheck")
      {
        $namaMahasiswa = Mahasiswa::where('id',$scoreboard->pluck('idMhs'))->get();
        $idMahasiswa = $scoreboard->pluck('idMhs');
        $totalSolve = $jawabanDetail->where('status','benar')->pluck('status')->count();
        $namaMahasiswaPG = Mahasiswa::where('id',$scoreboardpg->pluck('idMhs'))->get();
        $idMahasiswaPG = $scoreboardpg->pluck('idMhs');
        $totalSolvePG = $jawabanPGDetail->where('status','benar')->pluck('status')->count();
        $totalSolveGabungan = $totalSolvePG +$totalSolve;
      }



     $ss = Score::where('namaPeserta',$user->nama)
                ->where('idTournament',$tournament->id)
                ->orderBy('totalSolve','desc')
                ->first();


     if($ss == null )
     {
       // if($banksoal->tipeSoal == "pg")
       // {
       //   $score = new Score;
       //   $score->namaPeserta = $user;
       //   $score->totalSolve = $totalSolvePG;
       //   $score->idTournament = $tournament->id;
       //   $score->save();
       //
       // }
       // elseif($banksoal->tipeSoal == "isian")
       // {
       //   $score = new Score;
       //   $score->namaPeserta = $user;
       //   $score->totalSolve = $totalSolve;
       //   $score->idTournament = $tournament->id;
       //   $score->save();
       //
       // }
       // elseif ($banksoal->tipeSoal == "gabungan")
       // {
       //   $score = new Score;
       //   $score->namaPeserta = $user;
       //   $score->totalSolve = $totalSolveGabungan;
       //   $score->idTournament = $tournament->id;
       //   $score->save();
       // }
       if($banksoal->tipeSoal == "isiancheck")
       {
         $score = new Score;
         $score->namaPeserta = $user->nama;
         $score->totalSolve = $hasil;
         $score->idTournament = $tournament->id;
         $score->save();
       }
       elseif($banksoal->tipeSoal == "gabungancheck")
       {

         $score = new Score;
         $score->namaPeserta = $user->nama;
         $score->totalSolve = $score->nilaiPG +  ( $hasil * $banksoal->persenIsian/100);
         $score->nilaiIsian = $hasil;
         $score->idTournament = $tournament->id;
         $score->save();
       }

     }
     else
     {
       // if($banksoal->tipeSoal == "pg")
       // {
       //   $ss->namaPeserta = $user;
       //   $ss->totalSolve = $totalSolvePG;
       //   $ss->idTournament = $tournament->id;
       //   $ss->save();
       // }
       // elseif($banksoal->tipeSoal == "isian")
       // {
       //   $ss->namaPeserta = $user;
       //   $ss->totalSolve = $totalSolve;
       //   $ss->idTournament = $tournament->id;
       //   $ss->save();
       // }
       if($banksoal->tipeSoal == "isiancheck")
       {

         $ss->namaPeserta = $user->nama;
         $ss->totalSolve = $hasil;
         $ss->idTournament = $tournament->id;
         $ss->save();
       }
       elseif($banksoal->tipeSoal == "gabungancheck")
       {
         $ss->namaPeserta = $user->nama;
         $ss->totalSolve = $ss->nilaiPG +  ( $hasil * $banksoal->persenIsian/100);
         $ss->nilaiIsian = $hasil;
         $ss->idTournament = $tournament->id;
         $ss->save();
       }
     }

     $nilai = Score::where('idTournament',$tournament->id)
                     ->orderBy('totalSolve','desc')
                     ->orderBy('updated_at','asc')
                     ->get();
      return redirect('/tournament/scoreDosen/'.$tournament->id);
    }

    public function scoreLeaderboard(Request $request,$id)
    {
      $nilai = Score::where('idTournament',$request->idTournament)
                      ->orderBy('totalSolve','desc')
                      ->orderBy('updated_at','asc')
                      ->take(3)
                      ->get();
      $tournament = Tournament::find($request->idTournament);
      if ($nilai== null)
      {
        session()->flash('error','Point tidak berhasil ditambahkan ke leaderboard');
        return redirect()->back();
      }
      elseif($tournament->jenis == "team")
      {
        if ($tournament->kondisi == "belumselesai")
        {
          if(count($nilai)==0)
          {
              session()->flash('error','Tidak ada Peserta');
          }
          else if (count($nilai)==1)
          {
            //JUARA 1
            $registerpeserta1 = TournamentRegister::where('nama',$nilai[0]->namaPeserta)->where('idTournament',$tournament->id )->first();
            $team = TournamentTeam::where('namaTeam',$registerpeserta1->nama)->where('idTournament',$tournament->id)->first();

            // $team = TournamentTeam::where('namaTeam',$nilai[0]->namaPeserta)->first();
            //$anggota1 = Leaderboard::where('nama',$team->anggota1)->first();
            // $anggota1->emas += 1;
            // $anggota1->total = $anggota1->emas*5 + $anggota1->perak*3 + $anggota1->perunggu*1 ;
            // $anggota1->save();

            if($team->anggota1 != null)
            {
              $anggota1 = Leaderboard::where('nrp',$team->anggota1)->first();
              $anggota1->emas += 1;
              $anggota1->total = $anggota1->emas*5 + $anggota1->perak*3 + $anggota1->perunggu*1 ;
              $anggota1->save();
            }

            if($team->anggota2 != null)
            {
              $anggota2 = Leaderboard::where('nrp',$team->anggota2)->first();
              $anggota2->emas += 1;
              $anggota2->total = $anggota2->emas*5 + $anggota2->perak*3 + $anggota2->perunggu*1 ;
              $anggota2->save();
            }

            if($team->anggota3 != null)
            {
              $anggota3 = Leaderboard::where('nrp',$team->anggota3)->first();
              $anggota3->emas += 1;
              $anggota3->total = $anggota3->emas*5 + $anggota3->perak*3 + $anggota3->perunggu*1 ;
              $anggota3->save();
            }
            if($team->anggota4 != null)
            {
              $anggota4 = Leaderboard::where('nrp',$team->anggota4)->first();
              $anggota4->emas += 1;
              $anggota4->total = $anggota4->emas*5 + $anggota4->perak*3 + $anggota4->perunggu*1 ;
              $anggota4->save();
            }
            if($team->anggota5 != null)
            {
              $anggota5 = Leaderboard::where('nrp',$team->anggota5)->first();
              $anggota5->emas += 1;
              $anggota5->total = $anggota5->emas*5 + $anggota5->perak*3 + $anggota5->perunggu*1 ;
              $anggota5->save();
            }

             session()->flash('success','Point berhasil ditambahkan ke leaderboard');
          }
          elseif (count($nilai)==2)
          {
            $registerpeserta1 = TournamentRegister::where('nama',$nilai[0]->namaPeserta)->where('idTournament',$tournament->id )->first();
            $registerpeserta2 = TournamentRegister::where('nama',$nilai[1]->namaPeserta)->where('idTournament',$tournament->id )->first();
            $team = TournamentTeam::where('namaTeam',$registerpeserta1->nama)->where('idTournament',$tournament->id)->first();
            $team2 = TournamentTeam::where('namaTeam',$registerpeserta2->nama)->where('idTournament',$tournament->id)->first();
            if($team->anggota1 != null)
            {
              $anggota1 = Leaderboard::where('nrp',$team->anggota1)->first();
              $anggota1->emas += 1;
              $anggota1->total = $anggota1->emas*5 + $anggota1->perak*3 + $anggota1->perunggu*1 ;
              $anggota1->save();
            }

            if($team->anggota2 != null)
            {
              $anggota2 = Leaderboard::where('nrp',$team->anggota2)->first();
              $anggota2->emas += 1;
              $anggota2->total = $anggota2->emas*5 + $anggota2->perak*3 + $anggota2->perunggu*1 ;
              $anggota2->save();
            }

            if($team->anggota3 != null)
            {
              $anggota3 = Leaderboard::where('nrp',$team->anggota3)->first();
              $anggota3->emas += 1;
              $anggota3->total = $anggota3->emas*5 + $anggota3->perak*3 + $anggota3->perunggu*1 ;
              $anggota3->save();
            }
            if($team->anggota4 != null)
            {
              $anggota4 = Leaderboard::where('nrp',$team->anggota4)->first();
              $anggota4->emas += 1;
              $anggota4->total = $anggota4->emas*5 + $anggota4->perak*3 + $anggota4->perunggu*1 ;
              $anggota4->save();
            }
            if($team->anggota5 != null)
            {
              $anggota5 = Leaderboard::where('nrp',$team->anggota5)->first();
              $anggota5->emas += 1;
              $anggota5->total = $anggota5->emas*5 + $anggota5->perak*3 + $anggota5->perunggu*1 ;
              $anggota5->save();
            }

            //team2
            if($team2->anggota1 != null)
            {
              $anggota11 = Leaderboard::where('nrp',$team2->anggota1)->first();
              $anggota11->perak += 1;
              $anggota11->total = $anggota11->emas*5 + $anggota11->perak*3 + $anggota11->perunggu*1 ;
              $anggota11->save();
            }

            if($team2->anggota2 != null)
            {
              $anggota22 = Leaderboard::where('nrp',$team2->anggota2)->first();
              $anggota22->perak += 1;
              $anggota22->total = $anggota22->emas*5 + $anggota22->perak*3 + $anggota22->perunggu*1 ;
              $anggota22->save();
            }

            if($team2->anggota3 != null)
            {
              $anggota33 = Leaderboard::where('nrp',$team2->anggota3)->first();
              $anggota33->perak += 1;
              $anggota33->total = $anggota33->emas*5 + $anggota33->perak*3 + $anggota33->perunggu*1 ;
              $anggota33->save();
            }
            if($team2->anggota4 != null)
            {
              $anggota44 = Leaderboard::where('nrp',$team2->anggota4)->first();
              $anggota44->perak += 1;
              $anggota44->total = $anggota44->emas*5 + $anggota44->perak*3 + $anggota44->perunggu*1 ;
              $anggota44->save();
            }
            if($team2->anggota5 != null)
            {
              $anggota55 = Leaderboard::where('nrp',$team2->anggota5)->first();
              $anggota55->perak += 1;
              $anggota55->total = $anggota55->emas*5 + $anggota55->perak*3 + $anggota55->perunggu*1 ;
              $anggota55->save();
            }


             session()->flash('success','Point berhasil ditambahkan ke leaderboard');
          }
          else
          {
            $registerpeserta1 = TournamentRegister::where('nama',$nilai[0]->namaPeserta)->where('idTournament',$tournament->id )->first();
            $registerpeserta2 = TournamentRegister::where('nama',$nilai[1]->namaPeserta)->where('idTournament',$tournament->id )->first();
            $registerpeserta3 = TournamentRegister::where('nama',$nilai[2]->namaPeserta)->where('idTournament',$tournament->id )->first();

            $team = TournamentTeam::where('namaTeam',$registerpeserta1->nama)->where('idTournament',$tournament->id)->first();
            $team2 = TournamentTeam::where('namaTeam',$registerpeserta2->nama)->where('idTournament',$tournament->id)->first();
            $team3 = TournamentTeam::where('namaTeam',$registerpeserta3->nama)->where('idTournament',$tournament->id)->first();
            if($team->anggota1 != null)
            {
              $anggota1 = Leaderboard::where('nrp',$team->anggota1)->first();
              $anggota1->emas += 1;
              $anggota1->total = $anggota1->emas*5 + $anggota1->perak*3 + $anggota1->perunggu*1 ;
              $anggota1->save();
            }

            if($team->anggota2 != null)
            {
              $anggota2 = Leaderboard::where('nrp',$team->anggota2)->first();
              $anggota2->emas += 1;
              $anggota2->total = $anggota2->emas*5 + $anggota2->perak*3 + $anggota2->perunggu*1 ;
              $anggota2->save();
            }

            if($team->anggota3 != null)
            {
              $anggota3 = Leaderboard::where('nrp',$team->anggota3)->first();
              $anggota3->emas += 1;
              $anggota3->total = $anggota3->emas*5 + $anggota3->perak*3 + $anggota3->perunggu*1 ;
              $anggota3->save();
            }
            if($team->anggota4 != null)
            {
              $anggota4 = Leaderboard::where('nrp',$team->anggota4)->first();
              $anggota4->emas += 1;
              $anggota4->total = $anggota4->emas*5 + $anggota4->perak*3 + $anggota4->perunggu*1 ;
              $anggota4->save();
            }
            if($team->anggota5 != null)
            {
              $anggota5 = Leaderboard::where('nrp',$team->anggota5)->first();
              $anggota5->emas += 1;
              $anggota5->total = $anggota5->emas*5 + $anggota5->perak*3 + $anggota5->perunggu*1 ;
              $anggota5->save();
            }

            //team2
            if($team2->anggota1 != null)
            {
              $anggota11 = Leaderboard::where('nrp',$team2->anggota1)->first();
              $anggota11->perak += 1;
              $anggota11->total = $anggota11->emas*5 + $anggota11->perak*3 + $anggota11->perunggu*1 ;
              $anggota11->save();
            }

            if($team2->anggota2 != null)
            {
              $anggota22 = Leaderboard::where('nrp',$team2->anggota2)->first();
              $anggota22->perak += 1;
              $anggota22->total = $anggota22->emas*5 + $anggota22->perak*3 + $anggota22->perunggu*1 ;
              $anggota22->save();
            }

            if($team2->anggota3 != null)
            {
              $anggota33 = Leaderboard::where('nrp',$team2->anggota3)->first();
              $anggota33->perak += 1;
              $anggota33->total = $anggota33->emas*5 + $anggota33->perak*3 + $anggota33->perunggu*1 ;
              $anggota33->save();
            }
            if($team2->anggota4 != null)
            {
              $anggota44 = Leaderboard::where('nrp',$team2->anggota4)->first();
              $anggota44->perak += 1;
              $anggota44->total = $anggota44->emas*5 + $anggota44->perak*3 + $anggota44->perunggu*1 ;
              $anggota44->save();
            }
            if($team2->anggota5 != null)
            {
              $anggota55 = Leaderboard::where('nrp',$team2->anggota5)->first();
              $anggota55->perak += 1;
              $anggota55->total = $anggota55->emas*5 + $anggota55->perak*3 + $anggota55->perunggu*1 ;
              $anggota55->save();
            }

          //team3
          if($team3->anggota1 != null)
          {
            $anggota111 = Leaderboard::where('nrp',$team3->anggota1)->first();
            $anggota111->perunggu += 1;
            $anggota111->total = $anggota111->emas*5 + $anggota111->perak*3 + $anggota111->perunggu*1 ;
            $anggota111->save();
          }

          if($team3->anggota2 != null)
          {
            $anggota222 = Leaderboard::where('nrp',$team3->anggota2)->first();
            $anggota222->perunggu += 1;
            $anggota222->total = $anggota222->emas*5 + $anggota222->perak*3 + $anggota222->perunggu*1 ;
            $anggota222->save();
          }

          if($team3->anggota3 != null)
          {
            $anggota333 = Leaderboard::where('nrp',$team3->anggota3)->first();
            $anggota333->perunggu += 1;
            $anggota333->total = $anggota333->emas*5 + $anggota333->perak*3 + $anggota333->perunggu*1 ;
            $anggota333->save();
          }
          if($team3->anggota4 != null)
          {
            $anggota444 = Leaderboard::where('nrp',$team3->anggota4)->first();
            $anggota444->perunggu += 1;
            $anggota444->total = $anggota444->emas*5 + $anggota444->perak*3 + $anggota444->perunggu*1 ;
            $anggota444->save();
          }
          if($team3->anggota5 != null)
          {
            $anggota555 = Leaderboard::where('nrp',$team3->anggota5)->first();
            $anggota555->perunggu += 1;
            $anggota555->total = $anggota555->emas*5 + $anggota555->perak*3 + $anggota555->perunggu*1 ;
            $anggota555->save();
          }

            session()->flash('success','Point berhasil ditambahkan ke leaderboard');
          }
          $tournament->kondisi = "selesai";
          $tournament->save();
        }
        else
        {
          session()->flash('error','Point sudah ditambahkan ke Leaderboard sebelumnya');
          return redirect()->back();
        }
      }
      elseif($tournament->jenis == "solo")
      {
        if ($tournament->kondisi == "belumselesai")
        {
          if(count($nilai)==0)
          {
              session()->flash('error','Tidak ada Peserta');
          }
          elseif (count($nilai)==1)
          {
            //JUARA 1
            $juara1 = Leaderboard::where('nrp',$nilai[0]->namaPeserta)->first();
            $juara1->emas += 1;
            $juara1->total = $juara1->emas*5 + $juara1->perak*3 + $juara1->perunggu*1 ;
            $juara1->save();
            session()->flash('success','Point berhasil ditambahkan ke leaderboard');
            $tournament->kondisi = "selesai";
            $tournament->save();
          }
          elseif (count($nilai)==2)
          {
            //JUARA 1
            $juara1 = Leaderboard::where('nrp',$nilai[0]->namaPeserta)->first();
            $juara1->emas += 1;
            $juara1->total = $juara1->emas*5 + $juara1->perak*3 + $juara1->perunggu*1 ;
            $juara1->save();

            //JUARA 2
            $juara2 = Leaderboard::where('nrp',$nilai[1]->namaPeserta)->first();
            $juara2->perak += 1;
            $juara2->total = $juara2->emas*5 + $juara2->perak*3 + $juara2->perunggu*1 ;
            $juara2->save();
             session()->flash('success','Point berhasil ditambahkan ke leaderboard');
             $tournament->kondisi = "selesai";
             $tournament->save();
          }
          else
          {
            //JUARA 1
            $juara1 = Leaderboard::where('nrp',$nilai[0]->namaPeserta)->first();
            $juara1->emas += 1;
            $juara1->total = $juara1->emas*5 + $juara1->perak*3 + $juara1->perunggu*1 ;
            $juara1->save();

            //JUARA 2
            $juara2 = Leaderboard::where('nrp',$nilai[1]->namaPeserta)->first();
            $juara2->perak += 1;
            $juara2->total = $juara2->emas*5 + $juara2->perak*3 + $juara2->perunggu*1 ;
            $juara2->save();

            //JUARA 3
            $juara3 = Leaderboard::where('nrp',$nilai[2]->namaPeserta)->first();
            $juara3->perunggu += 1;
            $juara3->total = $juara3->emas*5 + $juara3->perak*3 + $juara3->perunggu*1 ;
            $juara3->save();
            session()->flash('success','Point berhasil ditambahkan ke leaderboard');
            $tournament->kondisi = "selesai";
            $tournament->save();
          }
        }
        else
        {
          session()->flash('error','Point sudah ditambahkan ke Leaderboard sebelumnya');
          return redirect()->back();
        }
      }
      else
      {
        session()->flash('error','Point gagal ditambahkan');
      }
      return redirect()->back();
    }

}
