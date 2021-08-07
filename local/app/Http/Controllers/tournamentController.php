<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use URL;
use Carbon\Carbon;
use Session;



use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\Tournament;
use App\TournamentTeam;
use App\TournamentRegister;
use App\SoalIsian;
use App\SoalPG;
use App\BankSoal;
use App\JawabanIsian;
use App\JawabanPG;
use App\Score;


class tournamentController extends Controller
{
    public function index(Request $request)
    {
      session()->forget('terminateTournament');
      $tournament = Tournament::all();
      // $day = Carbon::now('Asia/Jakarta')->format('D');
      // $month = Carbon::now('Asia/Jakarta')->addMonth(1)->format('m');
      // $year = Carbon::now('Asia/Jakarta')->format('Y');
      $now = date("Y-m-d", strtotime(Carbon::now('Asia/Jakarta')));
      $mulai = Carbon::now('Asia/Jakarta');
      $time = Carbon::now('Asia/Jakarta')->toTimeString();

      $startTime = Carbon::parse($request->start);
      $finishTime = Carbon::parse($request->finish);


      $tournamentupcoming = DB::table('tournament')
                      ->whereDate('tanggalTournament','>=',$now)
                      // ->whereTime('start','<=',$time)
                      // ->whereTime('finish','>=',$time)
                      ->get();

      $tournamentongoing = DB::table('tournament')
                      ->where('start','<=',$mulai)
                      ->where('finish','>=',$mulai)
                      // ->WhereTime('start','<=',$time)
                      // ->WhereTime('finish','>=',$time)
                      ->get();

      // $tournamentongoing = DB::table('tournament')
      //                 ->whereDate('start','<=',$now)
      //                 ->whereDate('finish','>=',$now)
      //                 ->WhereTime('start','<=',$time)
      //                 ->WhereTime('finish','>=',$time)
      //                 ->get();

      $tournamentpast = DB::table('tournament')
                      ->whereDate('tanggalTournament','<=',$now)
                      ->get();

      return view('/tournament',['tournament'=>$tournament ,'tournamentongoing'=>$tournamentongoing ,'tournamentpast'=> $tournamentpast ,'tournamentupcoming'=>$tournamentupcoming ]);
    }

    public function form($id)
    {
      $tournament = Tournament::find($id);
      $mahasiswa = Mahasiswa::all();


      return view('/tournamentForm',['tournament'=>$tournament,'mahasiswa'=>$mahasiswa]);

    }
    public function create(Request $request)
    {

      $user = session::get('nrp');
      $tournament = Tournament::find($request->idTournament);

      if($tournament->jenis == "team")
      {
         if($request->namaTeam == null)
         {
           session()->flash('unik','Nama Team tidak boleh kosong');
            return redirect()->back();
         }
      }


      $tour = TournamentTeam::where('idTournament',$request->idTournament)
                              ->where('anggota1',$user)
                              ->first();



      if( $request->namaAnggota2 != null || $request->namaAnggota3 != "" )
      {
        if($request->namaAnggota2 == $request->namaAnggota3 || $request->namaAnggota2 == $request->namaAnggota4 || $request->namaAnggota2 == $request->namaAnggota5 ||  $request->namaAnggota2 == $request->namaAnggota1)
        {
          session()->flash('unik','Peserta harus unik');
          return redirect()->back();
        }
      }

      if(  $request->namaAnggota3 != null || $request->namaAnggota3 !="" )
      {
        if($request->namaAnggota3 == $request->namaAnggota2 || $request->namaAnggota3 == $request->namaAnggota4 || $request->namaAnggota3 == $request->namaAnggota5 ||  $request->namaAnggota3 == $request->namaAnggota1 )
        {
          session()->flash('unik','Peserta harus unik');
          return redirect()->back();
        }
      }

      if($request->namaAnggota4 != null || $request->namaAnggota4 !="")
      {
        if($request->namaAnggota4 == $request->namaAnggota2 || $request->namaAnggota4 == $request->namaAnggota3 || $request->namaAnggota4 == $request->namaAnggota5 ||  $request->namaAnggota4 == $request->namaAnggota1 )
        {
          session()->flash('unik','Peserta harus unik');
          return redirect()->back();
        }
      }

      if($request->namaAnggota5 != null || $request->namaAnggota5 !="")
      {
        if($request->namaAnggota5 == $request->namaAnggota2 || $request->namaAnggota5 == $request->namaAnggota4 || $request->namaAnggota5 == $request->namaAnggota3  ||  $request->namaAnggota5 == $request->namaAnggota1 )
        {
          session()->flash('unik','Peserta harus unik');
          return redirect()->back();
        }
      }


      if($tour==null)
      {
        $tournamentteam = new TournamentTeam;
        $tournamentteam->namaTeam = $request->namaTeam;
        $tournamentteam->anggota1 = $user;
        $tournamentteam->anggota2 = $request->namaAnggota2;
        $tournamentteam->anggota3 = $request->namaAnggota3;
        $tournamentteam->anggota4 = $request->namaAnggota4;
        $tournamentteam->anggota5 = $request->namaAnggota5;
        $tournamentteam->status = "belumterdaftar";
        $tournamentteam->idTournament = $request->idTournament;
        $tournamentteam->save();
        session()->flash('teamCreated','Registrasi Team Berhasil');
      }
      else
      {
        session()->flash('error','Registrasi Team Gagal , Peserta sudah terdaftar dalam team');
      }

      return redirect("tournament");

    }

