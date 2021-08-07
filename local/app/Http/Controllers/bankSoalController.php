<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Session;
use URL;

use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\SoalPG;
use App\SoalIsian;
use App\BankSoal;
use App\Tournament;

class bankSoalController extends Controller
{
    public function index(Request $request)
    {

      $bank = DB::table('banksoal')
              ->orderBy('created_at','desc')
              ->orderBy('tahunTerbit','desc')
              ->get();

      $soalpg = SoalPG::all();
      $soalisian = SoalIsian::all();

      return view('dosen.bankSoalDosen',['soalpg'=>$soalpg , 'soalisian'=>$soalisian,'bank'=>$bank]);
    }
    public function createSoal(Request $request)
    {
      $now = date("Y-m-d", strtotime(Carbon::now('Asia/Jakarta')));
      $user = session::get('login');
      $cari = BankSoal::where('namaSoal',$request->namaSoal)->first();

      $request->validate([
          'namaSoal' => 'required|unique:banksoal',
          'tipeSoal' => 'required',
          'jumlahSoal' => 'required|digits_between:1,1000',
      ]);


      $newBank = new BankSoal;
      $newBank->namaSoal = $request->namaSoal;
      $newBank->pembuat = $user;
      $newBank->tahunTerbit = $now;
      $newBank->tipeSoal = $request->tipeSoal;
      $newBank->jumlahSoal = $request->jumlahSoal;
      $newBank->isSensitive = $request->case;
      if ($request->tipeSoal == "isiancheck")
      {
        $newBank->jawabanRequired = $request->caseReq;
      }
      elseif ($request->tipeSoal == "gabungancheck")
      {
        $newBank->persenPG = $request->persenPG;
        $newBank->persenIsian = $request->persenIsian;
        $newBank->jawabanRequired = $request->caseReq;
      }


      $newBank->save();

      return redirect()->back();
    }

    public function editSoal(Request $request,$id)
    {
      $banksoal = BankSoal::find($id);

      return view('dosen.bankSoalDosenUpdate',['banksoal'=>$banksoal]);
    }
    public function updateSoal(Request $request,$id)
    {
      $banksoal = BankSoal::find($id);
      $banksoal->namaSoal = $request->namaSoal;
      $banksoal->jumlahSoal = $request->jumlahSoal;
      $banksoal->tipeSoal = $request->tipeSoal;
      $banksoal->isSensitive = $request->case;
      if ($banksoal->tipeSoal == "isiancheck")
      {
        $banksoal->jawabanRequired = $request->caseReq;
      }
      elseif ($banksoal->tipeSoal == "gabungancheck")
      {
        $banksoal->persenPG = $request->persenPG;
        $banksoal->persenIsian = $request->persenIsian;
        $banksoal->jawabanRequired = $request->caseReq;
      }
      $banksoal->save();

      return redirect('/bankSoalDosen');
    }
    public function deleteSoal(Request $request,$id)
    {
      $banksoal = BankSoal::find($id);
      $tour = Tournament::where('idBankSoal',$id)->first();
      if($tour == null)
      {
        $banksoal->delete();
      }
      else
      {
        session()->flash('error','Bank soal gagal dihapus karena sudah dipakai tournament');
      }
      return redirect()->back();
    }

    public function showSoal(Request $request,$id)
    {
      $soalpg = DB::table('soalpg')
            ->join('banksoal', 'banksoal.id', '=', 'soalpg.idBankSoal')
            ->select('banksoal.*','soalpg.*')
            ->where('idBankSoal','!=',$id)
            ->get();

      $soalisian = DB::table('soalisian')
            ->join('banksoal', 'banksoal.id', '=', 'soalisian.idBankSoal')
            ->where('idBankSoal','!=',$id)
            ->select('banksoal.*','soalisian.*')
            ->get();



      // $soalpg = SoalPG::where('idBankSoal','!=',$id)->get();
      // $soalisian = SoalIsian::where('idBankSoal','!=',$id)->get();
      $otherbanks = BankSoal::where('id','!=',$id)->get();
      $banksoal = BankSoal::find($id);

      $curPG = SoalPG::where('idBankSoal',$id)->get();
      $curIsi = SoalIsian::where('idBankSoal',$id)->get();
      $jumlahisian = count($curIsi);
      $jumlahpg = count($curPG);
      $jumlahgabungan = $jumlahisian+$jumlahpg;
      $gabungan =  $curIsi->concat($curPG);
      $gabungan->all();

      return view('dosen.bankSoal',['banksoal'=>$banksoal ,'soalpg'=>$soalpg ,'soalisian'=>$soalisian,'curPG'=>$curPG ,'curIsi'=>$curIsi,'gabungan'=>$gabungan,'otherbanks'=>$otherbanks,'jumlahpg'=>$jumlahpg,'jumlahisian'=>$jumlahisian,
    'jumlahgabungan'=>$jumlahgabungan]);
    }

