<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;

class RegisterController extends Controller
{
    public function index()
    {
      return view('/register');
    }

    public function create(Request $request)
    {
        $unik1 = Mahasiswa::where('nrp',$request->nrp)->first();
        $unik2 = Dosen::where('nik',$request->nrp)->first();
        $input = $request->all();
        $date = $request->tanggalLahir;
        $unik = Register::where('nrp',$request->nrp)->first();
        $newDate = date("Y-m-d", strtotime($date));
        $leaderboard = new Leaderboard;
        $register = new Register;

        $request->validate([
            'nrp' => 'required|unique:register|max:7',
            'nama' => 'required',
            'email' => 'required',
            'gambar' => 'max:8388608|mimes:jpeg,bmp,png',
            'fakultas' => 'required',
            'alamat' => 'required',
            'role' => 'required',
            'password' => 'required',
            'gender' => 'required',
        ]);

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
        else
        {
          $gambar_name ="";
        }
        if($unik1 != null)
        {
            session()->flash('registerGagal','Register Gagal NRP sudah terdaftar');
        }
        else if ($unik2 != null) {
            session()->flash('registerGagal','Register Gagal NIK sudah terdaftar');
        }

        else if($unik ==null)
        {
          $register->nrp = $request->nrp;
          $register->nama = $request->nama;
          $register->email = $request->email;
          $register->fakultas = $request->fakultas;
          $register->prodi = $request->prodi;
          $register->kota = $request->kota;
          $register->tanggalLahir = $newDate;
          $register->alamat = $request->alamat;
          $register->gender = $request->gender;
          $register->role = $request->role;
          $register->foto = $gambar_name;
          $register->streamlink = $request->streamlink;
          $register->password = md5($request->password);
          $register->telephone = $request->telephone;
          $register->about = $request->about;
          $register->save();

          session()->flash('registerBerhasil','Register Berhasil');
        }
        else
        {
          session()->flash('registerGagal','Register Gagal');
        }

        return redirect('register');
    }



}