    public function tutorial(Request $request,$id)
    {
      $nrp = session::get('nrp');
      $user = session::get('login');
      $tournament = Tournament::find($id);
      $team = TournamentTeam::where('idTournament',$tournament->id)->where('anggota1',$nrp)->first();

      $nilai = Score::where('namaPeserta',$user)->where('idTournament',$id)->first();


      // middleware terminate tournament
      if($tournament->jenis == "team")
      {
        $tournamentreg = TournamentRegister::where('nama',$team->namaTeam)->where('idTeam',$team->id)->where('idTournament',$tournament->id)->first();
        $nilai2 = Score::where('namaPeserta',$tournamentreg->nama)->where('idTournament',$id)->first();
        if($nilai2 != null)
        {
          session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
          return redirect()->back();
        }
      }
      else
      {
        if($nilai != null)
        {
          session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
          return redirect()->back();
        }
      }

      $idMahasiswa = Mahasiswa::where('namaMhs',$user)->first();

      if($tournament->jenis =="team")
      {

        if($tournamentreg == null)
        {

            return redirect()->back();
        }
      }
      else
      {
        $register = TournamentRegister::where('nama',$nrp)->where('idTournament',$id)->first();
        if($register == null)
        {
            return redirect()->back();
        }
      }

      $banksoal = BankSoal::find($tournament->idBankSoal);
      $soalpga = SoalPG::where('idBankSoal',$tournament->idBankSoal)->inRandomOrder()->paginate(1, ['*'], 'soalpg');
      $mulai = Carbon::now('Asia/Jakarta');
      $now = date("Y-m-d H:i:s", strtotime(Carbon::now('Asia/Jakarta')));
      $sekarang = Carbon::parse($now);
      $timesup= $sekarang;
      $jam =  date("H", strtotime(Carbon::parse($tournament->duration)));
      $menit =  date("i", strtotime(Carbon::parse($tournament->duration)));
      $detik =  date("s", strtotime(Carbon::parse($tournament->duration)));
      $timesup->addHours($jam);
      $timesup->addMinutes($menit);
      $timesup->addSeconds($detik);
      session(['mulai' => $timesup]);
      session(['soal' => $soalpga]);

      return view('tournamentTutorial',['tournament'=>$tournament,'banksoal'=>$banksoal]);
    }