    public function addSoal(Request $request,$id)
    {
      $banksoal = BankSoal::find($id);
      $pilihan = $request->input('check');
      $curPG = SoalPG::where('idBankSoal',$id)->get();
      $curIsi = SoalIsian::where('idBankSoal',$id)->get();
      $gabungan =  $curIsi->concat($curPG);
      $gabungan->all();
      if($banksoal ->tipeSoal == "gabungan")
      {
        $curTemp = count($gabungan);
      }
      else if($banksoal ->tipeSoal == "pg")
      {
        $curTemp = count($curPG);
      }
      else if($banksoal ->tipeSoal == "isian")
      {
        $curTemp = count($curIsi);
      }
      else if($banksoal ->tipeSoal == "isiancheck")
      {
        $curTemp = count($curIsi);
      }
      else if($banksoal ->tipeSoal == "gabungancheck")
      {
        $curTemp = count($gabungan);
      }
      else
      {
        $curTemp = count($curPG);
      }

      $afterTemp = count($pilihan)+$curTemp;


      $request->validate(['gambar' => 'max:50000|mimes:jpeg,bmp,png',]);
      $input = $request->all();
      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/soal';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }
      else
      {
        $gambar_name ="";
      }
      if($afterTemp <= $banksoal->jumlahSoal)
      {
        if($banksoal ->tipeSoal == "gabungan")
        {

          foreach ($pilihan as $pil)
          {
            $newSoalPG = new SoalPG;
            $newSoalIsian = new SoalIsian;
            $pg = SoalPG::where('title',$pil)->first();
            $isi = SoalIsian::where('title',$pil)->first();
            if($pg != null)
            {
                $newSoalPG->title = $pg->title;
                $newSoalPG->soal = $pg->soal;
                $newSoalPG->gambar = $pg->gambar;
                $newSoalPG->a = $pg->a;
                $newSoalPG->b = $pg->b;
                $newSoalPG->c = $pg->c;
                $newSoalPG->d = $pg->d;
                $newSoalPG->e = $pg->e;
                $newSoalPG->kunciJawaban = $pg->kunciJawaban;
                $newSoalPG->kategori = $pg->kategori;
                $newSoalPG->level = $pg->level;
                $newSoalPG->idBankSoal = $id;
                $newSoalPG->save();
            }
            else if($isi !=null)
            {
              $newSoalIsian->title = $isi->title;
              $newSoalIsian->soal = $isi->soal;
              $newSoalIsian->gambar = $isi->gambar;
              $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
              $newSoalIsian->kategori = $isi->kategori;
              $newSoalIsian->level = $isi->level;
              $newSoalIsian->idBankSoal = $id;

              $newSoalIsian->save();
            }
          }
        }
        else if($banksoal ->tipeSoal == "gabungancheck")
        {

          foreach ($pilihan as $pil)
          {
            $newSoalPG = new SoalPG;
            $newSoalIsian = new SoalIsian;
            $pg = SoalPG::where('title',$pil)->first();
            $isi = SoalIsian::where('title',$pil)->first();
            if($pg != null)
            {
                $newSoalPG->title = $pg->title;
                $newSoalPG->soal = $pg->soal;
                $newSoalPG->gambar = $pg->gambar;
                $newSoalPG->a = $pg->a;
                $newSoalPG->b = $pg->b;
                $newSoalPG->c = $pg->c;
                $newSoalPG->d = $pg->d;
                $newSoalPG->e = $pg->e;
                $newSoalPG->kunciJawaban = $pg->kunciJawaban;
                $newSoalPG->kategori = $pg->kategori;
                $newSoalPG->level = $pg->level;
                $newSoalPG->idBankSoal = $id;
                $newSoalPG->save();
            }
            else if($isi !=null)
            {
              $newSoalIsian->title = $isi->title;
              $newSoalIsian->soal = $isi->soal;
              $newSoalIsian->gambar = $isi->gambar;
              $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
              $newSoalIsian->kategori = $isi->kategori;
              $newSoalIsian->level = $isi->level;
              $newSoalIsian->idBankSoal = $id;
              $newSoalIsian->save();
            }
          }
        }
        else if ($banksoal ->tipeSoal == "pg")
        {


          foreach ($pilihan as $pil)
          {
            $newSoalPG = new SoalPG;
            $pg = SoalPG::where('title',$pil)->first();
            if($pg != null)
            {
                $newSoalPG->title = $pg->title;
                $newSoalPG->soal = $pg->soal;
                $newSoalPG->gambar = $pg->gambar;
                $newSoalPG->a = $pg->a;
                $newSoalPG->b = $pg->b;
                $newSoalPG->c = $pg->c;
                $newSoalPG->d = $pg->d;
                $newSoalPG->e = $pg->e;
                $newSoalPG->kunciJawaban = $pg->kunciJawaban;
                $newSoalPG->kategori = $pg->kategori;
                $newSoalPG->level = $pg->level;
                $newSoalPG->idBankSoal = $id;
                $newSoalPG->save();
            }
          }
        }
        else if ($banksoal ->tipeSoal == "isian")
        {
          foreach ($pilihan as $pil)
          {
            $newSoalIsian = new SoalIsian;
            $pg = SoalPG::where('title',$pil)->first();
            $isi = SoalIsian::where('title',$pil)->first();
            if($isi != null)
            {
              $newSoalIsian->title = $isi->title;
              $newSoalIsian->soal = $isi->soal;
              $newSoalIsian->gambar = $isi->gambar;
              $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
              $newSoalIsian->kategori = $isi->kategori;
              $newSoalIsian->level = $isi->level;
              $newSoalIsian->idBankSoal = $id;
              $newSoalIsian->save();
            }
          }
        }
        else if ($banksoal ->tipeSoal == "isiancheck")
        {

          foreach ($pilihan as $pil)
          {
            $newSoalIsian = new SoalIsian;
            $isi = SoalIsian::where('title',$pil)->first();
            $newSoalIsian->title = $isi->title;
            $newSoalIsian->soal = $isi->soal;
            $newSoalIsian->gambar = $isi->gambar;
            $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
            $newSoalIsian->kategori = $isi->kategori;
            $newSoalIsian->level = $isi->level;
            $newSoalIsian->idBankSoal = $id;
            $newSoalIsian->save();

          }
        }


      }
      else
      {
          session()->flash('lebih','Soal tidak dapat ditambahkan karena melebihi jumlah soal yang ada');
      }


        return redirect()->back();
    }

