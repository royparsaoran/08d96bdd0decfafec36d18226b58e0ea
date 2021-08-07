<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;
use Carbon\Carbon;
use SoapClient;

use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Slider;
use App\Todo;
use App\Admin;
use App\Leaderboard;


class LoginController extends Controller
{


    public function index()
    {
     //$wsurl="http://10.2.2.4:8030/WSStudentProfilling/ws__9873691237415.asmx?wsdl";
     // $wsurl="https://services.maranatha.edu/wssupport/MaranathaService.asmx?wsdl";
		 // $appversion="1.U.2";
		 // $appcode="ZOXF25WB31IOM39L6ADTBH39EXQX4AXK";
     // $user = "1472011";
     // $password = "bonzomydog";
     //
     // $client = new SoapClient($wsurl);
     //
     // $token =$client->SLogin(['username'=>$user,'password'=>$password,'appcode'=>$appcode,'appversion'=>$appversion]);
     // // dd($token->SLoginResult);
     // $bio = $client->getListBioData(['token'=>$token->SLoginResult,'nrp'=>$user]);
     // //dd($bio->getListBioDataResult);
     //
     // if($token->SLoginResult == "B")
     // {
     //   dd("LOGIN GAGAL");
     // }
     // else
     // {
     //   dd("LOGIN BERHASIL");
     // }

      return view('/login');
    }