    public function exam(Request $request,$id)
    {
      $nrp = session::get('nrp');
      $user = session::get('login');
      $tournament = Tournament::find($id);
      $team = TournamentTeam::where('idTournament',$tournament->id)->where('anggota1',$nrp)->first();
      $tournamentreg = TournamentRegister::where('nama',$team->namaTeam)->where('idTeam',$team->id)->where('idTournament',$tournament->id)->first();
      $nilai = Score::where('namaPeserta',$user)->where('idTournament',$id)->first();


      // middleware terminate tournament
      if($tournament->jenis == "team")
      {
        $nilai2 = Score::where('namaPeserta',$tournamentreg->nama)->where('idTournament',$id)->first();
        if($nilai2 != null)
        {
          session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
          return redirect()->back();
        }
      }
      else
      {
        if($nilai != null)
        {
          session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
          return redirect()->back();
        }
      }

      $idMahasiswa = Mahasiswa::where('namaMhs',$user)->first();
      if($tournament->jenis =="team")
      {
        $team = TournamentTeam::where('idTournament',$tournament->id)->where('anggota1',$nrp)->first();
        if($team == null)
        {
            return redirect()->back();
        }
      }
      else
      {
        $register = TournamentRegister::where('nama',$nrp)->where('idTournament',$id)->first();
        if($register == null)
        {
            return redirect()->back();
        }
      }

      $mulai = Carbon::now('Asia/Jakarta');

      $banksoal = BankSoal::find($tournament->idBankSoal);
      $totalIsian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->get();
      $totalPg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->get();
      $soalisian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalisian');
      $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalpg');

      // $soalpg = session::get('soal');
      // $soalpg->setPath('custom/url');
      // $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalpg')->shuffle()->all();
      // $soalpgasdf = SoalPG::where('idBankSoal',$tournament->idBankSoal)->inRandomOrder()->paginate(1, ['*'], 'soalpg');

      // session(['mulai' => $soalpgasdf]);
      // dd(session::get('mulai'));

      $soalpga = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalpg');
      // $gabungan = $soalpg->concat($soalisian);
      // $gabungan->all();


      $startTime = Carbon::parse($tournament->start);
      $finishTime = Carbon::parse($tournament->finish);
      $now = date("Y-m-d H:i:s", strtotime(Carbon::now('Asia/Jakarta')));
      $sekarang = Carbon::parse($now);
    //   $timesup= $startTime;
    //
    //   $jam =  date("H", strtotime(Carbon::parse($tournament->duration)));
    //   $menit =  date("i", strtotime(Carbon::parse($tournament->duration)));
    //   $detik =  date("s", strtotime(Carbon::parse($tournament->duration)));
    //   $times = $jam*3600 + $menit*60 +$detik;
    // //  $totalDuration = $jam*3600 + $menit*60 +$detik;
    //
    //
    //   $timesup->addHours($jam);
    //   $timesup->addMinutes($menit);
    //   $timesup->addSeconds($detik);

      $timesup= session::get('mulai');
      $totalDuration = $timesup->diffInSeconds($sekarang) - 2;



      // if($sekarang > $finishTime)
      // {
      //   session(['expiredTournament' => "expired"]);
      // }




      $jumlah_soal_isian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->count();
      $index = SoalIsian::find($request->idsoalisian);
      $indexjawab = JawabanIsian::where('idsoalisian',$request->idsoalisian)->first();
      $idMhs = JawabanIsian::where('idMhs',$idMahasiswa->id)->first();
      $idJawabanIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idsoalisian',$request->idsoalisian)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->first();
      $idJawabanIsian2 = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanDetailIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanDetail = DB::table('jawabanisian')
              ->join('soalisian', 'soalisian.id', '=', 'jawabanisian.idsoalisian')
              ->join('banksoal', 'banksoal.id', '=', 'jawabanisian.idBanksoal')
              ->where('idMhs',$idMahasiswa->id)
              ->where('idTournament',$tournament->id)
               // ->where('idBanksoal',$tournament->idBankSoal)
              ->select('banksoal.*', 'soalisian.*', 'jawabanisian.*')
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

      $jawabanPG = JawabanPG::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();
      $jawabanPGDetail = DB::table('jawabanpg')
          ->join('soalpg', 'soalpg.id', '=', 'jawabanpg.idsoalpg')
          ->join('banksoal', 'banksoal.id', '=', 'jawabanpg.idBanksoal')
          ->where('idMhs',$idMahasiswa->id)
          ->where('idTournament',$tournament->id)
          // ->where('idBankSoal',$tournament->idBankSoal)
          ->select('banksoal.*', 'soalpg.*', 'jawabanpg.*')
          ->get();



      return view('/tournamentExam',['tournament'=> $tournament ,'soalisian'=>$soalisian,'jawabanPGDetail'=> $jawabanPGDetail , 'soalpg'=>$soalpg ,
      'banksoal'=>$banksoal,'jumlah_soal_isian'=>$jumlah_soal_isian,'totalDuration'=>$totalDuration,'jawabanDetail'=>$jawabanDetail,'totalPg' =>$totalPg ,'totalIsian'=>$totalIsian,'soalpga'=>$soalpga,'nilai'=>$nilai,'timesup'=>$timesup]);
    }

    public function examGabungan(Request $request,$id)
    {

      $nrp = session::get('nrp');
      $user = session::get('login');
      $tournament = Tournament::find($id);
      $team = TournamentTeam::where('idTournament',$tournament->id)->where('anggota1',$nrp)->first();
      $tournamentreg = TournamentRegister::where('nama',$team->namaTeam)->where('idTeam',$team->id)->where('idTournament',$tournament->id)->first();
      $nilai = Score::where('namaPeserta',$user)->where('idTournament',$id)->first();

      // middleware terminate tournament
      if($tournament->jenis == "team")
      {
        $nilai2 = Score::where('namaPeserta',$tournamentreg->nama)->where('idTournament',$id)->first();

        if($nilai2 != null)
        {
          session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
          return redirect()->back();
        }
      }
      else
      {
        if($nilai != null)
        {
          session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
          return redirect()->back();
        }
      }

      $idMahasiswa = Mahasiswa::where('namaMhs',$user)->first();
      if($tournament->jenis =="team")
      {
        $team = TournamentTeam::where('idTournament',$tournament->id)->where('anggota1',$nrp)->first();
        if($team == null)
        {
            return redirect()->back();
        }
      }
      else
      {
        $register = TournamentRegister::where('nama',$nrp)->where('idTournament',$id)->first();
        if($register == null)
        {
            return redirect()->back();
        }
      }

      $mulai = Carbon::now('Asia/Jakarta');

      $banksoal = BankSoal::find($tournament->idBankSoal);
      $totalIsian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->get();
      $totalPg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->get();
      $soalisian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalisian');
      $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalpg');
      // $soalpg = session::get('soal');
      // $soalpg->setPath('custom/url');
      // $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalpg')->shuffle()->all();
      // $soalpgasdf = SoalPG::where('idBankSoal',$tournament->idBankSoal)->inRandomOrder()->paginate(1, ['*'], 'soalpg');

      // session(['mulai' => $soalpgasdf]);
      // dd(session::get('mulai'));

      $soalpga = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1, ['*'], 'soalpg');
      $gabungan = $soalpg->concat($soalisian);
      $gabungan->all();