    public function editSoalPG(Request $request , $id,$id2)
    {
        $banksoal = BankSoal::find($id);
        $curPG = SoalPG::where('id',$id2)->first();
        $curIsian = SoalIsian::where('id',$id2)->first();
        $tipe="pg";
      return view('dosen.bankSoalUpdatePG',['banksoal' => $banksoal , 'curPG' =>$curPG ,'tipe'=>$tipe , 'curIsian' => $curIsian]);
    }
    public function editSoalIsian(Request $request ,$id,$id2)
    {

      $banksoal = BankSoal::find($id);
      $curPG = SoalPG::where('id',$id2)->first();
      $curIsian = SoalIsian::where('id',$id2)->first();
      $tipe="isian";
      return view('dosen.bankSoalUpdateIsian',['banksoal' => $banksoal , 'curPG' =>$curPG ,'tipe'=>$tipe , 'curIsian' => $curIsian]);
    }

    public function updateSoalPG(Request $request , $id,$id2)
    {
      $soalpg = SoalPG::all();
      $soalisian = SoalIsian::all();
      $otherbanks = BankSoal::where('id','!=',$id)->get();
      $banksoal = BankSoal::find($id);

      $curPG = SoalPG::where('idBankSoal',$id)->get();
      $curIsi = SoalIsian::where('idBankSoal',$id)->get();
      $gabungan =  $curIsi->concat($curPG);
      $gabungan->all();
      $request->validate(['gambar' => 'max:50000|mimes:jpeg,bmp,png',]);
      $input = $request->all();
      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/soal';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }
      else
      {
        $gambar_name ="";
      }
      $newSoalPG = SoalPG::where('id',$id2)->first();
      $newSoalPG->title = $request->titlepg;
      $newSoalPG->soal = $request->soalpg;
      $newSoalPG->gambar = $gambar_name;
      $newSoalPG->a = $request->a;
      $newSoalPG->b = $request->b;
      $newSoalPG->c = $request->c;
      $newSoalPG->d = $request->d;
      $newSoalPG->e = $request->e;
      if( strtoupper($request->kunciJawabanpg) == 'A')
      {
          $newSoalPG->kunciJawaban = $request->a;
      }
      elseif ( strtoupper($request->kunciJawabanpg) == 'B')
      {
          $newSoalPG->kunciJawaban = $request->b;
      }
      elseif ( strtoupper($request->kunciJawabanpg) == 'C')
      {
          $newSoalPG->kunciJawaban = $request->c;
      }
      elseif ( strtoupper($request->kunciJawabanpg) == 'D')
      {
          $newSoalPG->kunciJawaban = $request->d;
      }
      elseif ( strtoupper($request->kunciJawabanpg) == 'E')
      {
          $newSoalPG->kunciJawaban = $request->e;
      }
      else
      {
        $newSoalPG->kunciJawaban = $request->kunciJawabanpg;
      }
      $newSoalPG->kategori = $request->kategoripg;
      $newSoalPG->level = $request->levelpg;
      $newSoalPG->save();

      return redirect('/bankSoal/show/'.$id);

    }

