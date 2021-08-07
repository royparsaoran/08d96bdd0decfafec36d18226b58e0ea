<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use URL;
use DateTime;
use Carbon\Carbon;
use Session;
use Excel;


use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\Tournament;
use App\Livestream;
use App\DKBS;
use App\Semester;

class dkbsController extends Controller
{
    public function index(Request $request)
    {
      $dkbs = DB::select('select masterdkbs.matakuliah_kodeMK , masterdkbs.semester_namaSemester ,matakuliah.namaMK ,detaildkbs.mahasiswa_NRP ,mahasiswa.namaMhs , masterdkbs.kelas , matakuliah.sks,masterdkbs.hari,masterdkbs.jamMulai ,masterdkbs.jamBerakir ,masterdkbs.dosen_nik ,dosen.namaDosen ,masterdkbs.ruangan  FROM masterdkbs join detaildkbs ON masterdkbs.idMasterDKBS = detaildkbs.masterdkbs_idMasterDKBS JOIN dosen on masterdkbs.dosen_nik = dosen.nik JOIN matakuliah ON masterdkbs.matakuliah_kodeMK = matakuliah.kodeMK JOIN mahasiswa ON detaildkbs.mahasiswa_NRP=mahasiswa.nrp group by detaildkbs.idDetailDKBS');
      // return view('/dkbs')
      //     ->with('dkbs',$dkbs);
      return view('admin.dkbs',['dkbs'=>$dkbs]);
    }
    

    public function import(Request $request)
    {

      if($request->file('imported-file'))
        {
          $path = $request->file('imported-file')->getRealPath();
          $data = Excel::load($path, function($reader){
                  })->get();
            $i=0;
            if(!empty($data) && $data->count())
            {
              foreach ($data->toArray() as $row)
              {

                // $cekData = DB::table('masterdkbs')
                //           ->where('matakuliah_kodeMK',$data[$i]->matakuliah_kodemk)
                //           ->where('kelas',$data[$i]->kelas)
                //           ->get();
                $cekData = DB::table('masterdkbs')
                          ->where('matakuliah_kodeMK',$row['matakuliah_kodemk'])
                          ->where('kelas',$row['kelas'])
                          ->first();
                // dump($cekData);
                $return = null;
                if(!is_null($cekData)){
                   
                    $return = DB::table('detaildkbs')->insert([
                          'masterdkbs_idMasterDKBS' => $cekData->idMasterDKBS,
                          'mahasiswa_NRP'=> $row['nrp'],
                        ]);
                }else{
                  $return = DB::table('masterdkbs')->insert([
                          'matakuliah_kodeMK' => $row['matakuliah_kodemk'],
                          'semester_namaSemester'=> $row['semester_namasemester'],
                          'dosen_nik' => $row['dosen_nik'],
                          'kelas' => $row['kelas'],
                          'hari' => $row['hari'],
                          'jamMulai' => $row['jammulai'],
                          'jamBerakir' => $row['jamberakir'],
                          'ruangan' => $row['ruangan'],
                  ]);
                }
            }

            if(!empty($return))
            {
               // DKBS::insert($dataArray);
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
      // return $cekData;   
      return redirect()->back();
    }


public function import2(Request $request)
    {

      if($request->file('imported-file'))
        {
          $path = $request->file('imported-file')->getRealPath();
          $data = Excel::load($path, function($reader)
            {
                  })->get();

            if(!empty($data) && $data->count())
            {
              foreach ($data->toArray() as $row)
              {
                if(!empty($row))
                {
                  $dataArray2[] =
                  [
                    'masterdkbs_idMasterDKBS' => $row['masterdkbs_idmasterdkbs'],
                    'mahasiswa_NRP'=> $row['mahasiswa_nrp'],
                    // 'id' => $row['id'],
                    // 'kodeMK' => $row['kodemk'],
                    // 'namaMataKuliah' => $row['namamatakuliah'],
                    // 'nrp' => $row['nrp'],
                    // 'nama' => $row['nama'],
                    // 'kelas' => $row['kelas'],
                    // 'sks' => $row['sks'],
                    // 'hari' => $row['hari'],
                    // 'jamAwal' => $row['jamawal'],
                    // 'jamAkhir' => $row['jamakhir'],
                    // 'nik' => $row['nik'],
                    // 'dosen' => $row['dosen'],
                    // 'ruangan' => $row['ruangan'],
                  ];
                }
            }

            if(!empty($dataArray2))
            {
                DB::table('detaildkbs')->insert($dataArray2);
               // DKBS::insert($dataArray);
               session()->flash('message2','Data Berhasil Ditambahkan');
            }
            else {
              session()->flash('error2','Data Tidak Berhasil Ditambahkan');
            }
           }
         }
         else {
           session()->flash('error2','Data Tidak Berhasil Ditambahkan');
         }
      return redirect()->back();
    }


    public function export(Request $request)
    {
      $items_data = DB::select('select masterdkbs.matakuliah_kodeMK , masterdkbs.semester_namaSemester ,matakuliah.namaMK ,detaildkbs.mahasiswa_NRP ,mahasiswa.namaMhs , masterdkbs.kelas , matakuliah.sks,masterdkbs.hari,masterdkbs.jamMulai ,masterdkbs.jamBerakir ,masterdkbs.dosen_nik ,dosen.namaDosen ,masterdkbs.ruangan  FROM masterdkbs join detaildkbs ON masterdkbs.idMasterDKBS = detaildkbs.masterdkbs_idMasterDKBS JOIN dosen on masterdkbs.dosen_nik = dosen.nik JOIN matakuliah ON masterdkbs.matakuliah_kodeMK = matakuliah.kodeMK JOIN mahasiswa ON detaildkbs.mahasiswa_NRP=mahasiswa.nrp group by detaildkbs.idDetailDKBS');
      
      $items_array[] = array('Semester','KodeMK','Nama MataKuliah','NRP','Nama','Kelas','SKS','Hari','Jam Awal','Jam Akhir','NIK','Dosen','Ruangan');

      foreach ($items_data as $items){
          $items_array[] = array(
                          'Semester'        =>  $items->semester_namaSemester  ,
                          'KodeMK'          =>   $items->namaMK   ,
                          'Nama MataKuliah' =>  $items->namaMK  ,
                          'NRP'             =>   $items->mahasiswa_NRP  ,
                          'Nama'            =>   $items->namaMhs  ,
                          'Kelas'           =>   $items->kelas  ,
                          'SKS'             =>   $items->sks  ,
                          'Hari'            =>   $items->hari  ,
                          'Jam Awal'        =>   $items->jamMulai ,  
                          'Jam Akhir'       =>   $items->jamBerakir ,  
                          'NIK'             =>   $items->dosen_nik   ,
                          'Dosen'           =>   $items->namaDosen  , 
                          'Ruangan'         =>   $items->ruangan 
          );
       }
      Excel::create('DKBS', function($excel) use($items_array) {
          $excel->sheet('ExportFile', function($sheet) use($items_array) {
              $sheet->fromArray($items_array, null,'A1',false,false);
          });
      })->download('xlsx');
        return redirect()->back();
    }




    public function delete(Request $request)
    {
       DKBS::query()->truncate();

       return redirect()->back();
    }

}