      $startTime = Carbon::parse($tournament->start);
      $finishTime = Carbon::parse($tournament->finish);
      $now = date("Y-m-d H:i:s", strtotime(Carbon::now('Asia/Jakarta')));
      $sekarang = Carbon::parse($now);
    //   $timesup= $startTime;
    //
    //   $jam =  date("H", strtotime(Carbon::parse($tournament->duration)));
    //   $menit =  date("i", strtotime(Carbon::parse($tournament->duration)));
    //   $detik =  date("s", strtotime(Carbon::parse($tournament->duration)));
    //   $times = $jam*3600 + $menit*60 +$detik;
    // //  $totalDuration = $jam*3600 + $menit*60 +$detik;
    //
    //
    //   $timesup->addHours($jam);
    //   $timesup->addMinutes($menit);
    //   $timesup->addSeconds($detik);

      $timesup= session::get('mulai');
      $totalDuration = $timesup->diffInSeconds($sekarang) - 2;



      // if($sekarang > $finishTime)
      // {
      //   session(['expiredTournament' => "expired"]);
      // }




      $jumlah_soal_isian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->count();
      $index = SoalIsian::find($request->idsoalisian);
      $indexjawab = JawabanIsian::where('idsoalisian',$request->idsoalisian)->first();
      $idMhs = JawabanIsian::where('idMhs',$idMahasiswa->id)->first();
      $idJawabanIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idsoalisian',$request->idsoalisian)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->first();
      $idJawabanIsian2 = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanDetailIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanDetail = DB::table('jawabanisian')
              ->join('soalisian', 'soalisian.id', '=', 'jawabanisian.idsoalisian')
              ->join('banksoal', 'banksoal.id', '=', 'jawabanisian.idBanksoal')
              ->where('idMhs',$idMahasiswa->id)
              ->where('idTournament',$tournament->id)
               // ->where('idBanksoal',$tournament->idBankSoal)
              ->select('banksoal.*', 'soalisian.*', 'jawabanisian.*')
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

      $jawabanPG = JawabanPG::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();
      $jawabanPGDetail = DB::table('jawabanpg')
          ->join('soalpg', 'soalpg.id', '=', 'jawabanpg.idsoalpg')
          ->join('banksoal', 'banksoal.id', '=', 'jawabanpg.idBanksoal')
          ->where('idMhs',$idMahasiswa->id)
          ->where('idTournament',$tournament->id)
          // ->where('idBankSoal',$tournament->idBankSoal)
          ->select('banksoal.*', 'soalpg.*', 'jawabanpg.*')
          ->get();