    public function verify(Request $request)
    {
      $username = $request->username;
      $pass = $request->pass;
      $password = md5($request->pass);
      $mhs = Mahasiswa::where('nrp',$username)->first();
      $dsn = Dosen::where('nik',$username)->first();
      $now = date("Y-m-d", strtotime(Carbon::now('Asia/Jakarta')));
      $result = substr($username,0,1);


	  //Manual Login Without SAT
      $register = Register::where('nrp',$username)->first();
      $mhsUsername = Mahasiswa::where('nrp',$username)->first();
      $mhsPassword = Mahasiswa::where('password',$password)->first();
      $dosenUsername = Dosen::where('nik',$username)->first();
      $dosenPassword = Dosen::where('password',$password)->first();


      $mahasiswa = Mahasiswa::where('nrp',$username)->where('password',$password)->first();
      $dosen = Dosen::where('nik',$username)->where('password',$password)->first();
      $admin = Admin::where('username',$username)->where('password',$password)->first();
        // dump($dosen->toArray());
        // die();
      $user= null;
      if($mahasiswa != null)
      {
        $user = $mahasiswa;
      }
      elseif($dosen != null)
      {
        $user = $dosen;
      }
      elseif($admin != null)
      {
        $user = "admin";
      }
      else
      {
        $user = null;
      }

      if($user != null)
      {
        if($user == "admin")
        {
          session(['login' => "Administrator"]);
          session(['roles' => "ADMIN"]);
          return redirect('/superadmin');
        }
        elseif($user->role == "Mahasiswa")
        {
          session(['nrp' => $username]);
          session(['login' => $user->namaMhs]);
          session(['foto' => $user->foto]);
          session(['roles' => $user->role]);
          return redirect('/home');
        }
        elseif($user->role == "Dosen")
        {
          session(['nrp' => $username]);
          session(['login' => $user->namaDosen]);
          session(['foto' => $user->foto]);
          session(['roles' => $user->role]);
          return redirect('/homeDosen');
        }
        elseif($user->role == "PJS")
        {
          session(['nrp' => $username]);
          session(['login' => $user->namaDosen]);
          session(['foto' => $user->foto]);
          session(['roles' => $user->role]);
          return redirect('/homeDosen');
        }


      }

      if($mhsUsername == null && $mhsPassword != null ||  $dosenUsername == null && $dosenPassword != null)
      {
          session()->flash('lupaUser','Password yang anda masukkan salah');
          return redirect('/login');
      }
      else if($mhsUsername != null && $mhsPassword == null || $dosenUsername != null && $dosenPassword == null)
      {
          session()->flash('lupaPass','Username yang anda masukkan salah');
          return redirect('/login');
      }
      else if($mhsUsername == null && $mhsPassword == null || $dosenUsername == null && $dosenPassword == null )
      {
          session()->flash('lupa','Username & Password yang anda masukkan salah');
          return redirect('/login');
      }
	  // END MANUAL LOGIN

    //   Login with SAT
    //
	  // $opts = array(
    //     'http' => array(
    //         'user_agent' => 'PHPSoapClient'
    //     )
		// );
		// $context = stream_context_create($opts);
    //
		// $wsdlUrl = 'https://services.maranatha.edu/wssupport/MaranathaService.asmx?wsdl';
		// $soapClientOptions = array(
		// 	'stream_context' => $context,
		// 	'cache_wsdl' => WSDL_CACHE_NONE
		// );
		// $appversion="1.U.2";
		// $appcode="ZOXF25WB31IOM39L6ADTBH39EXQX4AXK";
		// $client = new SoapClient($wsdlUrl, $soapClientOptions);
    //
    //
    //
    //   $wsurl="https://services.maranatha.edu/wssupport/MaranathaService.asmx?wsdl";
    //   // $appversion="1.U.2";
    //   // $appcode="ZOXF25WB31IOM39L6ADTBH39EXQX4AXK";
    //   //$user = "1472088";
    //   //$password = "RazorZz1996";
    //   //session()->flash('konfirmasi','Silahkan menunggu , akun belum dikonfirmasi');
    //   $client = new SoapClient($wsurl);
    //
    //   $token =$client->SLogin(['username'=>$username,'password'=>$pass,'appcode'=>$appcode,'appversion'=>$appversion]);
    //   //dd($token->SLoginResult);
    //   $bio = $client->getListBioData(['token'=>$token->SLoginResult,'nrp'=>$username]);
    //
    //   if($mhs==null && $result != "7" && $username != "1191965")
    //   {
    //     if($token->SLoginResult == "B")
    //     {
    //       session()->flash('lupa','Username dan Password belum terdaftar di SAT');
    //       return redirect('/login');
    //     }
    //     else if($token->SLoginResult == "C")
    //     {
    //       session()->flash('lupa','Username dan Password belum terdaftar di SAT');
    //       return redirect('/login');
    //
    //     }
    //     else
    //     {
    //
    //       $mahasiswa = new Mahasiswa;
    //       $mahasiswa->nrp = $username;
    //       $mahasiswa->namaMhs = $bio->getListBioDataResult->Nama;
    //       $mahasiswa->email = "it".$username."@student.it.maranatha.edu";
    //       $mahasiswa->fakultas =  "Fakultas Teknologi Informasi";
    //       $mahasiswa->prodi = "S-1 Teknik Informatika";
    //       $mahasiswa->tanggalLahir =  date("Y-m-d", strtotime($bio->getListBioDataResult->TglLahir));
    //       $mahasiswa->alamat = $bio->getListBioDataResult->Alamat;
    //       $mahasiswa->gender = "Pria";
    //       $mahasiswa->role = "Mahasiswa";
    //       $mahasiswa->kota =  $bio->getListBioDataResult->Kota;
    //       $mahasiswa->telephone = $bio->getListBioDataResult->Telp;
    //       $mahasiswa->streamlink = "";
    //       $mahasiswa->password = md5($request->pass);
    //       $mahasiswa->about = "Mahasiswa Fakultas Teknologi Informasi";
    //       $mahasiswa->level = 1;
    //       $mahasiswa->experience = 1;
    //       $mahasiswa->foto ="user.png";
    //       $mahasiswa->warna = "red";
    //       $mahasiswa->status = "aktif";
    //       $mahasiswa->save();
    //
    //       $leaderboard = new Leaderboard;
    //       $leaderboard->nama = $bio->getListBioDataResult->Nama;
    //       $leaderboard->nrp = $username;
    //       $leaderboard->emas = 0;
    //       $leaderboard->perak = 0;
    //       $leaderboard->perunggu = 0;
    //       $leaderboard->total = 0;
    //       $leaderboard->save();
    //
    //       session(['login' => $mahasiswa->namaMhs]);
    //       session(['foto' => $mahasiswa->foto]);
    //       session(['roles' => $mahasiswa->role]);
    //
    //       return redirect('/home');
    //     }
    //
    //   }
    //   else if($dsn == null && $result == "7" && $username != "1191965")
    //   {
    //     if($token->SLoginResult == "B")
    //     {
    //       session()->flash('lupa','Username dan Password belum terdaftar di SAT');
    //       return redirect('/login');
    //     }
    //     else if($token->SLoginResult == "C")
    //     {
    //       session()->flash('lupa','Username dan Password belum terdaftar di SAT');
    //       return redirect('/login');
    //
    //     }
    //     else
    //     {
    //
    //       $dosen = new Dosen;
    //       $dosen->nik = $username;
    //       $dosen->namaDosen = $bio->getListBioDataResult->Nama;
    //       $dosen->email = $bio->getListBioDataResult->Nama."@it.maranatha.edu";
    //       $dosen->fakultas =  "Fakultas Teknologi Informasi";
    //       $dosen->prodi = "S-1 Teknik Informatika";
    //       $dosen->tanggalLahir =  $bio->getListBioDataResult->TglLahir;
    //       $dosen->alamat = $bio->getListBioDataResult->Alamat;
    //       $dosen->gender = "Pria";
    //       $dosen->role = "Dosen";
    //       $dosen->kota =  $bio->getListBioDataResult->Kota;
    //       $dosen->telephone = $bio->getListBioDataResult->Telp;
    //       $dosen->streamlink = "";
    //       $dosen->password = md5($request->pass);
    //       $dosen->about = "Dosen Fakultas Teknologi Informasi";
    //       $dosen->level = 1;
    //       $dosen->experience = 1;
    //       $dosen->foto ="user.png";
    //       $dosen->warna = "red";
    //       $dosen->status = "aktif";
    //       $dosen->save();
    //
    //       session(['login' => $dosen->namaDosen]);
    //       session(['foto' => $dosen->foto]);
    //       session(['roles' => $dosen->role]);
    //       return redirect('/homeDosen');
    //
    //     }
    //
    //   }
    //   else
    //   {
    //
    //     $register = Register::where('nrp',$username)->first();
    //     $mhsUsername = Mahasiswa::where('nrp',$username)->first();
    //     $mhsPassword = Mahasiswa::where('password',$password)->first();
    //     $dosenUsername = Dosen::where('nik',$username)->first();
    //     $dosenPassword = Dosen::where('password',$password)->first();
    //
    //
    //     $mahasiswa = Mahasiswa::where('nrp',$username)->where('password',$password)->first();
    //     $dosen = Dosen::where('nik',$username)->where('password',$password)->first();
    //     $admin = Admin::where('username',$username)->where('password',$password)->first();
    //
    //     $user= null;
    //     if($mahasiswa != null)
    //     {
    //       $user = $mahasiswa;
    //     }
    //     elseif($dosen != null)
    //     {
    //       $user = $dosen;
    //     }
    //     elseif($admin != null)
    //     {
    //       $user = "admin";
    //     }
    //     else
    //     {
    //       $user = null;
    //     }
    //
    //     if($user != null)
    //   {
    //     if($user == "admin")
    //     {
    //       session(['login' => "Administrator"]);
    //       session(['roles' => "ADMIN"]);
    //       return redirect('/superadmin');
    //     }
    //     else if($user->role == "Mahasiswa")
    //     {
    //       session(['nrp' => $username]);
    //       session(['login' => $user->namaMhs]);
    //       session(['foto' => $user->foto]);
    //       session(['roles' => $user->role]);
    //       return redirect('/home');
    //     }
    //     else if($user->role == "Dosen")
    //     {
    //       session(['nrp' => $username]);
    //       session(['login' => $user->namaDosen]);
    //       session(['foto' => $user->foto]);
    //       session(['roles' => $user->role]);
    //       return redirect('/homeDosen');
    //     }
    //   }
    //
    //     if($mhsUsername == null && $mhsPassword != null ||  $dosenUsername == null && $dosenPassword != null)
    //     {
    //         session()->flash('lupaUser','Password yang anda masukkan salah');
    //         return redirect('/login');
    //     }
    //     else if($mhsUsername != null && $mhsPassword == null || $dosenUsername != null && $dosenPassword == null)
    //     {
    //         session()->flash('lupaPass','Username yang anda masukkan salah');
    //         return redirect('/login');
    //     }
    //     else if($mhsUsername == null && $mhsPassword == null || $dosenUsername == null && $dosenPassword == null )
    //     {
    //         session()->flash('lupa','Username & Password yang anda masukkan salah');
    //         return redirect('/login');
    //     }
    //   }
    //  return redirect()->back();
    }

    public function logout(Request $request)
    {
        session()->flush();
        return redirect('/login');
    }
}
