@extends('layouts.dosen')

@section('css')
    <!-- Bootstrap -->
    <link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">
    <!-- Animate.css -->
    <link href="{{URL::asset('vendors/animate.css/animate.min.css')}}" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="{{URL::asset('vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">
    <!-- iCheck -->
   <link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
   <!-- bootstrap-wysiwyg -->
   <link href="{{URL::asset('vendors/google-code-prettify/bin/prettify.min.css')}}" rel="stylesheet">
   <!-- Select2 -->
    <link href="{{URL::asset('vendors/select2/dist/css/select2.min.css')}}" rel="stylesheet">
   <!-- Datatables -->
   <link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">

   <!-- Custom Theme Style -->
   <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">
@endsection

@section('content')
<!-- page content -->
  <div class="right_col" role="main">
    <div class="">
      <div class="page-title">
        <div class="title_left">
          <h3>Bank Soal</h3>
        </div>
      </div>
      <div class="clearfix"></div>

      <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <?php if ($banksoal->tipeSoal == "pg"): ?>
                <h2>{{$banksoal->namaSoal}} [ {{$jumlahpg}} / {{$banksoal->jumlahSoal}} ]</h2>
              <?php elseif($banksoal->tipeSoal == "isian") : ?>
                <h2>{{$banksoal->namaSoal}} [ {{$jumlahisian}} / {{$banksoal->jumlahSoal}} ]</h2>
              <?php elseif($banksoal->tipeSoal == "isiancheck") : ?>
                 <h2>{{$banksoal->namaSoal}} [ {{$jumlahisian}} / {{$banksoal->jumlahSoal}} ]</h2>
              <?php elseif($banksoal->tipeSoal == "gabungan") : ?>
                <h2>{{$banksoal->namaSoal}} [ {{$jumlahgabungan}} / {{$banksoal->jumlahSoal}} ]</h2>
              <?php elseif($banksoal->tipeSoal == "gabungancheck") : ?>
                <h2>{{$banksoal->namaSoal}} [ {{$jumlahgabungan}} / {{$banksoal->jumlahSoal}} ]</h2>
              <?php endif; ?>

              <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <div class="x_content">

              <div class="" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                  <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Isi Konten</a></li>
                  <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Tambah Soal</a></li>
                  <?php if ($banksoal->tipeSoal == "pg"): ?>
                    <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Tambah Soal PG</a></li>
                  <?php elseif($banksoal->tipeSoal == "isian") : ?>
                    <li role="presentation" class=""><a href="#tab_content4" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">Tambah Soal Isian</a></li>
                  <?php elseif($banksoal->tipeSoal == "gabungan") : ?>
                    <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Tambah Soal PG</a></li>
                    <li role="presentation" class=""><a href="#tab_content4" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">Tambah Soal Isian</a></li>
                  <?php elseif($banksoal->tipeSoal == "isiancheck") : ?>
                    <li role="presentation" class=""><a href="#tab_content4" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">Tambah Soal Isian</a></li>
                  <?php elseif($banksoal->tipeSoal == "gabungancheck") : ?>
                    <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Tambah Soal PG</a></li>
                    <li role="presentation" class=""><a href="#tab_content4" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">Tambah Soal Isian</a></li>
                  <?php endif; ?>
                  <li role="presentation" class=""><a href="#tab_content5" role="tab" id="profile-tab4" data-toggle="tab" aria-expanded="false">Salin Soal</a></li>
                  <br/>
                </ul>
                <div id="myTabContent" class="tab-content">

                  <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">



                      <form method="POST" action="{{Url('/bankSoal/show/'.$banksoal->id)}}">
                      <input type="hidden" name="curBank" id="curBank" value="{{$banksoal->id}}">
                      <table id="datatable-keytable" class="table table-striped table-bordered">
                        <thead>
                          <tr>
                            <th>Title</th>
                            <th>Soal</th>
                            <th>Kategori</th>
                            <th>Level</th>
                            <th>Tipe Soal</th>
                            <th>Update</th>
                            <th>Delete</th>
                          </tr>
                        </thead>
                      <tbody>
                      <?php foreach ($curPG as $pg): ?>
                        <tr>
                          <td>{{$pg->title}}</td>
                          <td>{{$pg->soal}}</td>
                          <td>{{$pg->kategori}}</td>
                          <td>{{$pg->level}}</td>
                          <td>PG</td>
                          <td><a href="{{URL('/bankSoal/edit/pg/'.$banksoal->id.'/'.$pg->id)}}"><button type="button" class="btn btn-warning" name="btnUpdate">Update</button><input type="hidden" name="update" value="{{$pg->id}}"></a></td>
                          <td><a href="{{URL('/bankSoal/delete/pg/'.$banksoal->id.'/'.$pg->id)}}"><button type="button" class="btn btn-danger" name="btnDelete">Delete</button><input type="hidden" name="delete" value="{{$pg->id}}"></a></td>
                        </tr>
                      <?php endforeach; ?>

                      <?php foreach ($curIsi as $isi): ?>
                        <tr>
                          <td>{{$isi->title}}</td>
                          <td>{{$isi->soal}}</td>
                          <td>{{$isi->kategori}}</td>
                          <td>{{$isi->level}}</td>
                          <td>Isian</td>
                          <td><a href="{{URL('/bankSoal/edit/isi/'.$banksoal->id.'/'.$isi->id)}}"><button type="button" class="btn btn-warning" name="btnUpdate">Update</button><input type="hidden" name="update" value="{{$isi->id}}"></a></td>
                          <td><a href="{{URL('/bankSoal/delete/isi/'.$banksoal->id.'/'.$isi->id)}}"><button type="button" class="btn btn-danger" name="btnDelete">Delete</button><input type="hidden" name="delete" value="{{$isi->id}}"></a></td>
                        </tr>
                      <?php endforeach; ?>

                    </tbody>
                    </table>
                  {!!Form::close()!!}

                  @if(Session::has('lebih'))
                  <div class="alert alert-danger alert-dismissible fade in" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                    </button>
                    {{Session::get('lebih')}}
                  </div>
                  @endif



                  </div>

                  <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                    {!! Form::open(['method' => 'POST' , 'action' => ['bankSoalController@addSoal',$banksoal->id] ]  ) !!}
                    <table id="datatable-checkbox" class="table table-striped table-bordered bulk_action">
                      <thead>
                        <tr>
                          <th><input type="checkbox" id="select_all" /></th>
                          <th>Nama Soal</th>
                          <th>Title</th>
                          <th>Soal</th>
                          <th>Tipe Soal</th>
                          <th>Kategori</th>
                          <th>Level</th>
                        </tr>
                      </thead>


                      <tbody>

                        <?php if ($banksoal->tipeSoal == "pg"): ?>
                          <?php foreach ($soalpg as $pg): ?>
                            <tr>
                              <td><input type="checkbox" class = "checkbox" name="check[]" value="{{$pg->title}}"/></td>
                              <td>{{$pg->namaSoal}}</td>
                              <td>{{$pg->title}}</td>
                              <td>{{$pg->soal}}</td>
                              <td><input type="hidden" id="tipe" name="tipe" value="pg">PG</td>
                              <td>{{$pg->kategori}}</td>
                              <td>{{$pg->level}}</td>
                            </tr>
                          <?php endforeach; ?>
                        <?php elseif($banksoal->tipeSoal == "isian") : ?>
                          <?php foreach ($soalisian as $isian): ?>
                            <tr>
                            <td><input type="checkbox" class = "checkbox" name="check[]" value="{{$isian->title}}" /></td>
                            <td>{{$isian->namaSoal}}</td>
                            <td>{{$isian->title}}</td>
                            <td>{{$isian->soal}}</td>
                            <td><input type="hidden" id="tipe" name="tipe2" value="isi">Isian</td>
                            <td>{{$isian->kategori}}</td>
                            <td>{{$isian->level}}</td>
                          </tr>
                          <?php endforeach; ?>
                        <?php elseif($banksoal->tipeSoal == "isiancheck") : ?>
                          <?php foreach ($soalisian as $isian): ?>
                            <tr>
                            <td><input type="checkbox" class = "checkbox" name="check[]" value="{{$isian->title}}" /></td>
                            <td>{{$isian->namaSoal}}</td>
                            <td>{{$isian->title}}</td>
                            <td>{{$isian->soal}}</td>
                            <td><input type="hidden" id="tipe" name="tipe2" value="isi">Isian</td>
                            <td>{{$isian->kategori}}</td>
                            <td>{{$isian->level}}</td>
                          </tr>
                          <?php endforeach; ?>
                        <?php elseif($banksoal->tipeSoal == "gabungan") : ?>
                          <?php foreach ($soalpg as $pg): ?>
                            <tr>
                              <td><input type="checkbox" class = "checkbox" name="check[]" value="{{$pg->title}}"/></td>
                              <td>{{$pg->namaSoal}}</td>
                              <td>{{$pg->title}}</td>
                              <td>{{$pg->soal}}</td>
                              <td><input type="hidden" id="tipe" name="tipe" value="pg">PG</td>
                              <td>{{$pg->kategori}}</td>
                              <td>{{$pg->level}}</td>
                            </tr>
                          <?php endforeach; ?>
                          <?php foreach ($soalisian as $isian): ?>
                            <tr>
                            <td><input type="checkbox" class = "checkbox" name="check[]" value="{{$isian->title}}" /></td>
                            <td>{{$isian->namaSoal}}</td>
                            <td>{{$isian->title}}</td>
                            <td>{{$isian->soal}}</td>
                            <td><input type="hidden" id="tipe" name="tipe2" value="isi">Isian</td>
                            <td>{{$isian->kategori}}</td>
                            <td>{{$isian->level}}</td>
                          </tr>
                          <?php endforeach; ?>
                        <?php elseif($banksoal->tipeSoal == "gabungancheck") : ?>
                          <?php foreach ($soalpg as $pg): ?>
                            <tr>
                              <td><input type="checkbox" class = "checkbox" name="check[]" value="{{$pg->title}}"/></td>
                              <td>{{$pg->namaSoal}}</td>
                              <td>{{$pg->title}}</td>
                              <td>{{$pg->soal}}</td>
                              <td><input type="hidden" id="tipe" name="tipe" value="pg">PG</td>
                              <td>{{$pg->kategori}}</td>
                              <td>{{$pg->level}}</td>
                            </tr>
                          <?php endforeach; ?>
                          <?php foreach ($soalisian as $isian): ?>
                            <tr>
                            <td><input type="checkbox" class = "checkbox" name="check[]" value="{{$isian->title}}" /></td>
                            <td>{{$isian->namaSoal}}</td>
                            <td>{{$isian->title}}</td>
                            <td>{{$isian->soal}}</td>
                            <td><input type="hidden" id="tipe" name="tipe2" value="isi">Isian</td>
                            <td>{{$isian->kategori}}</td>
                            <td>{{$isian->level}}</td>
                          </tr>
                          <?php endforeach; ?>
                        <?php endif; ?>








                      </tbody>
                    </table>
                        <div align="right">
                           <button type="submit" value="Add" id="btnAdd" name="btnAdd" class="btn btn-info">Add</button>
                        </div>
                  </form>

                  </div>

                  <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab2">

                  {!! Form::open(['method' => 'POST' , 'action' => ['bankSoalController@addSoalPG',$banksoal->id] , 'class' => 'form-horizontal form-label-left','enctype'=> "multipart/form-data" ]  ) !!}


                                <div class="form-group">
                                  <label>Title</label>
                                  <input type="text" class="form-control" id="titlepg" name="titlepg" required="required">
                                </div>

                                <div class="form-group">
                                   <label>Soal Pilihan Ganda</label>
                                      <textarea name="soalpg" id="soalpg" rows="20" class="form-control" required="required" ></textarea>
                                </div>
                                <div class="form-group">
                                  <label for="gambar">Gambar</label>
                                  <input id="gambar" type="file" name="gambar">
                                </div>

                                <div class="form-group">
                                  <label>A</label>
                                  <input type="text" required="required" class="form-control" placeholder="satu..." name="a" id="a">
                                </div>

                                <div class="form-group">
                                  <label>B</label>
                                  <input type="text"  required="required" class="form-control" placeholder="dua..." name="b" id="b">
                                </div>

                                <div class="form-group">
                                  <label>C</label>
                                  <input type="text" required="required" class="form-control" placeholder="tiga..." name="c" id="c">
                                </div>

                                <div class="form-group">
                                  <label>D</label>
                                  <input type="text"  required="required" class="form-control" placeholder="empat..." name="d" id="d">
                                </div>

                                <div class="form-group">
                                  <label>E</label>
                                  <input type="text"  required="required" class="form-control" placeholder="lima..." name="e" id="e">
                                </div>

                                <div class="form-group">
                                  <?php if ($banksoal->isSensitive == "yes"): ?>
                                    <label>Kunci Jawaban (<b><font color="red">CASE SENSITIVE</font></b>)</label>
                                  <?php else: ?>
                                    <label>Kunci Jawaban</label>
                                  <?php endif; ?>
                                  <input type="text"  required="required" class="form-control" placeholder="lima..." name="kunciJawabanpg" id="kunciJawabanpg">
                                </div>

                                <div class="form-group">
                                  <label>Kategori</label>
                                  <select class="form-control" required="required" id="kategoripg" name="kategoripg">
                                    <option value="programming">Programming</option>
                                    <option value="jaringan">Jaringan</option>
                                    <option value="mulitmedia">Multimedia</option>
                                    <option value="sisteminformasi">Sistem Informasi</option>
                                    <option value="mobile">Mobile</option>
                                    <option value="game">Game</option>
                                    <option value="array">Array</option>
                                    <option value="perulangan">Perulangan</option>
                                    <option value="matriks">Matriks</option>
                                  </select>
                                </div>

                                <div class="form-group">
                                  <label>Level</label>
                                  <select class="form-control" required="required" id="levelpg" name="levelpg">
                                    <option value="easy">Easy</option>
                                    <option value="medium">Medium</option>
                                    <option value="hard">Hard</option>
                                  </select>
                                </div>


                                <div align="right">
                                   <button type="submit" value="Add" id="btnAdd" name="btnAdd" class="btn btn-info">Add</button>
                                </div>



                            {!!Form::close()!!}


                  </div>


                  <div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="profile-tab3">

                    {!! Form::open(['method' => 'POST' , 'action' => ['bankSoalController@addSoalIsian',$banksoal->id] , 'class' => 'form-horizontal form-label-left','enctype'=> "multipart/form-data"]  ) !!}


                                  <div class="form-group">
                                    <label>Title</label>
                                    <input type="text" class="form-control" id="title" name="title" required="required">
                                  </div>

                                  <div class="form-group">
                                     <label>Soal Isian</label>
                                        <textarea name="soal" id="soal" rows="20" class="form-control"  required="required"></textarea>
                                  </div>
                                  <div class="form-group">
                                    <label for="gambar">Gambar</label>
                                    <input id="gambar" type="file" name="gambar">
                                  </div>
                                  <div class="form-group">
                                    <?php if ($banksoal->isSensitive == "yes"): ?>
                                      <label>Kunci Jawaban (<b><font color="red">CASE SENSITIVE</font></b>)</label>
                                    <?php else: ?>
                                      <label>Kunci Jawaban</label>
                                    <?php endif; ?>

                                    <?php if ($banksoal->tipeSoal == "isiancheck"): ?>
                                      <input type="text" class="form-control"  name="kunciJawaban" id="kunciJawaban" readonly="readonly" placeholder="Readonly TEXT Input" value="Readonly Text Input">
                                    <?php elseif ($banksoal->tipeSoal == "gabungancheck"): ?>
                                      <input type="text" class="form-control" name="kunciJawaban" id="kunciJawaban" readonly="readonly" placeholder="Readonly TEXT Input" value="Readonly Text Input">
                                    <?php else: ?>
                                      <input type="text" class="form-control" placeholder="cth:Masukkan Kunci Jawaban Anda" name="kunciJawaban" id="kunciJawaban" required="required">
                                    <?php endif; ?>

                                  </div>

                                  <div class="form-group">
                                    <label>Kategori</label>
                                    <select class="form-control" required="required" id="kategori" name="kategori">
                                      <option value="programming">Programming</option>
                                      <option value="jaringan">Jaringan</option>
                                      <option value="mulitmedia">Multimedia</option>
                                      <option value="sisteminformasi">Sistem Informasi</option>
                                      <option value="mobile">Mobile</option>
                                      <option value="game">Game</option>
                                      <option value="array">Array</option>
                                      <option value="perulangan">Perulangan</option>
                                      <option value="matriks">Matriks</option>
                                    </select>
                                  </div>

                                  <div class="form-group">
                                    <label>Level</label>
                                    <select class="form-control" required="required" id="level" name="level">
                                      <option value="easy">Easy</option>
                                      <option value="medium">Medium</option>
                                      <option value="hard">Hard</option>
                                    </select>
                                  </div>


                                  <div align="right">
                                     <button type="submit" value="addIsian" id="btnAddIsian" name="btnAddIsian" class="btn btn-info">Add</button>
                                  </div>


                              {!!Form::close()!!}

                  </div>

                  <div role="tabpanel" class="tab-pane fade" id="tab_content5" aria-labelledby="profile-tab4">


                    {!!Form::open(['method'=> 'POST' , 'action' => ['bankSoalController@salinSoal',$banksoal->id] ])!!}
                    <table id="datatable" class="table table-striped table-bordered bulk_action">
                      <thead>
                        <tr>
                          <th><input type="checkbox" id="select_all2" /></th>
                          <th>Nama Soal</th>
                          <th>Pembuat</th>
                          <th>Tahun Terbit</th>
                          <th>Tipe Soal</th>
                          <th>Jumlah Soal</th>
                        </tr>
                      </thead>
                      <tbody>

                          <?php foreach ($otherbanks as $banks): ?>
                            <tr>
                              <td><input type="checkbox" class = "checkbox2" name="check2[]" value="{{$banks->id}}"/></td>
                              <td>{{$banks->namaSoal}}</td>
                              <td>{{$banks->pembuat}}</td>
                              <td>{{$banks->tahunTerbit}}</td>
                              <td>{{$banks->tipeSoal}}</td>
                              <td>{{$banks->jumlahSoal}}</td>

                            </tr>
                          <?php endforeach; ?>


                      </tbody>
                    </table>
                    <div align="right">
                      <button id="salin" type="submit" class="btn btn-info" name="btnSalin">Copy</button>
                    </div>
                  {!!Form::close()!!}

                  </div>

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

