<?php



namespace App\Http\Controllers;

use Excel;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;



use App\Http\Requests;

use App\Register;

use App\Mahasiswa;

use App\Dosen;

use App\Leaderboard;



class superAdminController extends Controller

{

    public function index(Request $request)

    {



      $register = Register::all();

      $dosen = Dosen::all();

      $mahasiswa = Mahasiswa::all();



      return view('admin.superadmin',['register'=>$register,'mahasiswa'=>$mahasiswa,'dosen'=>$dosen]);

    }







    public function update(Request $request, $id)

    {

      $input = $request->all();

      $date = $request->tanggalLahir;

      $newDate = date("Y-m-d", strtotime($date));

      $register = Register::find($id);



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







      return redirect('/superadmin');

    }



    public function updateMahasiswa(Request $request, $id)

    {

      $input = $request->all();

      $date = $request->tanggalLahir;

      $newDate = date("Y-m-d", strtotime($date));

      $mahasiswa = Mahasiswa::find($id);

      $gambar_name ="user.png";

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

        $gambar_name ="user.png";

      }



      $mahasiswa->nrp = $request->nrp;

      $mahasiswa->namaMhs = $request->nama;

      $mahasiswa->email = $request->email;

      $mahasiswa->fakultas = $request->fakultas;

      $mahasiswa->prodi = $request->prodi;

      $mahasiswa->tanggalLahir = $newDate;

      $mahasiswa->alamat = $request->alamat;

      $mahasiswa->role = $request->role;

      $mahasiswa->kota = $request->kota;

      $mahasiswa->gender = $request->gender;

      $mahasiswa->telephone = $request->telephone;

      $mahasiswa->streamlink = $request->streamlink;

      $mahasiswa->password = md5($request->password);

      $mahasiswa->about = $request->about;

      $mahasiswa->level = $request->level;

      $mahasiswa->experience = $request->experience;

      $mahasiswa->foto = $gambar_name;

      $mahasiswa->warna = $request->warna;

      $mahasiswa->status = $request->status;

      $mahasiswa->save();



      return redirect('/superadmin');

    }



    public function updateDosen(Request $request, $id)

    {

      $input = $request->all();

      $date = $request->tanggalLahir;

      $newDate = date("Y-m-d", strtotime($date));

      $dosen = Dosen::find($id);





      $gambar_name ="user.png";

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

        $gambar_name ="user.png";

      }



      $dosen->nik = $request->nrp;

      $dosen->namaDosen = $request->nama;

      $dosen->email = $request->email;

      $dosen->fakultas = $request->fakultas;

      $dosen->prodi = $request->prodi;

      $dosen->tanggalLahir = $newDate;

      $dosen->alamat = $request->alamat;

      $dosen->gender = $request->gender;

      $dosen->role = $request->role;

      $dosen->kota = $request->kota;

      $dosen->telephone = $request->telephone;

      $dosen->streamlink = $request->streamlink;

      $dosen->password = md5($request->password);

      $dosen->about = $request->about;

      $dosen->level = $request->level;

      $dosen->experience = $request->experience;

      $dosen->foto = $gambar_name;

      $dosen->warna = $request->warna;

      $dosen->status = $request->status;

      $dosen->save();



      return redirect('/superadmin');

    }





    public function edit($id)

    {

      $register = Register::find($id);

      return view('admin.update',['register'=>$register]);

    }

    public function editMahasiswa($id)

    {

      $mahasiswa = Mahasiswa::find($id);

      return view('admin.updateMahasiswa',['mahasiswa'=>$mahasiswa]);

    }

    public function editDosen($id)

    {

      $dosen = Dosen::find($id);

      return view('admin.updateDosen',['dosen'=>$dosen]);

    }



    public function delete($id)

    {

      $register = Register::find($id);

      $register->delete();

      return redirect('/superadmin');

    }

    public function deleteMahasiswa($id)

    {

      $mahasiswa = Mahasiswa::find($id);

      $mahasiswa->delete();

      return redirect('/superadmin');

    }

    public function deleteDosen($id)

    {

      $dosen = Dosen::find($id);

      $dosen->delete();

      return redirect('/superadmin');

    }



    public function insert(Request $request,$id)

    {

      $register = Register::find($id);

      $leaderboard = new Leaderboard;

      $unik1 = Mahasiswa::where('nrp',$register->nrp)->first();

      $unik2 = Dosen::where('nik',$register->nrp)->first();

      $input = $request->all();

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

        $gambar_name ="user.png";

      }

      if($unik1 == null && $unik2 == null)

      {



          if($register->role == "Mahasiswa")

          {

            $mahasiswa = new Mahasiswa;

            $mahasiswa->nrp = $register->nrp;

            $mahasiswa->namaMhs = $register->nama;

            $mahasiswa->email = $register->email;

            $mahasiswa->fakultas = $register->fakultas;

            $mahasiswa->prodi = $register->prodi;

            $mahasiswa->tanggalLahir = $register->tanggalLahir;

            $mahasiswa->alamat = $register->alamat;

            $mahasiswa->gender = $register->gender;

            $mahasiswa->role = $register->role;

            $mahasiswa->kota = $register->kota;

            $mahasiswa->telephone = $register->telephone;

            $mahasiswa->streamlink = $register->streamlink;

            $mahasiswa->password = $register->password;

            $mahasiswa->about = $register->about;

            $mahasiswa->level = 1;

            $mahasiswa->experience = 1;

            $mahasiswa->foto = $register->foto;

            $mahasiswa->warna = "red";

            $mahasiswa->status = "aktif";

            $mahasiswa->save();



            $leaderboard->nama = $register->nama;

            $leaderboard->nrp = $register->nrp;

            $leaderboard->emas = 0;

            $leaderboard->perak = 0;

            $leaderboard->perunggu = 0;

            $leaderboard->total = 0;

            $leaderboard->save();

            $register->delete();

          }

          else if($register->role == "Dosen")

          {

            $dosen = new Dosen;

            $dosen->nik = $register->nrp;

            $dosen->namaDosen = $register->nama;

            $dosen->email = $register->email;

            $dosen->fakultas = $register->fakultas;

            $dosen->prodi = $register->prodi;

            $dosen->tanggalLahir = $register->tanggalLahir;

            $dosen->alamat = $register->alamat;

            $dosen->gender = $register->gender;

            $dosen->role = $register->role;

            $dosen->kota = $register->kota;

            $dosen->telephone = $register->telephone;

            $dosen->streamlink = $register->streamlink;

            $dosen->password = $register->password;

            $dosen->about = $register->about;

            $dosen->level = 1;

            $dosen->experience = 1;

            $dosen->foto = $gambar_name;

            $dosen->warna = "red";

            $dosen->status = "aktif";

            $dosen->save();

            $register->delete();

          }



      }



      return redirect('/superadmin');

    }

    
