@extends('layouts.master')

@section('css')

    <!-- Bootstrap -->
    <link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
    <!-- iCheck -->
    <link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
    <!-- Switchery -->
    <link href="{{URL::asset('vendors/switchery/dist/switchery.min.css')}}" rel="stylesheet">
    <!-- Datatables -->
    <link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

    <style type="text/css">
      #nilai
      {
        font-size: 100px;
      }
    </style>
@endsection

@section('content')
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Forecasting <small></small></h3>
              </div>
            </div>

            <div class="clearfix"></div>


              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Forecasting Gaya Belajar</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Gaya Belajar</a></li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Nilai Mutu</a></li>
                        <!-- <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Forecasting</a></li> -->
                        <br/>
                      </ul>
                      <div id="myTabContent" class="tab-content">

                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                             <?php if ($mahasiswa == null ): ?>
                               <h1>Menebak Gaya Belajar</h1>
                               <h3>Berikut adalah fitur forecasting gaya belajar yang diharapkan sesuai dengan gaya belajar anda,bisa saja seseorang mempunyai lebih dari satu gaya belajar, tetapi pasti ada yang lebih dominan dibandingkan dengan gaya belajar yang lain. Dengan memaksimalkan gaya belajar tersebut diharapkan dapat meningkatkan penguasaan materi dalam proses pembelajaran.</h3>
                               {!! Form::open(['method' => 'POST' , 'action' => 'forecastingController@createGayaBelajar']  ) !!}
                               <table id="datatable-keytable" class="table table-striped table-bordered">
                                 <thead>
                                   <tr>
                                     <th>No</th>
                                     <th>Pertanyaan</th>
                                     <th>Ya</th>
                                     <th>Tidak</th>
                                   </tr>
                                 </thead>
                                 <tbody>
                                   <tr>
                                       <td>1.</td>
                                       <td>Saya lebih suka mendengarkan informasi yang ada di kaset daripada membaca buku.</td>
                                       <td>
                                         {{ Form::radio("satu","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("satu", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("satu","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("satu", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>2.</td>
                                       <td>Jika mengerjakan sesuatu, saya selalu membaca instruksinya terlebih dahulu.</td>
                                       <td>
                                         {{ Form::radio("dua","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("dua", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("dua","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("dua", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>3.</td>
                                       <td>Saya lebih suka membaca daripada mendengarkan kuliah/penjelasan.</td>
                                       <td>
                                         {{ Form::radio("tiga","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tiga", 'Ya') }}

                                       </td>
                                       <td>
                                         {{ Form::radio("tiga","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tiga", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>4.</td>
                                       <td>Saat seorang diri, saya biasanya memainkan musik/lagu atau bernyanyi.</td>
                                       <td>
                                         {{ Form::radio("empat","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("empat", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("empat","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("empat", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>5.</td>
                                       <td>Saya lebih suka berolahraga daripada membaca buku.</td>
                                       <td>
                                         {{ Form::radio("lima","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("lima", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("lima","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("lima", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>6.</td>
                                       <td>Saya selalu dapat menunjukkan arah Utara atau Selatan di mana pun saya berada.</td>
                                       <td>
                                         {{ Form::radio("enam","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("enam", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("enam","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("enam", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>7.</td>
                                       <td>Saya suka menulis surat, jurnal atau buku harian.</td>
                                       <td>
                                         {{ Form::radio("tujuh","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tujuh", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tujuh","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tujuh", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>8.</td>
                                       <td>Saat berbicara, saya suka mengatakan, “Saya mendengar Anda, itu terdengar bagus, itu bunyinya bagus.</td>
                                       <td>
                                         {{ Form::radio("delapan","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("delapan", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("delapan","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("delapan", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>9.</td>
                                       <td>Ruangan, meja, mobil atau rumah saya biasanya berantakan/tidak teratur.</td>
                                       <td>
                                         {{ Form::radio("sembilan","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("sembilan", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("sembilan","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("sembilan", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>10.</td>
                                       <td>Saya suka merancang, mengerjakan dan membuat sesuatu dengan kedua tangan saya.</td>
                                       <td>
                                         {{ Form::radio("sepuluh","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("sepuluh", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("sepuluh","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("sepuluh", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>11.</td>
                                       <td>Saya tahu hampir semua kata dari lagu yang saya dengar.</td>
                                       <td>
                                         {{ Form::radio("sebelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("sebelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("sebelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("sebelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>12.</td>
                                       <td>Ketika mendengar orang lain berbicara, saya biasanya membuat gambar dari apa yang mereka katakan dalam pikiran saya.</td>
                                       <td>
                                         {{ Form::radio("duabelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duabelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duabelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duabelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>13.</td>
                                       <td>Saya suka olahraga dan rasanya saya adalah olahragawan yang baik.</td>
                                       <td>
                                         {{ Form::radio("tigabelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigabelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigabelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigabelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>14.</td>
                                       <td>Mudah sekali bagi saya untuk mengobrol dalam waktu yang lama dengan kawan saya saat berbicara di telepon.</td>
                                       <td>
                                         {{ Form::radio("empatbelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("empatbelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("empatbelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("empatbelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>15.</td>
                                       <td>Tanpa musik, hidup amat membosankan.</td>
                                       <td>
                                         {{ Form::radio("limabelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("limabelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("limabelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("limabelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>16.</td>
                                       <td>Saya sangat senang berkumpul dan biasanya dapat dengan mudah berbicara dengan siapa saja.</td>
                                       <td>
                                         {{ Form::radio("enambelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("enambelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("enambelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("enambelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>17.</td>
                                       <td>Saat melihat obyek dalam bentuk gambar, saya dapat dengan mudah mengenali obyek yang sama walaupun posisi obyek itu diputar/diubah.</td>
                                       <td>
                                         {{ Form::radio("tujuhbelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tujuhbelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tujuhbelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tujuhbelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>18.</td>
                                       <td>Saya biasanya mengatakan, “Saya rasa, saya perlu menemukan pijakan atas hal ini, atau saya ingin bisa menangani hal ini.</td>
                                       <td>
                                         {{ Form::radio("delapanbelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("delapanbelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("delapanbelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("delapanbelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>19.</td>
                                       <td>Saat mengingat suatu pengalaman, saya sering kali melihat pengalaman itu dalam bentuk gambar di dalam pikiran saya.</td>
                                       <td>
                                         {{ Form::radio("sembilanbelas","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("sembilanbelas", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("sembilanbelas","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("sembilanbelas", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>20.</td>
                                       <td>Saat mengingat suatu pengalaman, saya seringkali mendengar suara dan berbicara pada diri saya mengenai pengalaman itu.</td>
                                       <td>
                                         {{ Form::radio("duapuluh","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duapuluh", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duapuluh","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duapuluh", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>21.</td>
                                       <td>Saat mengingat suatu pengalaman, saya seringkali ingat bagaimana perasaan saya terhadap pengalaman itu.</td>
                                       <td>
                                         {{ Form::radio("duasatu","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duasatu", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duasatu","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duasatu", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>22.</td>
                                       <td>Saya lebih suka musik daripada seni lukis.</td>
                                       <td>
                                         {{ Form::radio("duadua","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duadua", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duadua","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duadua", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>23.</td>
                                       <td>Saya sering mencoret-coret kertas saat berbicara di telepon atau dalam suatu pertemuan/rapat.</td>
                                       <td>
                                         {{ Form::radio("duatiga","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duatiga", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duatiga","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duatiga", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>24.</td>
                                       <td>Saya lebih suka melakukan contoh peragaan daripada membuat laporan tertulis atas suatu kejadian.</td>
                                       <td>
                                         {{ Form::radio("duaempat","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duaempat", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duaempat","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duaempat", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>25.</td>
                                       <td>Saya lebih suka membacakan cerita daripada mendengarkan.</td>
                                       <td>
                                         {{ Form::radio("dualima","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("dualima", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("dualima","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("dualima", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>26.</td>
                                       <td>Saya biasanya berbicara dengan perlahan.</td>
                                       <td>
                                         {{ Form::radio("duaenam","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duaenam", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duaenam","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duaenam", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>27.</td>
                                       <td>Saya lebih suka berbicara daripada menulis.</td>
                                       <td>
                                         {{ Form::radio("duatujuh","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duatujuh", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duatujuh","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duatujuh", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>28.</td>
                                       <td>Tulisan tangan saya biasanya tidak rapi.</td>
                                       <td>
                                         {{ Form::radio("duadelapan","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duadelapan", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duadelapan","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duadelapan", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>29.</td>
                                       <td>Saya biasanya menggunakan jari saya untuk menunjuk kalimat yang saya baca.</td>
                                       <td>
                                         {{ Form::radio("duasembilan","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("duasembilan", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("duasembilan","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("duasembilan", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>30.</td>
                                       <td>Saya dapat dengan cepat melakukan penjumlahan dan perkalian dalam pikiran saya.</td>
                                       <td>
                                         {{ Form::radio("tigapuluh","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigapuluh", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigapuluh","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigapuluh", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>31.</td>
                                       <td>Saya suka mengeja dan saya pintar mengeja kata-kata.</td>
                                       <td>
                                         {{ Form::radio("tigasatu","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigasatu", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigasatu","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigasatu", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>32.</td>
                                       <td>Saya akan sangat terganggu apabila ada orang yang berbicara pada saya saat sedang nonton TV.</td>
                                       <td>
                                         {{ Form::radio("tigadua","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigadua", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigadua","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigadua", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>33.</td>
                                       <td>Saya suka mencatat perintah/instruksi yang disampaikan pada saya.</td>
                                       <td>
                                         {{ Form::radio("tigatiga","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigatiga", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigatiga","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigatiga", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>34.</td>
                                       <td>Saya dapat mengingat dengan mudah apa yang orang katakan.</td>
                                       <td>
                                         {{ Form::radio("tigaempat","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigaempat", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigaempat","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigaempat", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>35.</td>
                                       <td>Saya paling mudah belajar sambil mempraktekkan/melakukan.</td>
                                       <td>
                                         {{ Form::radio("tigalima","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigalima", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigalima","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigalima", 'Tidak') }}
                                       </td>
                                   </tr>
                                   <tr>
                                       <td>36.</td>
                                       <td>Sangat sulit bagi saya untuk duduk diam dalam waktu yang lama.</td>
                                       <td>
                                         {{ Form::radio("tigaenam","Ya", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigaenam", 'Ya') }}
                                       </td>
                                       <td>
                                         {{ Form::radio("tigaenam","Tidak", false, ['class' => 'flat']) }}
                                         {{ Form::label("tigaenam", 'Tidak') }}
                                       </td>
                                   </tr>
                                 </tbody>
                               </table>
                               <div align="center">
                                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Terminate</button>

                 <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                   <div class="modal-dialog modal-sm">
                     <div class="modal-content">

                       <div class="modal-header">
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                         </button>
                         <h4 class="modal-title" id="myModalLabel2"><i class="fa fa-warning"></i><font color="red" size="5"> ATTENTION !!!</font></h4>
                       </div>
                       <div class="modal-body">
                         <h4>Apakah anda yakin dengan jawaban yang ada ?</h4>
                         <p>Periksalah kembali jawaban anda jika belum yakin dengan menutup halaman ini dan memeriksa kembali</p>
                       </div>
                       <div class="modal-footer">
                         <div align="center">
                           <button id="send" type="submit" class="btn btn-primary" name="btnGayaBelajar">Submit</button>
                           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                         </div>
                       </div>

                     </div>
                   </div>
                 </div>

                               </div>
                               {{csrf_field()}}

                           {!! Form::close() !!}




 <?php elseif ($mahasiswa->gaya == "kinestetik"): ?>
                      <h2>Kinestetik</h2>
                      <label>Model pembelajar kinestetik adalah pembelajar yang menyerap informasi melalui berbagai gerakan fisik.Ciri-ciri pembelajar kinestetik, di antaranya adalah:</label>
                      <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>No</th>
                            <th>Teknik Pembelajar kinestetik</th>
                          </tr>
                        </thead>
                        <tbody>

                          <tr>
                            <th scope="row">1</th>
                            <td>Selalu berorientasi fisik dan banyak bergerak</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Berbicara dengan perlahan</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Menanggapi perhatian fisik</td>
                          </tr>
                          <tr>
                            <th scope="row">4</th>
                            <td>Suka menggunakan berbagai peralatan dan media</td>
                          </tr>
                          <tr>
                            <th scope="row">5</th>
                            <td>Menyentuh orang untuk mendapatkan perhatian mereka</td>
                          </tr>
                          <tr>
                            <th scope="row">6</th>
                            <td>Berdiri dekat ketika berbicara dengan orang</td>
                          </tr>
                          <tr>
                            <th scope="row">7</th>
                            <td>Belajar melalui praktek</td>
                          </tr>
                          <tr>
                            <th scope="row">8</th>
                            <td>Mempunyai perkembangan awal otot-otot yang besar</td>
                          </tr>
                          <tr>
                            <th scope="row">9</th>
                            <td>Menghafal dengan cara berjalan dan melihat</td>
                          </tr>
                          <tr>
                            <th scope="row">10</th>
                            <td>Menggunakan jari sebagai penunjuk ketika membaca</td>
                          </tr>
                          <tr>
                            <th scope="row">11</th>
                            <td>Banyak menggunakan isyarat tubuh</td>
                          </tr>
                          <tr>
                            <th scope="row">12</th>
                            <td>Tidak dapat duduk diam untuk waktu lama</td>
                          </tr>
                          <tr>
                            <th scope="row">13</th>
                            <td>Menggunakan kata-kata yang menandung aksi</td>
                          </tr>
                          <tr>
                            <th scope="row">14</th>
                            <td>Menyukai buku-buku yang berorientasi pada cerita</td>
                          </tr>
                          <tr>
                            <th scope="row">15</th>
                            <td>Kemungkinan tulisannya jelek</td>
                          </tr>
                          <tr>
                            <th scope="row">16</th>
                            <td>Ingin melakukan segala sesuatu</td>
                          </tr>
                          <tr>
                            <th scope="row">17</th>
                            <td>Menyukai permainan dan olah raga</td>
                          </tr>

                        </tbody>
                      </table>



                                    <?php elseif ($mahasiswa->gaya == "visual"): ?>
                                      <h2>Visual</h2>
                                      <label>Modalitas ini menyerap citra terkait dengan visual, warna, gambar, peta, diagram. Model pembelajar visual menyerap informasi dan belajar dari apa yang dilihat oleh mata. Beberapa ciri dari pembelajar visual di antaranya adalah:</label>
                                      <table class="table table-hover">
                                        <thead>
                                          <tr>
                                            <th>No</th>
                                            <th>Teknik Pembelajar Visual</th>
                                          </tr>
                                        </thead>
                                        <tbody>

                                          <tr>
                                            <th scope="row">1</th>
                                            <td>Mengingat apa yang dilihat, daripada yang didengar.</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">2</th>
                                            <td>Suka mencoret-coret sesuatu, yang terkadang tanpa ada artinya saat di dalam kelas</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">3</th>
                                            <td>Pembaca cepat dan tekun</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">4</th>
                                            <td>Lebih suka membaca daripada dibacakan</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">5</th>
                                            <td>Rapi dan teratur</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">6</th>
                                            <td>Mementingkan penampilan, dalam hal pakaian ataupun penampilan keseluruhan</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">7</th>
                                            <td>Teliti terhadap detail</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">8</th>
                                            <td>Pengeja yang baik</td>
                                          </tr>
                                          <tr>
                                            <th scope="row">9</th>
                                            <td>Lebih memahami gambar dan bagan daripada instruksi tertulis</td>
                                          </tr>


                                        </tbody>
                                      </table>



                              <?php elseif ($mahasiswa->gaya == "auditori"): ?>
                                <h2>Auditori</h2>
                                <label>Model pembelajar auditori adalah model di mana seseorang lebih cepat menyerap informasi melalui apa yang ia dengarkan. Penjelasan tertulis akan lebih mudah ditangkap oleh para pembelajar auditori ini. Ciri-ciri orang-orang auditorial, di antaranya adalah:</label>
                                <table class="table table-hover">
                                  <thead>
                                    <tr>
                                      <th>No</th>
                                      <th>Teknik Pembelajar Auditori</th>
                                    </tr>
                                  </thead>
                                  <tbody>

                                    <tr>
                                      <th scope="row">1</th>
                                      <td>Lebih cepat menyerap dengan mendengarkan</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">2</th>
                                      <td>Menggerakkan bibir mereka dan mengucapkan tulisan di buku ketika membaca</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">3</th>
                                      <td>Senang membaca dengan keras dan mendengarkan</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">4</th>
                                      <td>Dapat mengulangi kembali dan menirukan nada, birama, dan warna suara.</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">5</th>
                                      <td>Bagus dalam berbicara dan bercerita</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">6</th>
                                      <td>Berbicara dengan irama yang terpola</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">7</th>
                                      <td>Belajar dengan mendengarkan dan mengingat apa yang didiskusikan daripada yang dilihat</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">8</th>
                                      <td>Suka berbicara, suka berdiskusi, dan menjelaskan sesuatu panjang lebar</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">9</th>
                                      <td>Lebih pandai mengeja dengan keras daripada menuliskannya</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">10</th>
                                      <td>Suka musik dan bernyanyi</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">11</th>
                                      <td>Tidak bisa diam dalam waktu lama</td>
                                    </tr>
                                    <tr>
                                      <th scope="row">12</th>
                                      <td>Suka mengerjakan tugas kelompok</td>
                                    </tr>

                                  </tbody>
                                </table>

<?php endif; ?>



                        <!-- Adi W.Gunawan.2012.Genius Learning Strategy.Jakarta:PT.Gramedia Pustaka Utama -->


                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                          <form class="form-inline">
                            <div align="center">
                              <div class="form-group">
                                <label for="ex3">Bobot UTS</label>
                                <input type="text" id="buts" name="buts" class="form-control"  value="25" onkeypress="return isNumeric(event)" oninput="maxLengthCheck(this)"  maxlength = "3" min = "1" max = "999">
                              </div>
                              <div class="form-group">
                                <label for="ex4">Bobot UAS</label>
                                <input type="text" id="buas" name="buas" class="form-control" value="25" onkeypress="return isNumeric(event)" oninput="maxLengthCheck(this)"  maxlength = "3" min = "1" max = "999">
                              </div>
                              <div class="form-group">
                                <label for="ex4">Bobot KAT</label>
                                <input type="text" id="bkat" name="bkat" class="form-control"  value="50" onkeypress="return isNumeric(event)" oninput="maxLengthCheck(this)"  maxlength = "3" min = "1" max = "999">
                              </div>
                          </div>

                          </form>

                            <form method="POST" action="{{ url('/forecasting') }}" class="form-horizontal form-label-left" enctype="multipart/form-data" novalidate>
                                    <div class="item form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="uts">UTS<span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="uts" class="form-control col-md-7 col-xs-12" name="uts" placeholder="" required="required" type="text" onkeypress="return isNumeric(event)" oninput="maxLengthCheck(this)"  maxlength = "3" min = "1" max = "999">
                                      </div>
                                    </div>


                                    <div class="item form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="uas">UAS<span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="uas" name="uas" class="form-control col-md-7 col-xs-12" placeholder="" required="required" type="text" onkeypress="return isNumeric(event)" oninput="maxLengthCheck(this)"  maxlength = "3" min = "1" max = "999">
                                      </div>
                                    </div>

                                    <div class="item form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="kat">KAT<span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="kat" name="kat" class="form-control col-md-7 col-xs-12" placeholder="" required="required" type="text" onkeypress="return isNumeric(event)" oninput="maxLengthCheck(this)"  maxlength = "3" min = "1" max = "999">
                                      </div>
                                    </div>
                                    <br/>



                                    <div class="ln_solid"></div>
                                    <div align="center">
                                    <div class="form-group">
                                      <div class="col-md-6 col-md-offset-3">
                                        <button type="reset" class="btn btn-primary">Reset</button>
                                        <button id="send" type="button" class="btn btn-success" onclick="hitung()">Submit</button>
                                      </div>
                                    </div>
                                   </div>
                                   {{ csrf_field() }}
                                  </form>


                                  <div id="nilai" align="center"></div>


                                    </div>
                                  </div>


                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab2">



                        </div>

                      </div>
                    </div>



                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
@endsection

@section('js')
<!-- maxlength input -->
<script type="text/javascript">
function hitung() {
  var buts = document.getElementById("buts").value;
  var buas = document.getElementById("buas").value;
  var bkat = document.getElementById("bkat").value;
  var uts = document.getElementById("uts").value;
  var uas = document.getElementById("uas").value;
  var kat = document.getElementById("kat").value;

  var nilai = (parseInt(uts)*parseInt(buts)/100 )+(parseInt(uas)*parseInt(buas)/100 )+(parseInt(kat)*parseInt(bkat)/100 );
  var mutu="-";
  if (nilai>=80)
  {
     mutu = "A";
  }
  else if(nilai>=73 && nilai <80)
  {
    mutu = "B+";
  }
 else if(nilai>=67 && nilai <73)
 {
    mutu = "B";
 }
 else if(nilai>=61 && nilai<67)
 {
    mutu = "C+";
 }
 else if(nilai>=55 && nilai<61)
 {
    mutu = "C";
 }
 else if(nilai>=41 && nilai <55)
 {
   mutu = "D";
 }
 else if(nilai <41)
 {
   mutu = "E";
 }




  document.getElementById("nilai").innerHTML = "Total Nilai Akhir <br/>"+nilai+"  "+mutu;
}


function maxLengthCheck(object) {
  if (object.value.length > object.maxLength)
    object.value = object.value.slice(0, object.maxLength)
}

function isNumeric (evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode (key);
  var regex = /[0-9]|\./;
  if ( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}
</script>

    <!-- Forecasting -->
    <script src="{{asset('vendors/forecasting/forecasting.js')}}"></script>
    <!-- jQuery -->
    <script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <!-- Bootstrap -->
    <script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <!-- FastClick -->
    <script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
    <!-- NProgress -->
    <script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
    <!-- iCheck -->
    <script src="{{asset('vendors/iCheck/icheck.min.js')}}"></script>
    <!-- Datatables -->
    <script src="{{asset('vendors/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>
    <script src="{{asset('vendors/datatables.net-scroller/js/dataTables.scroller.min.js')}}"></script>
    <script src="{{asset('vendors/jszip/dist/jszip.min.js')}}"></script>
    <script src="{{asset('vendors/pdfmake/build/pdfmake.min.js')}}"></script>
    <script src="{{asset('vendors/pdfmake/build/vfs_fonts.js')}}"></script>



    <!-- Custom Theme Scripts -->
    <script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
@endsection
  </body>
</html>
