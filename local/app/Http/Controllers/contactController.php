<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;

class contactController extends Controller
{
    public function index(Request $request)
    {

      $register = Register::all();
      $mhs = Mahasiswa::all();
      $dosen = Dosen::all();

      return view('/contact',['register'=>$register , 'mhs'=>$mhs , 'dosen'=>$dosen]);
    }

    public function cari(Request $request)
    {

      // Where('name', 'like', '%' . Input::get('name') . '%')->get();
      // $unik2 = Mahasiswa::where('namaMahasiswa','like','_'.$request->a)->first();
      // $unik2 = Dosen::where('namaDosen',$request->nama)->first();

      return view('/contact',['register'=>$register]);
    }

    public function indexDosen(Request $request)
    {

      $register = Register::all();
      $mhs = Mahasiswa::all();
      $dosen = Dosen::all();

      return view('dosen.contactDosen',['register'=>$register , 'mhs'=>$mhs , 'dosen'=>$dosen]);
    }

}
