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

use App\MataKuliah;



class coursesController extends Controller

{

    public function index(Request $request)

    {

      $data = DB::select('select * from matakuliah');

      return view('admin.courses',['data'=>$data]);

    }
   
    public function import(Request $request)

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
                    if(!empty($row))
                    {
                      $dataArray[] =
                      [
                        
                        'kodeMK' => $row['kodemk'],
                        'namaMK'=> $row['namamk'],
                        'sks' => $row['sks'],
                        'semester' => $row['semester'],
                      ];
                    }
                }
    
                
    
                if(!empty($dataArray))
                {
                  // DB::table('mahasiswa')->insert($dataArray);
                   MataKuliah::insert($dataArray);
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
    
    
    
    
    
    public function export(Request $request)
    
    {
    
      $items_data = DB::select('select * from matakuliah');
    
      
    
      $items_array[] = array('KodeMK','NamaMK','SKS',"Semester");
    
    
    
      foreach ($items_data as $items){
    
          $items_array[] = array(
    
                          'KodeMK'        =>  $items->kodeMK  ,
    
                          'NamaMK'          =>   $items->namaMK   ,
    
                          'SKS' =>  $items->sks  ,
    
                          'Semester'             =>   $items->semester  ,
    
          );
    
       }
    
      Excel::create('Courses', function($excel) use($items_array) {
    
          $excel->sheet('ExportFile', function($sheet) use($items_array) {
    
              $sheet->fromArray($items_array, null,'A1',false,false);
    
          });
    
      })->download('xlsx');
    
        return redirect()->back();
    
    }
    




}