<!-- jQuery -->
<script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- FastClick -->
<script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
<!-- NProgress -->
<script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
<!-- bootstrap-daterangepicker -->
<script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
<script src="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- bootstrap-datetimepicker -->
<script src="{{asset('vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js')}}"></script>
<!-- validator -->
<script src="{{asset('vendors/validator/validator.js')}}"></script>
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
<!-- bootstrap-wysiwyg -->
<script src="{{asset('vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js')}}"></script>
<script src="{{asset('vendors/jquery.hotkeys/jquery.hotkeys.js')}}"></script>
<script src="{{asset('vendors/google-code-prettify/src/prettify.js')}}"></script>
<!-- Select2 -->
<script src="{{asset('vendors/select2/dist/js/select2.full.min.js')}}"></script>
<!-- Autosize -->
<script src="{{asset('vendors/autosize/dist/autosize.min.js')}}"></script>
<!-- jQuery autocomplete -->
<script src="{{asset('vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js')}}"></script>
<!-- Parsley -->
<!-- <script src="{{asset('vendors/parsleyjs/dist/parsley.min.js')}}"></script> -->

<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
<script type="text/javascript">



var select_all = document.getElementById("select_all"); //select all checkbox
var checkboxes = document.getElementsByClassName("checkbox"); //checkbox items

