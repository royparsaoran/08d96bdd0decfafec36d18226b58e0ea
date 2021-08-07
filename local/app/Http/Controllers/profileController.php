<?php

namespace App\Http\Controllers;
// require 'vendor/autoload.php';
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
//use Intervention\Image\ImageManager as Image;
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

class profileController extends Controller
{
    public function index(Request $request)
    {
      $login = session::get('login');
      $mahasiswa = Mahasiswa::where('namaMhs',$login)->first();
      $dosen = Dosen::where('namaDosen',$login)->first();
      $user = null;
      if($mahasiswa != null)
      {
        $user = $mahasiswa;
      }
      else if ($dosen !=null)
      {
        $user = $dosen;
      }
      return view('profile',['user'=>$user]);
    }

    public function indexDosen(Request $request)
    {
      $login = session::get('login');
      $mahasiswa = Mahasiswa::where('namaMhs',$login)->first();
      $dosen = Dosen::where('namaDosen',$login)->first();
      $user = null;
      if($mahasiswa != null)
      {
        $user = $mahasiswa;
      }
      else if ($dosen !=null)
      {
        $user = $dosen;
      }
      return view('dosen.profileDosen',['user'=>$user]);
    }

    public function indexAdmin(Request $request)
    {
      return view('admin.profileAdmin');
    }

    public function edit(Request $request,$id)
    {
      $login = session::get('login');
      $mahasiswa = Mahasiswa::where('namaMhs',$login)->first();
      $dosen = Dosen::where('namaDosen',$login)->first();
      $user = null;
      if($mahasiswa != null)
      {
        $user = $mahasiswa;
      }
      else if ($dosen !=null)
      {
        $user = $dosen;
      }
      return view('profileUpdate',['user'=>$user]);
    }
    public function editDosen(Request $request,$id)
    {
      $login = session::get('login');
      $mahasiswa = Mahasiswa::where('namaMhs',$login)->first();
      $dosen = Dosen::where('namaDosen',$login)->first();
      $user = null;
      if($mahasiswa != null)
      {
        $user = $mahasiswa;
      }
      else if ($dosen !=null)
      {
        $user = $dosen;
      }
      return view('dosen.profileUpdateDosen',['user'=>$user]);
    }

    public function updateMahasiswa(Request $request,$id)
    {
      $request->validate([
          'gambar' => 'max:50000|mimes:jpeg,bmp,png',
      ]);
      $input = $request->all();

      $date = $request->tanggalLahir;
      $newDate = date("Y-m-d", strtotime($date));
      $mahasiswa = Mahasiswa::find($id);

      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = date('YmdHis'). ".$ext";
          $upload_path = 'images/foto';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
        }
      }

      // if($request->hasFile('gambar')) {
      //
      //     $gambar = $request->file('gambar');
      //     $ext = $gambar->getClientOriginalName();
      //
      //     if($request->file('gambar')->isValid())
      //     {
      //       $gambar_name = date('YmdHis'). ".$ext";
      //       $image_resize = Image::make($gambar->getRealPath());
      //       $image_resize->resize(300, 400);
      //       $image_resize->save(public_path('images/foto' .$gambar_name));
      //     }
      // }
      else
      {
        $gambar_name ="";
      }

      // $mahasiswa->nrp = $request->nrp;
      // $mahasiswa->namaMhs = $request->nama;
      $mahasiswa->email = $request->email;
      if($request->email2 != null)
      {
        $mahasiswa->email2 = $request->email2;
      }
      $mahasiswa->fakultas = $request->fakultas;
      $mahasiswa->prodi = $request->prodi;
      if($date !=null)
      {
        $mahasiswa->tanggalLahir = $newDate;
      }
      $mahasiswa->alamat = $request->alamat;
      // $mahasiswa->role = $request->role;
      $mahasiswa->kota = $request->kota;
      $mahasiswa->gender = $request->gender;
      $mahasiswa->telephone = $request->telephone;
      $mahasiswa->streamlink = $request->streamlink;
      if($request->password != null)
      {
        $mahasiswa->password = md5($request->password);
      }

      $mahasiswa->about = $request->about;
      // $mahasiswa->level = $request->level;
      // $mahasiswa->experience = $request->experience;
      if( $request->hasFile('gambar'))
      {
        $mahasiswa->foto = $gambar_name;
      }
      // $mahasiswa->warna = $request->warna;
      // $mahasiswa->status = $request->status;
      $mahasiswa->save();
      session(['foto' => $mahasiswa->foto]);
      return redirect('/profile');
    }

    public function updateDosen(Request $request,$id)
    {
      $input = $request->all();
      $date = $request->tanggalLahir;
      $newDate = date("Y-m-d", strtotime($date));
      $dosen = Dosen::find($id);



      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();
        if($request->file('gambar')->isValid())
        {
          $gambar_name = $request->file('gambar')->getClientOriginalName();
          $upload_path = 'images/foto';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;

        }
      }

      // $dosen->nik = $request->nrp;
      // $dosen->namaDosen = $request->nama;
      $dosen->email = $request->email;
      if($request->email2 != null)
      {
        $dosen->email2 = $request->email2;
      }
      $dosen->fakultas = $request->fakultas;
      $dosen->prodi = $request->prodi;
      if($date !=null)
      {
        $dosen->tanggalLahir = $newDate;
      }

      $dosen->alamat = $request->alamat;
      $dosen->gender = $request->gender;
      // $dosen->role = $request->role;
      $dosen->kota = $request->kota;
      $dosen->telephone = $request->telephone;
      $dosen->streamlink = $request->streamlink;
      if($request->password != null)
      {
        $dosen->password = md5($request->password);
      }
      $dosen->about = $request->about;
      // $dosen->level = $request->level;
      // $dosen->experience = $request->experience;
      if($request->hasFile('gambar'))
      {
        $dosen->foto = $gambar_name;
      }
      // $dosen->warna = $request->warna;
      // $dosen->status = $request->status;
      $dosen->save();
      session(['foto' => $dosen->foto]);

      return redirect('/profileDosen');
    }


}
