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
use App\Slider;


class sliderController extends Controller
{
    public function index(Request $request)
    {
      $slider = Slider::all();
      return view('admin.slider',['slider'=>$slider]);
    }
    public function edit(Request $request,$id)
    {
      $slider = Slider::find($id);
      return view('admin.updateSlider',['slider'=>$slider]);
    }
    public function update(Request $request,$id)
    {
      $slider = Slider::find($id);
      $input = $request->all();
      $request->validate(['gambar' => 'max:8388608 |mimes:jpeg,bmp,png']);

      if($request->hasFile('gambar'))
      {
        $gambar = $request->file('gambar');
        $ext = $gambar->getClientOriginalExtension();

        if($request->file('gambar')->isValid())
        {
          $gambar_name = $request->file('gambar')->getClientOriginalName();
          $upload_path = 'images/slider';
          $request->file('gambar')->move($upload_path,$gambar_name);
          $input['gambar'] = $gambar_name;
          session()->flash('success','Edit Poster Berhasil');
        }
        else
        {
          session()->flash('error','Tambah Poster Gagal');
        }
      }
      else
      {
        $gambar_name ="";
      }


      $slider->title = $request->title;
      $slider->fileName = $gambar_name;
      $slider->save();

      return redirect('/slider');
    }
    public function delete(Request $request,$id)
    {
      $slider = Slider::find($id);
      $slider->delete();
      session()->flash('success','Delete Poster Berhasil');
      return redirect('/slider');
    }
    public function create(Request $request)
    {
        $input = $request->all();
        $request->validate(['gambar' => 'max:8388608|mimes:jpeg,bmp,png']);
        if($request->hasFile('gambar'))
        {
          $gambar = $request->file('gambar');
          $ext = $gambar->getClientOriginalExtension();

          if($request->file('gambar')->isValid())
          {
            $gambar_name = $request->file('gambar')->getClientOriginalName();
            $upload_path = 'images/slider';
            $request->file('gambar')->move($upload_path,$gambar_name);
            $input['gambar'] = $gambar_name;
            session()->flash('success','Tambah Poster Berhasil');
          }
          else
          {
            session()->flash('error','Tambah Poster Gagal');
          }
        }
        else
        {
          $gambar_name ="";
        }


       $slider = new Slider;
       $slider->title = $request->title;
       $slider->fileName = $gambar_name;
       $slider->save();
       return redirect('/slider');
    }

}
