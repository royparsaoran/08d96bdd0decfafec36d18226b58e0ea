@extends('layouts.dosen')

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
                <h3>Forcasting <small></small></h3>
              </div>
            </div>

            <div class="clearfix"></div>


              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><small></small></h2>
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
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Nilai Mutu Calc</a></li>
                        <!-- <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Forecasting</a></li> -->
                        <br/>
                      </ul>
                      <div id="myTabContent" class="tab-content">

                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                          <table id="datatable-buttons" class="table table-striped table-bordered bulk_action">
                            <thead>
                              <tr>
							    <th>NRP</th>
                                <th>Nama</th>
                                <th>Gaya Belajar</th>
                              </tr>
                            </thead>
                            <tbody>

                                <?php foreach ($forecasting as $fr): ?>
                                  <td>{{$fr->nrp}}</td>
                                  <td>{{$fr->nama}}</td>
                                  <td>{{$fr->gaya}}</td>
                                </tr>
                                <?php endforeach; ?>


                            </tbody>
                          </table>

                          <table>
                              <tr>
                                  <td>Total Kinestetik </td>
                                  <td>:</td>
                                  <td>{{count($totalKinetik)}}</td>
                              </tr>
                              <tr>
                                  <td>Total Visual</td>
                                  <td>:</td>
                                  <td>{{count($totalVisual)}}</td>
                              </tr>
                              <tr>
                                  <td>Total Auditori</td>
                                  <td>:</td>
                                  <td>{{count($totalAuditori)}}</td>
                              </tr>

                          </table>







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

                            <form method="POST" action="{{ URL('/forecastingDosen') }}" class="form-horizontal form-label-left" enctype="multipart/form-data" novalidate>
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
    <!-- Switchery -->
    <script src="{{asset('vendors/switchery/dist/switchery.min.js')}}"></script>
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