public function importMahasiswa(Request $request)

{
  $fakultas = null;
  $prodi = null;
  $mhs = null;
      if($request->file('imported-file'))
        {
          $path = $request->file('imported-file')->getRealPath();
          $data = Excel::load($path, function($reader)
            {
                  })->get();
                  // dd($data);
            if(!empty($data) && $data->count())
            {
              foreach ($data->toArray() as $row)
              {
              $mhs =  DB::table('mahasiswa')
              ->where('nrp', $row['nrp'])
              ->get();
              // dd(count($mhs)); 
              // IF
              if(substr($row['nrp'], 2, 2)=="72"){
                $fakultas = "Fakultas Teknologi Informasi";
                $prodi = "S-1 Teknik Informatika";
              }else if(substr($row['nrp'], 2, 2)=="73"){
                $fakultas = "Fakultas Teknologi Informasi";
                $prodi = "S-1 Sistem Informasi";
              } 
                // dd($prodi);
                if(!empty($row) && $row['cek'] != 1 && count($mhs)==0)
                {
                  $dataArray[] =
                  [
                    
                    'nrp' => $row['nrp'],
                    'namaMhs'=> $row['namamhs'],
                    'password' => md5($row['password']),
                    'fakultas' => $fakultas,
                    'prodi' => $prodi,
                    'email' => $row['email'],
                    'tanggalLahir' => $row['tanggallahir'],
                    'alamat' => $row['alamat'],
                    'gender' => $row['gender'],
                    'telephone' => $row['telephone'],
                    'kota' => $row['kota'],
                    'level' => 1,
                    'experience' =>1,
                    'role' => 'Mahasiswa',
                    'warna' => 'red',
                    'status' => 'aktif',
                    'about' => 'Mahasiswa Fakultas Teknologi Informasi',
                  ];
                }
                if(count($mhs)==1){
                  DB::table('mahasiswa')
                  ->where('nrp', $row['nrp']) 
                  ->limit(1)  
                  ->update(array('email' => $row['email']));
                }
            }

            

            if(!empty($dataArray))
            {
              // DB::table('mahasiswa')->insert($dataArray);
               Mahasiswa::insert($dataArray);
               session()->flash('message','Data Berhasil Ditambahkan');
            }
            else {
              session()->flash('error','Data Tidak Berhasil Ditambahkan');
            }
           }
         }
         else {
           session()->flash('error','Data Tidak Berhasil Ditambahkan');
         }
         
      return redirect()->back();

}





