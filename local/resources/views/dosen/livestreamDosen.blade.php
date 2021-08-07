<?php
//Get videos from channel by YouTube Data API
$API_key    = 'AIzaSyB_KoPkK8RRosh4v2JY6RQOzUyQjDETWpQ';
$channelID  = 'UCPsopTKQfSgW9XdYkKA6Gdw';
$maxResults = 10;

$videoList = json_decode(file_get_contents('https://www.googleapis.com/youtube/v3/search?order=date&part=snippet&channelId='.$channelID.'&maxResults='.$maxResults.'&key='.$API_key.''));

?>
@extends('layouts.dosen')

@section('css')
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Awesome videos!" />
<!-- Bootstrap -->
<link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link href="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">
<!-- bootstrap-datetimepicker -->
<link href="{{URL::asset('vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css')}}" rel="stylesheet">

<!-- YouTube -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="{{URL::asset('vendors/youtube/css/style.css')}}">
<link rel="stylesheet" href="{{URL::asset('vendors/youtube/js/livestreaming.js')}}">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="https://apis.google.com/js/platform.js"></script>


<!-- Custom styling plus plugins -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

@endsection

@section('content')
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3> Livestream <small></small> </h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Livestreaming <small></small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Livestreaming</a></li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Input</a></li>
                        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Tutorial</a></li>
                        <li role="presentation" class=""><a href="#tab_content4" role="tab" id="profile-tab3" data-toggle="tab" aria-expanded="false">Channel ID</a></li>
                        <!-- <li role="presentation" class=""><a href="#tab_content5" role="tab" id="profile-tab4" data-toggle="tab" aria-expanded="false">Search</a></li> -->
                        <li role="presentation" class=""><a href="#tab_content6" role="tab" id="profile-tab5" data-toggle="tab" aria-expanded="false">Jadwal Livestream</a></li>
                        <br/>
                      </ul>
                      <div id="myTabContent" class="tab-content">

                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">
                          <form>
                              <table border="1px dotted black">
                              <?php foreach ($livestream as $live): ?>
                                <tr >
                                    <td rowspan="3" class="vid" align="center">{!!$live->link !!}</td>
                                </tr>
                                <tr>
                                    <td align="center">
                                      Deskripsi : <br/>
                                      {!! $live->about !!}
                                    </td>
                                    <td rowspan="2">
                                      <h3>Jadwal Mulai Streaming</h3><br/>

                                        <h3>{{ date('d-M-Y H:i:s', strtotime($live->jadwal)) }}</h3>


                                    </td>
                                </tr>
                                <tr>
                                  <td align="center">
                                    <?php if ($live->hlink != null): ?>
                                      <a href="{!!$live->hlink !!}"><input type="button" value="Join" class="btn btn-primary" name="btnJoin"></a>
                                    <?php endif; ?>

                                    <br/>
                                    <?php if ($live->channel === null): ?>
                                        <div class="g-ytsubscribe" data-channel="GoogleDeveloper" data-layout="default" data-count="default"></div>
                                    <?php else: ?>
                                        <div class="g-ytsubscribe" data-channelid="{{$live->channel}}" data-layout="default" data-count="default"></div>
                                    <?php endif; ?>
                                  </td>

                                </tr>
                              <?php endforeach; ?>
                            </table>
                          </form>
                          <div align="center">
                                {!! $livestream->links() !!}
                          </div>

                          @if ($errors->any())
                          <div class="alert alert-danger alert-dismissible fade in" role="alert">
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                              </button>
                                    @foreach ($errors->all() as $error)
                                        {{ $error }}
                                    @endforeach
                            </div>
                            @endif

                          <?php foreach ($somevideo as $vid): ?>
                              <div class="col-lg-6 col-sm-3 col-xs-6 youtube-video">
                                    {!!$vid->link !!}
                              </div>
                          <?php endforeach; ?>

                        </div>


                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                           {!! Form::open(['method' => 'POST' , 'action' => ['livestreamController@createDosen'],'class' =>"form-horizontal form-label-left",'enctype'=> "multipart/form-data" ,"novalidate" ]  ) !!}
                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="namaSoal">YouTube Page (<font color="red">URL for join</font>)
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input type="text" name="hlink" placeholder="Input your hangout link" class="form-control col-md-7 col-xs-12">

                                    </div>
                                  </div>
                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Video Embed (<font color="red">Iframe Video</font>) <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" name="link" placeholder="Input your embeded iframe" class="form-control col-md-7 col-xs-12" required="required">
                                    </div>
                                  </div>

                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jadwal">Jadwal Streaming<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <div class="form-group">
                                        <div class='input-group date' id='myDatepicker'>
                                              <input type='text' id="jadwal" name="jadwal" placeholder="Month-Day-Year" class="form-control" required="required" />
                                          <span class="input-group-addon">
                                             <span class="glyphicon glyphicon-calendar"></span>
                                          </span>
                                        </div>
                                      </div>
                                    </div>
                                  </div>

                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tipeSoal">Description
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <textarea id="deskripsi" name="deskripsi" rows="4" cols="150"></textarea>
                                    </div>
                                  </div>
                                  <br/>

                                  <div class="ln_solid"></div>
                                  <div align="center">

                                    <div class="col-md-6 col-md-offset-3">
                                      <input class="btn btn-primary" type="reset" value="Reset">
                                    <button id="send" type="submit" class="btn btn-primary" name="btnLivestream" >Submit</button>
                                    </div>

                                 </div>
                                 {{ csrf_field() }}
                              {!!Form::close()!!}


                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab2">

                          <h1>Tutorial</h1>
                          <table>
                              <tr>
                                  <td>1</td>
                                  <td>Sign in ke akun <a href="https://www.youtube.com/">Youtube</a> anda</td>
                              </tr>
                              <tr>
                                  <td>2</td>
                                  <td>Masuk ke bagian Creator </td>
                              </tr>
                              <tr>
                                <td colspan="2">
                                  <img src="{{URL::asset('images/satu.jpg')}}" width="100%" height="100%" >
                                </td>
                              </tr>
                              <tr>
                                  <td>3</td>
                                  <td>Pilih tab pada bagian ( livestreaming -> event ) untuk membuat sebuah event yang ada </td>
                              </tr>
                              <tr>
                                <td colspan="2">
                                  <img src="{{URL::asset('images/dua.jpg')}}" width="100%" height="100%">
                                </td>
                                </tr>
                              <tr>
                                <td colspan="2"><img src="{{URL::asset('images/tiga.jpg')}}" width="100%" height="100%"></td>
                              </tr>
                              <tr>
                                  <td>4</td>
                                  <td>Klik tombol start broadcasting untuk memulai livestream</td>

                              </tr>
                              <tr>
                                <td colspan="2"><img src="{{URL::asset('images/empat.jpg')}}" width="100%" height="100%" ></td>
                              </tr>
                              <tr>
                                  <td>5</td>
                                  <td>Masukkan link pada kolom youtube page pada hangout anda untuk masuk keruang chat anda , jangan lupa juga untuk memasukkan frame untuk embed video ke sistem</td>

                              </tr>
                              <tr>
                                <td colspan="2"><img src="{{URL::asset('images/lima.jpg')}}" width="100%" height="100%"></td>
                            </tr>
                          </table>


                      </div>

                      <div role="tabpanel" class="tab-pane fade" id="tab_content4" aria-labelledby="profile-tab3">

                        <div class="container">

                          <table class="table table-hover">
                            <thead>
                              <tr>
                                <th>NRP</th>
                                <th>Nama</th>
                                <th>Channel ID</th>
                              </tr>
                            </thead>
                            <tbody>
                              <?php foreach ($chid as $ch): ?>
                                <?php if ($ch->role == "Dosen"): ?>
                                  <tr>
                                    <td>{{$ch->nik}}</td>
                                    <td>{{$ch->namaDosen}}</td>
                                    <td>{{$ch->streamlink}}</td>
                                  </tr>
                                <?php elseif ($ch->role == "Mahasiswa"): ?>
                                  <tr>
                                    <td>{{$ch->nrp}}</td>
                                    <td>{{$ch->namaMhs}}</td>
                                    <td>{{$ch->streamlink}}</td>
                                  </tr>
                                <?php endif; ?>

                              <?php endforeach; ?>

                            </tbody>
                          </table>

                          <br/>
                          <div class="ln_solid"></div>
                          <br/>

                        	<div class="row">
                        	<?php
                        		foreach($videoList->items as $item){
                            //Embed video
                            if(isset($item->id->videoId)){
                                echo '<div class="col-lg-3 col-sm-6 col-xs-6 youtube-video">
                                        <iframe width="280" height="150" src="https://www.youtube.com/embed/'.$item->id->videoId.'" frameborder="0" allowfullscreen></iframe>
                                        <h3>'. $item->snippet->title .'</h3>
                                    </div>';
                                      }
                                  }
                                  	?>
                        	</div>
                        </div>


                      </div>

                      <div role="tabpanel" class="tab-pane fade" id="tab_content5" aria-labelledby="profile-tab4">

                        <header>
                            <h1 class="w100 text-center">YouTube Viral Search</h1>
                        </header>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <form action="#" name="pencarian" id="pencarian" >
                                    <p><input type="text" id="search" placeholder="Type something..." autocomplete="off" class="form-control" /></p>
                                    <p><input type="submit" id="other" value="Search"  onclick="cari()"  class="form-control btn btn-primary w100"></p>
                                </form>
                                <div id="results"></div>
                            </div>
                        </div>

                       <!-- youtube -->
                       <script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
                       <!-- <script src="{{asset('vendors/youtube/js/app.js')}}"></script> -->
                       <script src="https://apis.google.com/js/client.js?onload=init"></script>

                      </div>

                      <div role="tabpanel" class="tab-pane fade" id="tab_content6" aria-labelledby="profile-tab5">

                        {!! Form::open(['method' => 'POST'  ]  ) !!}
                        <table id="datatable-checkbox" class="table table-striped table-bordered bulk_action">
                          <thead>
                            <tr>
                              <th>Nama</th>
                              <th>Tanggal</th>
                              <th>Hari</th>
                              <th>Bulan</th>
                              <th>Tahun</th>
                              <th>Jam</th>
                            </tr>
                          </thead>


                          <tbody>

                                <?php foreach ($jadwallive as $jd): ?>
                                  <tr>
                                    <td>{{$jd->nama}}</td>
                                    <td>{{ date('d-F-Y', strtotime($jd->jadwal)) }}</td>
                                    <td>{{ date('l', strtotime($jd->jadwal)) }}</td>
                                    <td>{{ date('F', strtotime($jd->jadwal)) }}</td>
                                    <td>{{ date('Y', strtotime($jd->jadwal)) }}</td>
                                    <td>{{ date('H:i:s', strtotime($jd->jadwal)) }}</td>
                                  </tr>
                                <?php endforeach; ?>


                          </tbody>
                        </table>
                      </form>
                      </div>


                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
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

<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
<script>
    $('#myDatepicker').datetimepicker({
        format: 'DD-MMM-YYYY HH:mm:ss '
    });

    $('#myDatepicker2').datetimepicker({
        format: 'DD-MMM-YYYY'
    });

    $('#myDatepicker3').datetimepicker({
        format: 'HH:mm:ss '
    });

    $('#myDatepicker4').datetimepicker({
        ignoreReadonly: true,
        allowInputToggle: true
    });
    $('#myDatepicker9').datetimepicker({
        format: 'DD-MM-YYYY'
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
