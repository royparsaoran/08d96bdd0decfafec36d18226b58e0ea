@extends('layouts.dosen')



@section('css')



<!-- Bootstrap -->

<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome -->

<link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

<!-- NProgress -->

<link href="vendors/nprogress/nprogress.css" rel="stylesheet">

<!-- bootstrap-progressbar -->

<link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">





<!-- Custom Theme Style -->

<link href="vendors/build/css/custom.min.css" rel="stylesheet">



<link href="vendors/bootstrap-survey/css/scale.css" rel="stylesheet">

<style type="text/css">

  .highcharts-credits{

    display: none;

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

    <div class="row">

      <div class="col-md-12 col-sm-12 col-xs-12">

        <div class="x_content">

            <a href="{{ url('/courseRatingDosen')}}"><button class="btn btn-primary btn-lg" disabled=""><font color="white">Detail</font></button></a>

            <a href="{{ url('/courseRatingDosen2')}}"><button class="btn btn-default btn-lg" >Per-Matakuliah</button></a>

            <?php $userSessionRole  = session('roles');?>

            <?php if ($userSessionRole === 'PJS' && isset($userSessionRole)): ?>
              <a href="{{ url('/courseRatingDosen3')}}"><button class="btn btn-default btn-lg">Per-Dosen</button></a>
            <?php else: ?>
              <form method="POST" action="{{url('courseRatingDosen3')}}">
                {{csrf_field()}}
                <input type="hidden" name="nik" value="{{session('nrp')}}">
                <input type="hidden" name="namaSemester" value="{{ $sem->namaSemester }}">
                <a href="{{ url('/courseRatingDosen3')}}"><button class="btn btn-default btn-lg" >Keseluruhan</button></a>
              </form>
            <?php endif ?>

            

          </div>

        <div class="x_panel">

          <div class="x_title">

            <ul class="nav navbar-right panel_toolbox">

              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>

            </ul>

            <div class="clearfix"></div>

          </div>

          

      <div class="x_content">

        

                    <form method="POST" action="{{url('courseRatingDosen')}}">

                      {{csrf_field()}}





                      <label for="heard">Mata Kuliah :</label>

                      <select class="btn btn-primary dropdown-toggle" name="idmaster" id="namaMK">

                        <option value="" style="text-align: center;">--Pilih--</option>

                        <?php foreach ($dataMK as $dtmk ): ?>



                        <option value="{{ $dtmk->idMasterDKBS }}" name="idmaster">{{ $dtmk->kodeMK }} -

                          {{ $dtmk->namaMK }} ( {{ $dtmk->kelas }} )</option>



                        <?php endforeach ?>







                      </select>

                      <label for="heard">Pertemuan :</label>

                      <select class="btn btn-primary dropdown-toggle" id="Pertemuan" name="idpertemuan" disabled="">

                        <option value="">-- Pilih --</option>

                        <?php foreach ($dataJawaban as $dp): ?>

                        <option value="{{ $dp->idPertemuan }}" class="{{ $dp->masterdkbs_idMasterDKBS }}">

                          {{$dp->namaPertemuan}}</option>



                        <?php endforeach ?>

                        <div align="right"><input type="submit" name="Submit" class="btn btn-round btn-primary"

                            value="GO" id="btngo" disabled=""></div>

                 

                  </form>

                  </select>

                  <div align="right">

                    <br>

                    <?php if (count($tm)==0 && count($km)==0 &&count($m)==0 &&count($sm)==0 ): ?>
                    <span style="color: red;text-align:left" >
                        <p title="please select option in dropdown">Empty Data</p>
                    </span>
                    <div class="x_content" hidden="true">

                  <?php else: ?>

                    <div class="x_content">

                  <?php endif ?>   
					<div style="background-color: #2a3f54">
						<h1 style="text-align: center ;color:white">
						    {{$mk}} -
							{{$k}} - {{$p}}</h2>
					</div>
                      <div id="graff"></div>
                    </div>

                                    <?php $tot=1; ?>
                <?php if (count($tm)!=0 || count($km)!=0 || count($m)!=0 || count($sm)!=0 ): ?>
                <br>
                <br>
                <table class="table" align="center">
                  <thead>
                    <tr>
                      <th scope="col" style="text-align:center">#</th>
                      <th scope="col" style="text-align:center">Pertanyaan</th>
                      <th scope="col" style="text-align:center">Tidak Setuju (1)</th>
                      <th scope="col" style="text-align:center">Kurang Setuju (2)</th>
                      <th scope="col" style="text-align:center">Setuju (3)</th>
                      <th scope="col" style="text-align:center">Sangat Setuju (4)</th>
                      <th scope="col" style="text-align:center">Total</th>
                      <th scope="col" style="text-align:center">Rata-rata</th>
                      <!-- <th colspan="1"></th> -->
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                                      $nomer=0;
                                      for ($k = 0; $k < count($dataPertanyaan2); $k++){
                                      $nomer++;?>
                    <tr>
                      <?php $tot = $sm[$k]+$m[$k]+$km[$k]+$tm[$k];?>
                      <th th scope="row">{{$nomer}}</th>
                      <th><?php echo $categories[$k]; ?></th>
                      <td style="text-align:center"><?php echo $tm[$k]; ?></td>
                      <td style="text-align:center"><?php echo $km[$k]; ?></td>
                      <td style="text-align:center"><?php echo $m[$k]; ?></td>
                      <td style="text-align:center"><?php echo $sm[$k]; ?></td>
                      <th style="text-align:center">
                        <?php echo ($sm[$k]*4+$m[$k]*3+$km[$k]*2+$tm[$k]*1); ?></th>
                      <th style="text-align:center">
                        <?php echo number_format((($sm[$k]*4+$m[$k]*3+$km[$k]*2+$tm[$k]*1)/$tot),2); ?>
                      </th>
                    </tr>
                    <?php } ?>
                  </tbody>
                </table>
                <?php endif ?>


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

    <script src="vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap -->

    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- FastClick -->

    <script src="vendors/fastclick/lib/fastclick.js"></script>

    <!-- NProgress -->

    <script src="vendors/nprogress/nprogress.js"></script>

    <!-- Chart.js -->

    <script src="vendors/Chart.js/dist/Chart.min.js"></script>

    <!-- bootstrap-progressbar -->

    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>

    <!-- jQuery Knob -->

    <script src="vendors/jquery-knob/dist/jquery.knob.min.js"></script>



    <!-- Custom Theme Scripts -->

    <script src="vendors/build/js/custom.min.js"></script>

    <script>

      let dataMK = $("#namaMK");

      dataMK.change(function(){

        $("#Pertemuan option").not('.' + $(this).val()).hide();

        $("." + $(this).val()).show();

      })

      $(document).ready(function(){

        $('#namaMK').change(function(){

          console.log($(this).val());

          $("#Pertemuan").prop('disabled', false);

        })



      })

      $(document).ready(function(){

        $('#Pertemuan').change(function(){

          console.log($(this).val());

          $("#btngo").prop('disabled', false);

        })



      })

    </script>



    <script src="vendors/chart/highcharts.js"></script>



    <script type="text/javascript">

      Highcharts.chart('graff', {

    chart: {

        type: 'column'

    },

    title: {

        text: ''  

    },

    subtitle: {

        text: ''

        },

    xAxis: {

        categories: {!!json_encode($categories)!!} ,

        crosshair: true

    },

    yAxis: {

        min: 0,

        title: {

            text: 'Jumlah'

        }

    },

    tooltip: {

        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',

        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +

            '<td style="padding:0"><b>{point.y:.1f} vote</b></td></tr>',

        footerFormat: '</table>',

        shared: true,

        useHTML: true

    },

    plotOptions: {

        column: {

            pointPadding: 0.2,

            borderWidth: 0

        }

    },

    series: [{

            name: 'Tidak Setuju',

            data: {!!json_encode($tm)!!}

        }, {

            name: 'Kurang Setuju',

            data: {!!json_encode($km)!!}



        }, {

            name: 'Setuju',

            data: {!!json_encode($m)!!}



        }, {

            name: 'Sangat Setuju',

            data: {!!json_encode($sm)!!}



    }]

});  

    </script>

    

    <script type="text/javascript">

      Highcharts.chart('graff2', {

    chart: {

        type: 'column'

    },

    title: {

        text: 'Course Rating Result'

    },

    subtitle: {

        text: {!!json_encode($mk)!!} + ' (kk' + {!!json_encode($k)!!}+ ') : ' +{!!json_encode($p)!!}  

    },

    xAxis: {

        categories: {!!json_encode($categories)!!} ,

        crosshair: true

    },

    yAxis: {

        min: 0,

        title: {

            text: 'Jumlah'

        }

    },

    tooltip: {

        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',

        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +

            '<td style="padding:0"><b>{point.y:.1f} vote</b></td></tr>',

        footerFormat: '</table>',

        shared: true,

        useHTML: true

    },

    plotOptions: {

        column: {

            pointPadding: 0.2,

            borderWidth: 0

        }

    },

    series: [{

            name: 'Tidak Mengerti',

            data: {!!json_encode($tm)!!}

        }, {

            name: 'Kurang Mengerti',

            data: {!!json_encode($km)!!}



        }, {

            name: 'Mengerti',

            data: {!!json_encode($m)!!}



        }, {

            name: 'Sangat Mengerti',

            data: {!!json_encode($sm)!!}



    }]

});  

    </script>

    @endsection





    </body>



    </html>