    public function updateSoalIsian(Request $request , $id,$id2)
    {
      $request->validate(['gambar' => 'max:50000|mimes:jpeg,bmp,png',]);
      $input = $request->all();
      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/soal';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }
      else
      {
        $gambar_name ="";
      }
      $newSoalIsian = SoalIsian::where('id',$id2)->first();
      $newSoalIsian->title = $request->title;
      $newSoalIsian->soal = $request->soal;
      $newSoalIsian->gambar = $gambar_name;
      $newSoalIsian->kunciJawaban = $request->kunciJawaban;
      $newSoalIsian->kategori = $request->kategori;
      $newSoalIsian->level = $request->level;
      $newSoalIsian->save();

      return redirect('/bankSoal/show/'.$id);
    }

    public function deleteSoalPG(Request $request ,$id,$id2)
    {
        $tour = Tournament::where('idBankSoal',$id)->first();
        $curPG = SoalPG::where('id',$id2)->where('idBankSoal',$id)->first();
        if($tour == null)
        {
          $curPG->delete();
        }
        else
        {
          session()->flash('lebih','Soal gagal dihapus karena sudah dipakai tournament');
        }
        return redirect()->back();
    }


    public function deleteSoalIsian(Request $request ,$id,$id2)
    {
        $tour = Tournament::where('idBankSoal',$id)->first();
        $curIsian = SoalIsian::where('id',$id2)->where('idBankSoal',$id)->first();
        if($tour == null)
        {
          $curIsian->delete();
        }
        else
        {
          session()->flash('lebih','Soal gagal dihapus karena sudah dipakai tournament');
        }

        return redirect()->back();
    }

    public function addSoalPG(Request $request,$id)
    {
      $request->validate(['gambar' => 'max:50000|mimes:jpeg,bmp,png',]);
      $input = $request->all();
      $banksoal = BankSoal::find($id);
      $curPG = SoalPG::where('idBankSoal',$id)->get();
      $curIsi = SoalIsian::where('idBankSoal',$id)->get();

      if($banksoal ->tipeSoal == "gabungan")
      {
        $afterTemp = count($curIsi)+count($curPG)+1;
      }
      else if($banksoal ->tipeSoal == "gabungancheck")
      {
        $afterTemp = count($curIsi)+count($curPG)+1;
      }
      else
      {
        $afterTemp = count($curIsi)+1;
      }
      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/soal';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }
      else
      {
        $gambar_name ="";
      }
      if($afterTemp <= $banksoal->jumlahSoal)
      {
        $soalpg = new SoalPG;
        $soalpg->title = $request->titlepg;
        $soalpg->soal = $request->soalpg;
        $soalpg->gambar = $gambar_name;
        $soalpg->a = $request->a;
        $soalpg->b = $request->b;
        $soalpg->c = $request->c;
        $soalpg->d = $request->d;
        $soalpg->e = $request->e;
        if( strtoupper($request->kunciJawabanpg) == 'A')
        {
            $soalpg->kunciJawaban = $request->a;
        }
        elseif ( strtoupper($request->kunciJawabanpg) == 'B')
        {
            $soalpg->kunciJawaban = $request->b;
        }
        elseif ( strtoupper($request->kunciJawabanpg) == 'C')
        {
            $soalpg->kunciJawaban = $request->c;
        }
        elseif ( strtoupper($request->kunciJawabanpg) == 'D')
        {
            $soalpg->kunciJawaban = $request->d;
        }
        elseif ( strtoupper($request->kunciJawabanpg) == 'E')
        {
            $soalpg->kunciJawaban = $request->e;
        }
        else
        {
          $soalpg->kunciJawaban = $request->kunciJawabanpg;
        }
        $soalpg->kategori = $request->kategoripg;
        $soalpg->level = $request->levelpg;
        $soalpg->idBankSoal = $id;
        $soalpg->save();
     }
     else
     {
         session()->flash('lebih','Soal tidak dapat ditambahkan karena melebihi jumlah soal yang ada');
     }
      return redirect()->back();
    }

