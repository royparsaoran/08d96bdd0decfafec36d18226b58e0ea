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
<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
<!-- bootstrap-progressbar -->
<link href="{{URL::asset('vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css')}}" rel="stylesheet">
<!-- JQVMap -->
<link href="{{URL::asset('vendors/jqvmap/dist/jqvmap.min.css')}}" rel="stylesheet" />
<!-- bootstrap-daterangepicker -->
<link href="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">

<!-- Custom Theme Style -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">
<style>
  .hero-image {
    background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
    url("{{URL::asset('images/cover/'.$count.'.png')}}");
    height: 50%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
  }

  .highcharts-credits {
    visibility: hidden;
  }

  .col1 {
    width: 24%;
    padding: 5px;
    float: left;
  }


  .hero-text {
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: white;
  }

  .card {
    /* Add shadows to create the "card" effect */
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    transition: 0.3s;
    width: 80%;
  }

  .card2 {
    transition: 0.3s;
    width: 100%;
  }

  /* On mouse-over, add a deeper shadow */
  .card:hover {
    box-shadow: 0 10px 18px 0 rgba(42, 63, 84, 1);
  }

  a.custom-card,
  a.custom-card:hover {
    color: inherit;
  }

  /* Add some padding inside the card container */
  .container {
    padding: 2px 16px;
  }

  #vc:hover {
    box-shadow: 0 10px 18px 0 rgba(42, 63, 84, 1);
    border-radius: 60%;
  }

  th {
    background-color: rgba(42, 63, 84, 1);
    color: #FFFFFF;
  }

  #mybutton {
    position: fixed;
    bottom: 5px;
    right: 14px;
  }

  @media only screen and (max-width: 600px) {
  .col1 {
    width: 100%;
  }
}
</style>
@endsection
@section('content')
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <div class="hero-image">
              <div class="hero-text">
                <h1 style="font-size:50px">
                  <?php foreach ($dataMK as $dtmk) {?>
                  {{ $dtmk->kodeMK }}

                  <?php $idMasterDKBS = $dtmk->idMasterDKBS; } ?>
                </h1>
                <h1>
                  <?php foreach ($dataMK as $dtmk) {?>
                  {{ $dtmk->namaMK }}

                  <?php } ?>
                </h1>
                <h1>
                  <?php foreach ($dataMK as $dtmk) {?>
                  ( {{ $dtmk->kelas }} )
                  <?php } ?>
                </h1>
              </div>
            </div>
            <br>
            <div>
              <div class="col1">
                <form method="POST" action="" id="formCourse">
                  {{csrf_field()}}
                  <div>
                    <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                    <a href="{{ url('/courseRating0')}}" class="custom-card">
                      <div class="card">
                        <img src="{{URL::asset('images/coverDetail/1.png')}}" alt="Avatar" style="width:100%">
                      </div>
                  </div>
                  </a>
                </form>
              </div>
              <div class="col1">
                <form method="POST" action="{{url('syllabusDosen')}}" id="formSyllabus">
                  {{csrf_field()}}
                  <div>
                    <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                    <a href="{{ url('/comment')}}" class="custom-card">
                      <div class="card">
                        <img src="{{URL::asset('images/coverDetail/6.png')}}" alt="Avatar" style="width:100%">
                      </div>
                  </div>
                  </a>
                </form>
              </div>
              <div class="col1">
                <form method="POST" action="" id="formAdmin">
                  {{csrf_field()}}
                  <div>
                    <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                    <a href="{{ url('/forumTitleMK')}}" class="custom-card">
                      <div class="card">
                        <img src="{{URL::asset('images/coverDetail/3.png')}}" alt="Avatar" style="width:100%">
                      </div>
                  </div>
                  </a>
                </form>
              </div>
              <div class="col1">
                <a href="{{ url('/assignment')}}" class="custom-card">
                  <form method="POST" action="{{url('administrasiDosen')}}" id="formAdmin">
                    {{csrf_field()}}
                    <div>
                      <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                      <div class="card">
                        <img src="{{URL::asset('images/coverDetail/5.png')}}" alt="Avatar" style="width:100%">
                      </div>
                    </div>
                </a>
                </form>
              </div>
            </div>
            {{-- <table style="width: fit-content ">
              <tr>
                <td>
                  <form method="POST" action="" id="formCourse">
                    {{csrf_field()}}
            <div>
              <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
              <a href="{{ url('/courseRating0')}}" class="custom-card">
                <div class="card">
                  <img src="{{URL::asset('images/coverDetail/1.png')}}" alt="Avatar" style="width:100%">
                </div>
            </div>
            </a>
            </form>
            </td>
            <td>
              <form method="POST" action="{{url('syllabusDosen')}}" id="formSyllabus">
                {{csrf_field()}}
                <div>
                  <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                  <a href="{{ url('/comment')}}" class="custom-card">
                    <div class="card">
                      <img src="{{URL::asset('images/coverDetail/6.png')}}" alt="Avatar" style="width:100%">
                    </div>
                </div>
                </a>
              </form>
            </td>
            <td>
              <form method="POST" action="" id="formAdmin">
                {{csrf_field()}}
                <div>
                  <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                  <a href="{{ url('/forumTitleMK')}}" class="custom-card">
                    <div class="card">
                      <img src="{{URL::asset('images/coverDetail/3.png')}}" alt="Avatar" style="width:100%">
                    </div>
                </div>
                </a>
              </form>
            </td>
            <td>
              <a href="{{ url('/assignment')}}" class="custom-card">
                <form method="POST" action="{{url('administrasiDosen')}}" id="formAdmin">
                  {{csrf_field()}}
                  <div>
                    <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                    <div class="card">
                      <img src="{{URL::asset('images/coverDetail/5.png')}}" alt="Avatar" style="width:100%">
                    </div>
                  </div>
              </a>
              </form>
            </td>
            </tr>
            </table> --}}
            <?php 
              $total=0;
            ?>
            <div class="card2">
              <table style="width: 100%">
                <tr>
                  <td rowspan="2" style="width: 50%">
                    <table class="table table-striped table-responsive-md">
                      <thead>
                        <tr>
                          <th>Nama Pertemuan</th>
                          <th>Waktu Pertemuan</th>
                          <th>#</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php foreach ($pertemuan as $key) { ?>
                        <tr>
                          <td>{{$key->namaPertemuan}}</td>
                          <td>{{date('d M Y', strtotime($key->tanggal))}}</td>
                          <td style="text-align:center">
                            <?php 
                          $count = 0;
                          foreach ($dataAbsen as $da) {
                            if ($da->createdby ==  $key->mahasiswa_NRP && $da->idpertemuan == $key->idPertemuan) {
                              $count++;
                            }
                          }
                          
                          foreach ($dataAssign as $da) {
                            if ($da->createdby ==  $key->mahasiswa_NRP && $da->idPertemuan == $key->idPertemuan) {
                              $count++;
                            }
                          }
                          $awal  = date('Y-m-d H:i:s', strtotime("$key->tanggal $key->jamMulai"));
                          $akhir = date('Y-m-d', strtotime($awal. ' + 1 days'));
                          // dd($akhir);
                          foreach ($dataCR as $dcr) {                        
                            if ($dcr->mahasiswa_NRP ==  $key->mahasiswa_NRP && $dcr->pertemuan_idPertemuan == $key->idPertemuan && $dcr->timestamp>=$awal && $dcr->timestamp<=$akhir) {
                              $count++;
                            }
                          }
                          
                          if ($count>0) { ?>
                            <span style="color: green;">
                              <b>&#10004;</b>
                            </span>
  
                            <?php 
                            $total+=1;
                          }else{ ?>
                            <span style="color: red;">
                              <b>&#10008;</b>
                            </span>
                            <?php 
                          }
                         ?>
                          </td>
                        </tr>
                        <?php }?>
                        <tr>
                          <td colspan="2" style="text-align: right"><b>Total :<b></td>
                          <td>{{$total}}</td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                  <td style="height: 50%">
                    <div id="nilai"></div>
                  </td>
                </tr>
                <tr>
                  <td style="height: 50% ;padding: 5%;">
                    <table class="table table-striped table-responsive-md" style="width: 50%">
                      <tbody>
                        <tr>
                          <th>Nilai Tertinggi</th>
                          <td>{{$max}}</td>
                        </tr>
                        <tr>
                          <th>Nilai Terendah</th>
                          <td>{{$min}}</td>
                        </tr>
                        <tr>
                          <th>Rata-Rata</th>
                          <td>{{$ave}}</td>
                        </tr>
                      </tbody>
                    </table>
                  </td>
                </tr>
              </table>
            </div>
            <div id="mybutton">
              <a href="https://cls.reborns.itmaranatha.org/demo/forum/livestream/{{$idMasterDKBS}}">
                <img border="0" id="vc" src="{{URL::asset('images/vc_icon.png')}}" width="100" height="100">
              </a>
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
<!-- gauge.js -->
<script src="{{asset('vendors/gauge.js/dist/gauge.min.js')}}"></script>
<!-- bootstrap-progressbar -->
<script src="{{asset('vendors/bootstrap-progressbar/bootstrap-progressbar.min.js')}}"></script>
<!-- morris.js -->
<script src="{{asset('vendors/raphael/raphael.min.js')}}"></script>
<script src="{{asset('vendors/morris.js/morris.min.js')}}"></script>
<!-- DateJS -->
<script src="{{asset('vendors/DateJS/build/date.js')}}"></script>
<!-- bootstrap-daterangepicker -->
<script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
<script src="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
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

<script src="https://code.highcharts.com/highcharts.js"></script>
<script>
  Highcharts.chart('nilai', {

title: {
    text: 'Daftar Nilai'
},


yAxis: {
    title: {
        text: 'Besar Nilai'
    }
},

xAxis: {
    accessibility: {
        rangeDescription: 'Range: 2010 to 2017'
    }
},

legend: {
    layout: 'vertical',
    align: 'right',
    verticalAlign: 'middle'
},

plotOptions: {
    series: {
        label: {
            connectorAllowed: false
        },
        pointStart: 1
    }
},

series: [{
    name: 'Assignment',
    data: {!!json_encode($nilaisub)!!}
}],

responsive: {
    rules: [{
        condition: {
            maxWidth: 500
        },
        chartOptions: {
            legend: {
                layout: 'horizontal',
                align: 'center',
                verticalAlign: 'bottom'
            }
        }
    }]
}

});
</script>
<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
<script>
  // $("#formCourse a").click(function(e){
  //   $("#formCourse").submit();
  // });
  // $("#formSyllabus a").click(function(e){
  //   $("#formSyllabus").submit();
  // });
  // $("#formAdmin a").click(function(e){
  //   $("#formAdmin").submit();
  // });
</script>
@endsection
</body>

</html>