//select all checkboxes
select_all.addEventListener("change", function(e){
    for (i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = select_all.checked;
    }
});


for (var i = 0; i < checkboxes.length; i++) {
    checkboxes[i].addEventListener('change', function(e){ //".checkbox" change
        //uncheck "select all", if one of the listed checkbox item is unchecked
        if(this.checked == false){
            select_all.checked = false;
        }
        //check "select all" if all checkbox items are checked
        if(document.querySelectorAll('.checkbox:checked').length == checkboxes.length){
            select_all.checked = true;
        }
    });
}

var select_all2 = document.getElementById("select_all2"); //select all checkbox
var checkboxes2 = document.getElementsByClassName("checkbox2"); //checkbox items

//select all checkboxes
select_all2.addEventListener("change", function(e){
    for (i = 0; i < checkboxes2.length; i++) {
        checkboxes2[i].checked = select_all2.checked;
    }
});


for (var i = 0; i < checkboxes2.length; i++) {
    checkboxes2[i].addEventListener('change', function(e){ //".checkbox" change
        //uncheck "select all", if one of the listed checkbox item is unchecked
        if(this.checked == false){
            select_all2.checked = false;
        }
        //check "select all" if all checkbox items are checked
        if(document.querySelectorAll('.checkbox2:checked').length == checkboxes2.length){
            select_all2.checked = true;
        }
    });
}


    $('#myDatepicker').datetimepicker();

    $('#myDatepicker2').datetimepicker({
        format: 'DD-MMM-YYYY'
    });

    $('#myDatepicker3').datetimepicker({
        format: 'HH:mm:ss A'
    });

    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
        allowInputToggle: true
    });
    $('#myDatepicker9').datetimepicker({
        format: 'DD/MM/YYYY'
    });

    $('#datetimepicker6').datetimepicker();

    $('#datetimepicker7').datetimepicker({
        useCurrent: false
    });

    $("#datetimepicker6").on("dp.change", function(e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });

    $("#datetimepicker7").on("dp.change", function(e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
</script>
@endsection
  </body>
</html>