    public function addSoalIsian(Request $request,$id)
    {
      $request->validate(['gambar' => 'max:50000|mimes:jpeg,bmp,png',]);
      $input = $request->all();
      $banksoal = BankSoal::find($id);
      $curIsi = SoalIsian::where('idBankSoal',$id)->get();
      $curPG = SoalPG::where('idBankSoal',$id)->get();
      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/soal';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }
      else
      {
        $gambar_name ="";
      }
      if($banksoal ->tipeSoal == "gabungan")
      {
        $afterTemp = count($curIsi)+count($curPG)+1;
      }
      else if($banksoal ->tipeSoal == "gabungancheck")
      {
        $afterTemp = count($curIsi)+count($curPG)+1;
      }
      else
      {
        $afterTemp = count($curIsi)+1;
      }



      if($afterTemp <= $banksoal->jumlahSoal)
      {
        $soalisian = new SoalIsian;
        $soalisian->title = $request->title;
        $soalisian->soal = $request->soal;
        $soalisian->gambar = $gambar_name;
        $soalisian->kunciJawaban = $request->kunciJawaban;
        $soalisian->kategori = $request->kategori;
        $soalisian->level = $request->level;
        $soalisian->idBankSoal = $id;
        $soalisian->save();
      }
      else
      {
          session()->flash('lebih','Soal tidak dapat ditambahkan karena melebihi jumlah soal yang ada');
      }
      return redirect()->back();
    }