      return view('/tournamentExamGabungan',['tournament'=> $tournament ,'soalisian'=>$soalisian,'jawabanPGDetail'=> $jawabanPGDetail ,'gabungan' => $gabungan , 'soalpg'=>$soalpg ,
      'banksoal'=>$banksoal,'jumlah_soal_isian'=>$jumlah_soal_isian,'totalDuration'=>$totalDuration,'jawabanDetail'=>$jawabanDetail,'totalPg' =>$totalPg ,'totalIsian'=>$totalIsian,'timesup'=>$timesup  ]);
    }

    public function scoreboard(Request $request,$id)
    {

      $tournament = Tournament::find($id);
      $banksoal= BankSoal::where('id',$tournament->idBankSoal)->first();
      $banyaksoal = $banksoal->jumlahSoal;


     $nilai = Score::where('idTournament',$tournament->id)
                     ->orderBy('totalSolve','desc')
                     ->get();


      return view('/tournamentScoreboard',['tournament'=> $tournament ,'nilai'=>$nilai,'banyaksoal'=>$banyaksoal,'banksoal'=>$banksoal]);

    }
    public function score(Request $request,$id)
        {
          //session(['terminateTournament' => "terminate"]);
          $nrp = session::get('nrp');
          $user = session::get('login');
          $tournament = Tournament::find($id);
          $team = TournamentTeam::where('idTournament',$tournament->id)->where('anggota1',$nrp)->first();
          $tournamentreg = TournamentRegister::where('nama',$team->namaTeam)->where('idTeam',$team->id)->where('idTournament',$tournament->id)->first();
          $nilai = Score::where('namaPeserta',$user)->where('idTournament',$id)->first();


          // middleware terminate tournament
          if($tournament->jenis == "team")
          {
            $nilai2 = Score::where('namaPeserta',$tournamentreg->nama)->where('idTournament',$id)->first();
            if($nilai2 != null)
            {
              session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
              return redirect('/tournament');
            }
          }
          else
          {
            if($nilai != null)
            {
              session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
              return redirect('/tournament');
            }
          }

          $idMahasiswa = Mahasiswa::where('namaMhs',$user)->first();
          $mulai = Carbon::now('Asia/Jakarta');
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

          $cekisian = JawabanIsian::
                          where('idTournament',$tournament->id)
                          ->where('idBankSoal',$tournament->idBankSoal)
                          ->groupBy('idMhs')
                          ->first();


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

          $cekpg = JawabanPG::where('idTournament',$tournament->id)
                          ->where('idBankSoal',$tournament->idBankSoal)
                          ->groupBy('idMhs')
                          ->first();


          $jawabpg = JawabanPG::where('idTournament',$tournament->id)
                          ->where('idBankSoal',$tournament->idBankSoal)
                          ->get();




          $team = TournamentTeam::where('idTournament',$tournament->id)->where('anggota1',$nrp)->first();

          $idbanksoal= BankSoal::where('id',$tournament->idBankSoal)->first();
          $banyaksoal = $idbanksoal->jumlahSoal;
          $banyaksoalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->get();

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


         $ss = Score::where('namaPeserta',$nrp)
                    ->where('idTournament',$tournament->id)
                    ->orderBy('totalSolve','desc')
                    ->first();



         if($ss == null )
         {
           if($banksoal->tipeSoal == "pg")
           {
             $score = new Score;
             if($tournament->jenis == "team")
             {
               $score->namaPeserta = $team->namaTeam;
             }
             else
             {
               $score->namaPeserta = $nrp;
             }

             $score->totalSolve = $totalSolvePG;
             $score->idTournament = $tournament->id;
             $score->save();

           }
           elseif($banksoal->tipeSoal == "isian")
           {
             $score = new Score;
             if($tournament->jenis == "team")
             {
               $score->namaPeserta = $team->namaTeam;
             }
             else
             {
               $score->namaPeserta = $nrp;
             }
             $score->totalSolve = $totalSolve;
             $score->idTournament = $tournament->id;
             $score->save();

           }
           elseif ($banksoal->tipeSoal == "gabungan")
           {
             $score = new Score;
             if($tournament->jenis == "team")
             {
               $score->namaPeserta = $team->namaTeam;
             }
             else
             {
               $score->namaPeserta = $nrp;
             }
             $score->totalSolve = $totalSolveGabungan;
             $score->idTournament = $tournament->id;
             $score->save();
           }
           elseif ($banksoal->tipeSoal == "isiancheck")
           {
             $score = new Score;
             if($tournament->jenis == "team")
             {
               $score->namaPeserta = $team->namaTeam;
             }
             else
             {
               $score->namaPeserta = $nrp;
             }
             $score->totalSolve = 0;
             $score->idTournament = $tournament->id;
             $score->save();
           }
           elseif ($banksoal->tipeSoal == "gabungancheck")
           {
             $score = new Score;
             if($tournament->jenis == "team")
             {
               $score->namaPeserta = $team->namaTeam;
             }
             else
             {
               $score->namaPeserta = $nrp;
             }
             $hasilPG =  ( ( $totalSolvePG / COUNT($banyaksoalpg) ) * 100 ) * $banksoal->persenPG /100;
             $score->totalSolve = $hasilPG;
             $score->nilaiPG = $hasilPG;
             $score->idTournament = $tournament->id;
             $score->save();
           }


         }
         else
         {
           session()->flash('error','Jawaban anda sudah disubmit sebelumnya tidak dapat diperbaharui kembali');
           return redirect('/tournament');
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
           // elseif ($banksoal->tipeSoal == "gabungan")
           // {
           //   $ss->namaPeserta = $user;
           //   $ss->totalSolve = $totalSolveGabungan;
           //   $ss->idTournament = $tournament->id;
           //   $ss->save();
           // }

         }

         $nilai = Score::where('idTournament',$tournament->id)
                         ->orderBy('totalSolve','desc')
                         ->orderBy('updated_at','asc')
                         ->get();



          return view('/tournamentScoreboard',['tournament'=> $tournament ,'soalisian'=>$soalisian , 'soalpg'=>$soalpg ,'banksoal'=>$banksoal,'jumlah_soal_isian'=>$jumlah_soal_isian,'totalDuration'=>$totalDuration ,'scoreboard'=>$scoreboard,'jawaban'=>$jawaban
          ,'banyaksoal'=>$banyaksoal,'jawabanDetail'=>$jawabanDetail,'idMahasiswa'=>$idMahasiswa,'nilai'=>$nilai]);

        }

    public function answer(Request $request,$id)
    {
      $user = session::get('login');
      $idMahasiswa = Mahasiswa::where('namaMhs',$user)->first();
      $mulai = Carbon::now('Asia/Jakarta');
      $tournament = Tournament::find($id);
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $soalisian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->paginate(1);
      $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->get();
      $startTime = Carbon::parse($tournament->start);
      $finishTime = Carbon::parse($tournament->finish);
      $totalDuration = $finishTime->diffInSeconds($startTime);
      $jumlah_soal_isian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->count();
      $index = SoalIsian::find($request->idsoalisian);
      $indexjawab = JawabanIsian::where('idsoalisian',$request->idsoalisian)->first();
      $idMhs = JawabanIsian::where('idMhs',$idMahasiswa->id)->first();
      $idJawabanIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idsoalisian',$request->idsoalisian)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->first();
      $idJawabanIsian2 = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanDetail = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
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
      $titlesoalPG = DB::table('soalpg')->where('id',$request->idsoalpg)->first();
      $titlesoalisian = DB::table('soalisian')->where('id',$request->idsoalisian)->first();


      if($request->jawabanpg != null )
      {

        if( $idJawabanPG == null)
        {
          $jawabanpg = new JawabanPG;
          $jawabanpg->title = $titlesoalPG->title;
          $jawabanpg->jawabanmhs = $request->jawabanpg;
          $jawabanpg->start = $mulai;
          $jawabanpg->finish = $mulai;
          $jawabanpg->duration = $mulai;
          $statpg="";
          if($jawabanpg->jawabanmhs == $indexpg->kunciJawaban)
          {
            $statpg = "benar";
          }
          else
          {
            $statpg = "salah";
          }
          $jawabanpg->status = $stat;
          $jawabanpg->idMhs = $idMahasiswa->id;
          $jawabanpg->idTournament = $tournament->id;
          $jawabanpg->idBanksoal = $banksoal->id;
          $jawabanpg->idsoalpg = $request->idsoalpg;
          $jawabanpg->save();

        }
        else
        {
            $idJawabanPG->title = $idJawabanPG->title;
            $idJawabanPG->jawabanmhs = $request->jawabanisian;
            $idJawabanPG->start = $mulai;
            $idJawabanPG->finish = $mulai;
            $idJawabanPG->duration = $mulai;
            $statpg="";
            if($idJawabanPG->jawabanmhs == $indexpg->kunciJawaban)
            {
              $statpg = "benar";
            }
            else
            {
              $statpg = "salah";
            }
            $idJawabanPG->status = $stat;
            $idJawabanPG->idMhs = $idMahasiswa->id;
            $idJawabanPG->idTournament = $tournament->id;
            $idJawabanPG->idBanksoal = $banksoal->id;
            $idJawabanPG->idsoalpg = $request->idsoalpg;
            $idJawabanPG->save();
        }

      }

      if($request->jawabanisian != null )
      {

        if( $idJawabanIsian == null)
        {
          $jawabanisian = new JawabanIsian;
          $jawabanisian->title = $titlesoalisian->title;
          $jawabanisian->jawabanmhs = $request->jawabanisian;
          $jawabanisian->start = $mulai;
          $jawabanisian->finish = $mulai;
          $jawabanisian->duration = $mulai;
          $stat="";
          if($jawabanisian->jawabanmhs == $index->kunciJawaban)
          {
            $stat = "benar";
          }
          else
          {
            $stat = "salah";
          }
          $jawabanisian->status = $stat;
          $jawabanisian->idMhs = $idMahasiswa->id;
          $jawabanisian->idTournament = $tournament->id;
          $jawabanisian->idBanksoal = $banksoal->id;
          $jawabanisian->idsoalisian = $request->idsoalisian;
          $jawabanisian->save();

        }
        else
        {
            $idJawabanIsian->title = $titlesoalisian->title;
            $idJawabanIsian->jawabanmhs = $request->jawabanisian;
            $idJawabanIsian->start = $mulai;
            $idJawabanIsian->finish = $mulai;
            $idJawabanIsian->duration = $mulai;
            $stat="";
            if($idJawabanIsian->jawabanmhs == $index->kunciJawaban)
            {
              $stat = "benar";
            }
            else
            {
              $stat = "salah";
            }
            $idJawabanIsian->status = $stat;
            $idJawabanIsian->idMhs = $idMahasiswa->id;
            $idJawabanIsian->idTournament = $tournament->id;
            $idJawabanIsian->idBanksoal = $banksoal->id;
            $idJawabanIsian->idsoalisian = $request->idsoalisian;
            $idJawabanIsian->save();
        }
        return redirect()->back();
      }

      return view('/tournamentExam',['tournament'=> $tournament ,'soalisian'=>$soalisian , 'soalpg'=>$soalpg ,'banksoal'=>$banksoal,'jumlah_soal_isian'=>$jumlah_soal_isian,'jumlah_soal_pg'=>$jumlah_soal_pg,'totalDuration'=>$totalDuration,'mulai'=>$mulai,'jawabanDetail'=>$jawabanDetail]);



    }



    public function answerPG(Request $request,$id)
    {

      $user = session::get('login');
      $idMahasiswa = Mahasiswa::where('namaMhs',$user)->first();
      $mulai = Carbon::now('Asia/Jakarta');
      $tournament = Tournament::find($id);
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $soalisian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->paginate(1);
      $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->paginate(1);
      $startTime = Carbon::parse($tournament->start);
      $finishTime = Carbon::parse($tournament->finish);
      $totalDuration = $finishTime->diffInSeconds($startTime);
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

      $jawabanPG = JawabanPG::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();
      $titlesoalPG = DB::table('soalpg')->where('id',$request->idsoalpg)->first();

      $jawabanPGDetail = DB::table('jawabanpg')
            ->join('soalpg', 'soalpg.id', '=', 'jawabanpg.idsoalpg')
            ->join('banksoal', 'banksoal.id', '=', 'jawabanpg.idBanksoal')
            ->where('idMhs',$idMahasiswa->id)
            ->where('idTournament',$tournament->id)
            // ->where('idBanksoal',$tournament->idBankSoal)
            ->select('banksoal.*', 'soalpg.*', 'jawabanpg.*')
            ->get();

      if($request->input('iCheck') != null )
      {
        if( $idJawabanPG == null)
        {
          $jawabanpg = new JawabanPG;
          $jawabanpg->title = $titlesoalPG->title;
          $jawabanpg->jawabanmhs = $request->input('iCheck');
          $jawabanpg->start = $mulai;
          $jawabanpg->finish = $mulai;
          $jawabanpg->duration = $mulai;
          $statpg="";
          if($banksoal->isSensitive == "no")
          {
            if(strtolower($jawabanpg->jawabanmhs) == strtolower($indexpg->kunciJawaban))
            {
              $statpg = "benar";
            }
            else
            {
              $statpg = "salah";
            }
          }
          else
          {
            if($jawabanpg->jawabanmhs == $indexpg->kunciJawaban)
            {
              $statpg = "benar";
            }
            else
            {
              $statpg = "salah";
            }
          }

          $jawabanpg->status = $statpg;
          $jawabanpg->idMhs = $idMahasiswa->id;
          $jawabanpg->idTournament = $tournament->id;
          $jawabanpg->idBanksoal = $banksoal->id;
          $jawabanpg->idsoalpg = $request->idsoalpg;
          $jawabanpg->save();
        }
        else
        {
            $idJawabanPG->title = $titlesoalPG->title;
            $idJawabanPG->jawabanmhs = $request->input('iCheck');
            $idJawabanPG->start = $mulai;
            $idJawabanPG->finish = $mulai;
            $idJawabanPG->duration = $mulai;
            $statpg="";
            if($idJawabanPG->jawabanmhs == $indexpg->kunciJawaban)
            {
              $statpg = "benar";
            }
            else
            {
              $statpg = "salah";
            }
            $idJawabanPG->status = $statpg;
            $idJawabanPG->idMhs = $idMahasiswa->id;
            $idJawabanPG->idTournament = $tournament->id;
            $idJawabanPG->idBanksoal = $banksoal->id;
            $idJawabanPG->idsoalpg = $request->idsoalpg;
            $idJawabanPG->save();
        }
      }
      // return redirect()->back();
      return redirect($request->url);
    }
    public function answerIsian(Request $request,$id)
    {

      $input = $request->all();
      $request->validate([
          'gambar' => 'file|max:10240',
      ]);
      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = $request->file('gambar')->getClientOriginalName();
          $upload_path = 'images/jawaban';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }
      else
      {
        $gambar_name ="";
      }


      $tournament = Tournament::find($id);
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $user = session::get('login');
      $idMahasiswa = Mahasiswa::where('namaMhs',$user)->first();
      $mulai = Carbon::now('Asia/Jakarta');
      $tournament = Tournament::find($id);
      $banksoal = BankSoal::find($tournament->idBankSoal);
      $soalisian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->paginate(1);
      $soalpg = SoalPG::where('idBankSoal',$tournament->idBankSoal)->get();
      $startTime = Carbon::parse($tournament->start);
      $finishTime = Carbon::parse($tournament->finish);
      $totalDuration = $finishTime->diffInSeconds($startTime);
      $jumlah_soal_isian = SoalIsian::where('idBankSoal',$tournament->idBankSoal)->count();
      $index = SoalIsian::find($request->idsoalisian);
      $indexjawab = JawabanIsian::where('idsoalisian',$request->idsoalisian)->first();
      $idMhs = JawabanIsian::where('idMhs',$idMahasiswa->id)->first();
      $idJawabanIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idsoalisian',$request->idsoalisian)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->first();
      $idJawabanIsian2 = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanDetailIsian = JawabanIsian::where('idMhs',$idMahasiswa->id)
                      ->where('idTournament',$tournament->id)
                      ->where('idBankSoal',$tournament->idBankSoal)
                      ->get();

      $jawabanDetail = DB::table('jawabanisian')
          ->join('soalisian', 'soalisian.id', '=', 'jawabanisian.idsoalisian')
          ->join('banksoal', 'banksoal.id', '=', 'jawabanisian.idBanksoal')
          ->where('idMhs',$idMahasiswa->id)
          ->where('idTournament',$tournament->id)
           // ->where('idBanksoal',$tournament->idBankSoal)
          ->select('banksoal.*', 'soalisian.*', 'jawabanisian.*')
          ->get();
      $titlesoalisian = DB::table('soalisian')->where('id',$request->idsoalisian)->first();
      if($banksoal->tipeSoal == "gabungancheck" || $banksoal->tipeSoal == "isiancheck" )
      {
          if( $idJawabanIsian == null)
          {
            $jawabanisian = new JawabanIsian;
            $jawabanisian->title = $titlesoalisian->title;
            if($request->jawabanisian == null)
            {
                $jawabanisian->jawabanmhs = "Tidak Terjawab";
            }
            else {
              $jawabanisian->jawabanmhs = $request->jawabanisian;
            }
            $jawabanisian->start = $mulai;
            $jawabanisian->finish = $mulai;
            $jawabanisian->duration = $mulai;
            if($banksoal->tipeSoal == "isiancheck" || $banksoal->tipeSoal == "gabungancheck")
            {

              $jawabanisian->jawabanGambar = $gambar_name;
              $stat="salah";
            }
            else
            {
              if($banksoal->isSensitive == "no")
              {
                if(strtolower($jawabanisian->jawabanmhs) == strtolower($index->kunciJawaban))
                {
                  $stat = "benar";
                }
                else
                {
                  $stat = "salah";
                }
              }
              else
              {
                if($jawabanisian->jawabanmhs == $index->kunciJawaban)
                {
                  $stat = "benar";
                }
                else
                {
                  $stat = "salah";
                }
              }
            }

            $jawabanisian->status = $stat;
            $jawabanisian->idMhs = $idMahasiswa->id;
            $jawabanisian->idTournament = $tournament->id;
            $jawabanisian->idBanksoal = $banksoal->id;
            $jawabanisian->idsoalisian = $request->idsoalisian;
            $jawabanisian->save();

          }
          else
          {
            $idJawabanIsian->title = $titlesoalisian->title;
            if($request->jawabanisian == null)
            {
                $idJawabanIsian->jawabanmhs = "Tidak Terjawab";
            }
            else {
              $idJawabanIsian->jawabanmhs = $request->jawabanisian;
            }

              $idJawabanIsian->start = $mulai;
              $idJawabanIsian->finish = $mulai;
              $idJawabanIsian->duration = $mulai;
              $stat="";
              if($banksoal->tipeSoal == "isiancheck" || $banksoal->tipeSoal == "gabungancheck")
              {
                $idJawabanIsian->jawabanGambar = $gambar_name;
                $stat="salah";
              }
              else
              {
                if($banksoal->isSensitive == "no")
                {
                  if(strtolower($idJawabanIsian->jawabanmhs) == strtolower($index->kunciJawaban))
                  {
                    $stat = "benar";
                  }
                  else
                  {
                    $stat = "salah";
                  }
                }
                else
                {
                  if($idJawabanIsian->jawabanmhs == $index->kunciJawaban)
                  {
                    $stat = "benar";
                  }
                  else
                  {
                    $stat = "salah";
                  }
                }
              }

              $idJawabanIsian->status = $stat;
              $idJawabanIsian->idMhs = $idMahasiswa->id;
              $idJawabanIsian->idTournament = $tournament->id;
              $idJawabanIsian->idBanksoal = $banksoal->id;
              $idJawabanIsian->idsoalisian = $request->idsoalisian;
              $idJawabanIsian->save();
          }

      }
      else
      {
        if($request->jawabanisian != null )
        {
          if( $idJawabanIsian == null)
          {
            $jawabanisian = new JawabanIsian;
            $jawabanisian->title = $titlesoalisian->title;
            $jawabanisian->jawabanmhs = $request->jawabanisian;
            $jawabanisian->start = $mulai;
            $jawabanisian->finish = $mulai;
            $jawabanisian->duration = $mulai;
            if($banksoal->tipeSoal == "isiancheck" || $banksoal->tipeSoal == "gabungancheck")
            {

              $jawabanisian->jawabanGambar = $gambar_name;
              $stat="salah";
            }
            else
            {
              if($banksoal->isSensitive == "no")
              {
                if(strtolower($jawabanisian->jawabanmhs) == strtolower($index->kunciJawaban))
                {
                  $stat = "benar";
                }
                else
                {
                  $stat = "salah";
                }
              }
              else
              {
                if($jawabanisian->jawabanmhs == $index->kunciJawaban)
                {
                  $stat = "benar";
                }
                else
                {
                  $stat = "salah";
                }
              }
            }

            $jawabanisian->status = $stat;
            $jawabanisian->idMhs = $idMahasiswa->id;
            $jawabanisian->idTournament = $tournament->id;
            $jawabanisian->idBanksoal = $banksoal->id;
            $jawabanisian->idsoalisian = $request->idsoalisian;
            $jawabanisian->save();

          }
          else
          {
              $idJawabanIsian->title = $titlesoalisian->title;
              $idJawabanIsian->jawabanmhs = $request->jawabanisian;
              $idJawabanIsian->start = $mulai;
              $idJawabanIsian->finish = $mulai;
              $idJawabanIsian->duration = $mulai;
              $stat="";
              if($banksoal->tipeSoal == "isiancheck" || $banksoal->tipeSoal == "gabungancheck")
              {
                $idJawabanIsian->jawabanGambar = $gambar_name;
                $stat="salah";
              }
              else
              {
                if($banksoal->isSensitive == "no")
                {
                  if(strtolower($idJawabanIsian->jawabanmhs) == strtolower($index->kunciJawaban))
                  {
                    $stat = "benar";
                  }
                  else
                  {
                    $stat = "salah";
                  }
                }
                else
                {
                  if($idJawabanIsian->jawabanmhs == $index->kunciJawaban)
                  {
                    $stat = "benar";
                  }
                  else
                  {
                    $stat = "salah";
                  }
                }
              }

              $idJawabanIsian->status = $stat;
              $idJawabanIsian->idMhs = $idMahasiswa->id;
              $idJawabanIsian->idTournament = $tournament->id;
              $idJawabanIsian->idBanksoal = $banksoal->id;
              $idJawabanIsian->idsoalisian = $request->idsoalisian;
              $idJawabanIsian->save();
          }
      }

    }

    return redirect($request->url);
  }

  public function scoreCheck(Request $request,$id)
  {
    return redirect('/tournament');
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


}