public function exportMahasiswa(Request $request)

{

  $items_data = DB::select('select * from mahasiswa');

  

  $items_array[] = array('NRP','Nama Mahasiswa','Fakultas','Prodi','Email','Email 2','Tanggal Lahir','Alamat','Gender','Telephone','Kota','Level','Experience','Stream Link','Role');



  foreach ($items_data as $items){

      $items_array[] = array(

                      'NRP'        =>  $items->nrp  ,

                      'Nama Mahasiswa'          =>   $items->namaMhs   ,

                      'Fakultas' =>  $items->fakultas  ,

                      'Prodi'             =>   $items->prodi  ,

                      'Email'            =>   $items->email  ,

                      'Email 2'           =>   $items->email2  ,

                      'Tanggal Lahir'             =>   $items->tanggalLahir  ,

                      'Alamat'            =>   $items->alamat ,

                      'Gender'        =>   $items->gender ,  

                      'Telephone'       =>   $items->telephone ,  

                      'Kota'             =>   $items->kota   ,

                      'Level'           =>   $items->level  , 

                      'Experience'         =>   $items->experience , 

                      'Stream Link'         =>   $items->streamlink , 

                      'Role'         =>   $items->role ,

      );

   }

  Excel::create('Mahasiswa', function($excel) use($items_array) {

      $excel->sheet('ExportFile', function($sheet) use($items_array) {

          $sheet->fromArray($items_array, null,'A1',false,false);

      });

  })->download('xlsx');

    return redirect()->back();

}


public function importDosen(Request $request)

{
      if($request->file('imported-file'))
        {
          $path = $request->file('imported-file')->getRealPath();
          $data = Excel::load($path, function($reader)
            {
                  })->get();
                  // dd($data);
            if(!empty($data) && $data->count())
            {
              foreach ($data->toArray() as $row)
              {

                if(!empty($row) && $row['cek'] != 1)
                {
                  $dataArray[] =
                  [   
                    'nik' => $row['nik'],
                    'namaDosen'=> $row['namadosen'],
                    'password' => md5($row['password']),
                    'fakultas' => $row['fakultas'],
                    'prodi' => $row['prodi'],
                    'email' => $row['email'],
                    'tanggalLahir' => $row['tanggallahir'],
                    'alamat' => $row['alamat'],
                    'gender' => $row['gender'],
                    'telephone' => $row['telephone'],
                    'kota' => $row['kota'],
                    'level' => 1,
                    'foto' => 'user.png',
                    'experience' => 1,
                    'role' => 'Dosen',
                    'warna' => 'red',
                    'status' => 'aktif',
                  ];
                }
            }

            

            if(!empty($dataArray))
            {
               Dosen::insert($dataArray);
               session()->flash('message','Data Berhasil Ditambahkan');
            }
            else {
              session()->flash('error','Data Tidak Berhasil Ditambahkan');
            }
           }
         }
         else {
           session()->flash('error','Data Tidak Berhasil Ditambahkan');
         }
         
      return redirect()->back();

}





public function exportDosen(Request $request)

{

  $items_data = DB::select('select * from dosen');

  

  $items_array[] = array('NIK','Nama Dosen','Fakultas','Prodi','Email','Email 2','Tanggal Lahir','Alamat','Gender','Telephone','Kota','Level','Experience','Stream Link','Role');



  foreach ($items_data as $items){

      $items_array[] = array(

                      'NIK'        =>  $items->nik  ,

                      'Nama Dosen'          =>   $items->namaDosen   ,

                      'Fakultas' =>  $items->fakultas  ,

                      'Prodi'             =>   $items->prodi  ,

                      'Email'            =>   $items->email  ,

                      'Email 2'           =>   $items->email2  ,

                      'Tanggal Lahir'             =>   $items->tanggalLahir  ,

                      'Alamat'            =>   $items->alamat ,

                      'Gender'        =>   $items->gender ,  

                      'Telephone'       =>   $items->telephone ,  

                      'Kota'             =>   $items->kota   ,

                      'Level'           =>   $items->level  , 

                      'Experience'         =>   $items->experience , 

                      'Stream Link'         =>   $items->streamlink , 

                      'Role'         =>   $items->role ,

      );

   }

  Excel::create('Dosen', function($excel) use($items_array) {

      $excel->sheet('ExportFile', function($sheet) use($items_array) {

          $sheet->fromArray($items_array, null,'A1',false,false);

      });

  })->download('xlsx');

    return redirect()->back();

}




}