    public function salinSoal(Request $request,$id)
    {

      $banksoal = BankSoal::find($id);
      $pilihan = $request->input('check2');
      $curSoalPG = SoalPG::where('idBankSoal',$id)->get();
      $curSoalIsi = SoalIsian::where('idBankSoal',$id)->get();
      $curSoal = $curSoalPG->concat($curSoalIsi);
      $curSoal->all();

      $after=0;
      foreach ($pilihan as $pil)
      {
        $curBank = BankSoal::where('id',$pil)->first();

        if ($curBank->tipeSoal == "pg")
        {
           $curPG  = SoalPG::where('idBankSoal',$curBank->id)->get();
           $after = $after + count($curPG);
        }
        elseif ($curBank->tipeSoal == "isian")
        {
           $curIsi  = SoalIsian::where('idBankSoal',$curBank->id)->get();
           $after = $after + count($curIsi);
        }
        elseif ($curBank->tipeSoal == "gabungan")
        {
           $curPG  = SoalPG::where('idBankSoal',$curBank->id)->get();
           $curIsi  = SoalIsian::where('idBankSoal',$curBank->id)->get();
           $gabungan = $curPG->concat($curIsi);
           $gabungan->all();
           $after = $after + count($gabungan);
        }

      }

      $predict = $after+count($curSoal);
      if($predict <= $banksoal->jumlahSoal)
      {
        foreach ($pilihan as $pil)
        {
          $curBank = BankSoal::where('id',$pil)->first();

          if ($curBank->tipeSoal == "pg")
          {
             $curPG  = SoalPG::where('idBankSoal',$curBank->id)->get();
             foreach ($curPG as $pg)
             {
               $newSoalPG = new SoalPG;
               $newSoalPG->title = $pg->title;
               $newSoalPG->soal = $pg->soal;
               $newSoalPG->a = $pg->a;
               $newSoalPG->b = $pg->b;
               $newSoalPG->c = $pg->c;
               $newSoalPG->d = $pg->d;
               $newSoalPG->e = $pg->e;
               $newSoalPG->kunciJawaban = $pg->kunciJawaban;
               $newSoalPG->kategori = $pg->kategori;
               $newSoalPG->level = $pg->level;
               $newSoalPG->idBankSoal = $id;
               $newSoalPG->save();
             }


          }
          elseif ($curBank->tipeSoal == "isian")
          {

             $curIsi  = SoalIsian::where('idBankSoal',$curBank->id)->get();
             foreach ($curIsi as $isi)
             {
               $newSoalIsian = new SoalIsian;
               $newSoalIsian->title = $isi->title;
               $newSoalIsian->soal = $isi->soal;
               $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
               $newSoalIsian->kategori = $isi->kategori;
               $newSoalIsian->level = $isi->level;
               $newSoalIsian->idBankSoal = $id;
               $newSoalIsian->save();
            }

          }
          elseif ($curBank->tipeSoal == "isiancheck")
          {

             $curIsi  = SoalIsian::where('idBankSoal',$curBank->id)->get();
             foreach ($curIsi as $isi)
             {
               $newSoalIsian = new SoalIsian;
               $newSoalIsian->title = $isi->title;
               $newSoalIsian->soal = $isi->soal;
               $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
               $newSoalIsian->kategori = $isi->kategori;
               $newSoalIsian->level = $isi->level;
               $newSoalIsian->idBankSoal = $id;
               $newSoalIsian->save();
            }

          }
          elseif ($curBank->tipeSoal == "gabungan")
          {
             $curPG  = SoalPG::where('idBankSoal',$curBank->id)->get();
             $curIsi  = SoalIsian::where('idBankSoal',$curBank->id)->get();

             foreach ($curPG as $pg)
             {
               $newSoalPG = new SoalPG;
               $newSoalPG->title = $pg->title;
               $newSoalPG->soal = $pg->soal;
               $newSoalPG->a = $pg->a;
               $newSoalPG->b = $pg->b;
               $newSoalPG->c = $pg->c;
               $newSoalPG->d = $pg->d;
               $newSoalPG->e = $pg->e;
               $newSoalPG->kunciJawaban = $pg->kunciJawaban;
               $newSoalPG->kategori = $pg->kategori;
               $newSoalPG->level = $pg->level;
               $newSoalPG->idBankSoal = $id;
               $newSoalPG->save();
             }

             foreach ($curIsi as $isi)
             {
               $newSoalIsian = new SoalIsian;
               $newSoalIsian->title = $isi->title;
               $newSoalIsian->soal = $isi->soal;
               $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
               $newSoalIsian->kategori = $isi->kategori;
               $newSoalIsian->level = $isi->level;
               $newSoalIsian->idBankSoal = $id;
               $newSoalIsian->save();
            }

          }
          elseif ($curBank->tipeSoal == "gabungancheck")
          {
             $curPG  = SoalPG::where('idBankSoal',$curBank->id)->get();
             $curIsi  = SoalIsian::where('idBankSoal',$curBank->id)->get();

             foreach ($curPG as $pg)
             {
               $newSoalPG = new SoalPG;
               $newSoalPG->title = $pg->title;
               $newSoalPG->soal = $pg->soal;
               $newSoalPG->a = $pg->a;
               $newSoalPG->b = $pg->b;
               $newSoalPG->c = $pg->c;
               $newSoalPG->d = $pg->d;
               $newSoalPG->e = $pg->e;
               $newSoalPG->kunciJawaban = $pg->kunciJawaban;
               $newSoalPG->kategori = $pg->kategori;
               $newSoalPG->level = $pg->level;
               $newSoalPG->idBankSoal = $id;
               $newSoalPG->save();
             }

             foreach ($curIsi as $isi)
             {
               $newSoalIsian = new SoalIsian;
               $newSoalIsian->title = $isi->title;
               $newSoalIsian->soal = $isi->soal;
               $newSoalIsian->kunciJawaban = $isi->kunciJawaban;
               $newSoalIsian->kategori = $isi->kategori;
               $newSoalIsian->level = $isi->level;
               $newSoalIsian->idBankSoal = $id;
               $newSoalIsian->save();
            }

          }

        }
      }
      else
      {
          session()->flash('lebih','Soal tidak dapat ditambahkan karena melebihi jumlah soal yang ada');
      }


      return redirect()->back();
    }

}
