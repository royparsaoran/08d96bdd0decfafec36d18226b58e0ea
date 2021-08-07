<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

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


class superAdminRegisterController extends Controller
{
    public function index(Request $request)
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

      return view("admin.tournamentRegister",['register'=>$register,'registered'=>$registered,'tournament'=>$tournament]);

    }


    public function detailRegister(Request $request,$id)
    {
       $tournament= Tournament::find($id);
       $nama = Mahasiswa::all();
      /// $nama = DKBS::where('namaMataKuliah',strtoupper($tournament->namaMK))->get();
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

      return view("admin.tournamentRegisterDetail",['register'=>$register,'registered'=>$registered,'tournament'=>$tournament,'nama'=>$nama]);
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
           ->join('mahasiswa','mahasiswa.namaMhs','=','tournamentregister.nama')
           ->where('tournamentregister.idTournament',$tournament->id)
           ->select('mahasiswa.*','tournament.*','tournamentregister.*' )
           ->get();

     $registeredteam = DB::table('tournamentregister')
          ->join('tournament', 'tournament.id', '=', 'tournamentregister.idTournament')
          ->join('tournamentteam', 'tournamentteam.id', '=', 'tournamentregister.idTeam')
          ->where('tournamentregister.idTournament',$tournament->id)
          ->select('tournamentteam.*','tournament.*','tournamentregister.*' )
          ->get();
     return view("admin.tournamentRegisterDetailPeserta",['register'=>$register,'registered'=>$registered,'tournament'=>$tournament,'registeredteam'=>$registeredteam]);
    }

    public function insertTeam(Request $request,$id)
    {
      //$dkbs  = Mahasiswa::where('nrp',$request->idPeserta)->first();
      $mhs = Mahasiswa::where('nrp',$request->idPeserta)->first();
      $tour = TournamentTeam::where('idTournament',$id)
                              ->where('anggota1',$mhs->nama)
                              ->first();
      $registeredTournament = TournamentTeam::where('idTournament',$id)->where('anggota1',$request->idPeserta)->first();

      $register = TournamentRegister::where('nama',$mhs->nrp)->where('idTournament',$id)->first();

      if($mhs!=null)
      {
        if($registeredTournament == null)
        {
          if($tour==null)
          {
            $tournamentteam = new TournamentTeam;
            $tournamentteam->namaTeam = "MCU_".$mhs->nrp;
            $tournamentteam->anggota1 = $mhs->nrp;
            $tournamentteam->anggota2 = "";
            $tournamentteam->anggota3 = "";
            $tournamentteam->anggota4 = "";
            $tournamentteam->anggota5 = "";
            $tournamentteam->idTournament = $id;
            $tournamentteam->save();
            session()->flash('success','Registrasi Team Berhasil');
          }
        }
        else
        {
          session()->flash('error','Mahasiswa Telah Terdaftar di Team!!!');
        }
      }
      else {
        session()->flash('error','Data Belum Terdaftar Sebagai Mahasiswa!!!');
      }
      return redirect()->back();
    }
    public function deleteTournamentRegister($id,$id2)
    {
      $tour = TournamentTeam::where('id',$id)->where('anggota1',$id2)->first();
      if($tour->status != 'terdaftar')
      {
        $tournamentId = TournamentTeam::find($id)->where('anggota1',$id2);
        $tournamentId->delete();
        if($tournamentId == null)
        {
          Session()->flash('error','Mahasiswa tidak berhasil dihapus dari Tournament');
        }
        else if($tournamentId != null)
        {
          Session()->flash('success','Mahasiswa Berhasil dihapus dari Tournament ');
        }
      }
      else
      {
        session()->flash('error','Tournament yang sudah terdaftar tidak dapat dihapus');
      }
      return redirect()->back();
    }

    public function insertRegister(Request $request)
    {

      // $nrp = session::get('nrp');
      // $user = session::get('login');
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

        public function addMahasiswa(Request $request)
    {
        return view("admin.register");
    }

    public function insertMahasiswa(Request $request)
    {

      $mahasiswa = Mahasiswa::where('nrp',$request->nrp)->first();
      if($mahasiswa == null)
      {
        $mahasiswa = new Mahasiswa;
        $mahasiswa->nrp = $request->nrp;
        $mahasiswa->namaMhs = $request->nama;
        $mahasiswa->email = "it".$request->nrp."@student.it.maranatha.edu";
        $mahasiswa->fakultas = "Fakultas Teknologi Informasi";
        $mahasiswa->prodi = "S-1 Teknik Informatika";
        $mahasiswa->tanggalLahir = "06-Jan-1996";
        $mahasiswa->alamat = "Jalan Surya Sumantri No.65";
        $mahasiswa->gender = $request->gender;
        $mahasiswa->role = "";
        $mahasiswa->kota = "Bandung";
        $mahasiswa->telephone = "081221669924";
        $mahasiswa->streamlink = "";
        $mahasiswa->password = "a0bb28c06d64bf126af4a521581b7ffb";
        $mahasiswa->about = "CLSReborn_GEN";
        $mahasiswa->level = 0;
        $mahasiswa->experience = 0;
        $mahasiswa->foto = "user.png";
        $mahasiswa->warna = "red";
        $mahasiswa->status = "aktif";
        $mahasiswa->role = "Mahasiswa";
        $mahasiswa->save();

        $leaderboard = new Leaderboard;
        $leaderboard->nama = $request->nama;
        $leaderboard->nrp = $request->nrp;
        $leaderboard->emas = 0;
        $leaderboard->perak = 0;
        $leaderboard->perunggu = 0;
        $leaderboard->total = 0;
        $leaderboard->save();


        session()->flash('success','Mahasiswa berhasil didaftarkan');
        return redirect()->back();
      }
      else
      {
          session()->flash('error','Mahasiswa tidak berhasil didaftarkan');
          return redirect()->back();
      }

      return redirect()->back();
    }

}
