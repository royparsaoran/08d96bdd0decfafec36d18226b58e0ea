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
   <!-- Datatables -->
   <link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
   <link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

@endsection

@section('content')
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Bank</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">


              <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Bank Soal</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                  </div>
                    <div class="clearfix"></div>
                  <div class="x_content">


                          <form method="POST" action="{{ url('/bankSoalDosen/update/'.$banksoal->id) }}" class="form-horizontal form-label-left" enctype="multipart/form-data" novalidate>
                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="namaSoal">Nama Soal<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input id="namaSoal" class="form-control col-md-7 col-xs-12" name="namaSoal" placeholder="" required="required" type="text" value="{{$banksoal->namaSoal}}" >
                                    </div>
                                  </div>


                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Jumlah Soal<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input type="number" id="jumlahSoal" name="jumlahSoal" required="required" placeholder="" class="form-control col-md-7 col-xs-12" value="{{$banksoal->jumlahSoal}}">
                                    </div>
                                  </div>

                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tipeSoal">Tipe Soal<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <select class="form-control" required="required" id="tipeSoal" name="tipeSoal"  onchange="CheckTipeSoal(this.value);">
                                        <?php if ($banksoal->tipeSoal == "pg"): ?>
                                          <option value="pg" selected>Pilihan Ganda</option>
                                          <option value="isian">Isian</option>
                                          <option value="gabungan">Gabungan</option>
                                          <option value="isiancheck">Isian Check</option>
                                          <option value="gabungancheck">Gabungan Check</option>
                                          <div id="pilihan" value="pg"></div>
                                        <?php elseif ($banksoal->tipeSoal == "isian"): ?>
                                          <option value="pg" >Pilihan Ganda</option>
                                          <option value="isian" selected>Isian</option>
                                          <option value="gabungan">Gabungan</option>
                                          <option value="isiancheck">Isian Check</option>
                                          <option value="gabungancheck">Gabungan Check</option>
                                            <div id="pilihan" value="isian"></div>
                                        <?php elseif ($banksoal->tipeSoal == "gabungan"): ?>
                                          <option value="pg" >Pilihan Ganda</option>
                                          <option value="isian">Isian</option>
                                          <option value="gabungan" selected>Gabungan</option>
                                          <option value="isiancheck">Isian Check</option>
                                          <option value="gabungancheck">Gabungan Check</option>
                                            <div id="pilihan" value="gabungan"></div>
                                        <?php elseif ($banksoal->tipeSoal == "isiancheck"): ?>
                                          <option value="pg" selected>Pilihan Ganda</option>
                                          <option value="isian">Isian</option>
                                          <option value="gabungan">Gabungan</option>
                                          <option value="isiancheck" selected>Isian Check</option>
                                          <option value="gabungancheck">Gabungan Check</option>
                                            <div id="pilihan" value="isiancheck"></div>
                                        <?php elseif ($banksoal->tipeSoal == "gabungancheck"): ?>
                                          <option value="pg" selected>Pilihan Ganda</option>
                                          <option value="isian">Isian</option>
                                          <option value="gabungan">Gabungan</option>
                                          <option value="isiancheck">Isian Check</option>
                                          <option value="gabungancheck" selected>Gabungan Check</option>
                                            <div id="pilihan" value="gabungancheck"></div>
                                        <?php else: ?>
                                          <option value="pg">Pilihan Ganda</option>
                                          <option value="isian">Isian</option>
                                          <option value="gabungan">Gabungan</option>
                                          <option value="isiancheck">Isian Check</option>
                                          <option value="gabungancheck">Gabungan Check</option>
                                           <div id="pilihan" value=""></div>
                                        <?php endif; ?>

                                      </select>
                                    </div>
                                  </div>


                                    <div id="persentase">
                                    <div class="item form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="persenPG"> Persentase Nilai PG (Dalam Persen) <span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="persenPG" class="form-control col-md-7 col-xs-12" name="persenPG" placeholder="" required="required" type="text" value="{{$banksoal->persenPG}}" >
                                      </div>
                                      %
                                    </div>

                                    <div class="item form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="persenIsian"> Persentase Nilai Isian (Dalam Persen) <span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="persenIsian" class="form-control col-md-7 col-xs-12" name="persenIsian" placeholder="" required="required" type="text" value="{{$banksoal->persenIsian}}" >
                                      </div>
                                      %
                                    </div>
                                  </div>

                                  <div id="jawabanRequired">
                                    <div class="item form-group">
                                      <label class="control-label col-md-3 col-sm-3 col-xs-12" for="case">Jawaban Mahasiswa Required<span class="required">*</span>
                                      </label>
                                      <div class="col-md-6 col-sm-6 col-xs-12">
                                        <?php if ($banksoal->jawabanRequired == "yes"): ?>
                                          <input type="radio" class="flat" name="caseReq" id="caseReqY" value="yes" checked="true" required="required"/> Yes
                                          <input type="radio" class="flat" name="caseReq" id="caseReqN" value="no"/> No
                                        <?php else: ?>
                                          <input type="radio" class="flat" name="caseReq" id="caseReqY" value="yes"  /> Yes
                                          <input type="radio" class="flat" name="caseReq" id="caseReqN" value="no" checked="true" required="required"/> No
                                        <?php endif; ?>

                                      </div>
                                    </div>
                                  </div>





                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="case">Case Sensitive<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <?php if ($banksoal->isSensitive == "yes"): ?>
                                        <input type="radio" class="flat" name="case" id="caseY" value="yes" checked="true" required="required"/> Yes
                                        <input type="radio" class="flat" name="case" id="caseN" value="no"/> No
                                      <?php else: ?>
                                        <input type="radio" class="flat" name="case" id="caseY" value="yes" /> Yes
                                        <input type="radio" class="flat" name="case" id="caseN" value="no" checked="true" required="required"/> No
                                      <?php endif; ?>

                                    </div>
                                  </div>
                                  <br/>



                                  <div class="ln_solid"></div>
                                  <div align="center">
                                  <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                      <button type="submit" class="btn btn-primary">Cancel</button>
                                      <button id="send" type="submit" class="btn btn-success">Update</button>
                                    </div>
                                  </div>
                                 </div>
                                 {{ csrf_field() }}
                                </form>





                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                  </div>
                    <!-- /page content -->

@endsection

@section('js')
<script type="text/javascript">
  // document.getElementById("persenIsi").style.display = "none";
  // document.getElementById("persenPG").style.display = "none";
  var pil = document.getElementById("pilihan").value;
  CheckTipeSoal(pil);


  function CheckTipeSoal(val)
  {
   var element=document.getElementById('persentase');
   var element2=document.getElementById('jawabanRequired');
   if(val=='gabungancheck')
   {
     element.style.display='block';
     element2.style.display='block';
   }
   else if (val == "isiancheck")
   {
      element.style.display='none';
      element2.style.display='block';
   }
   else
   {
     element.style.display='none';
     element2.style.display='none';
   }

  }


</script>
    <!-- iCheck -->
    <script src="{{asset('vendors/iCheck/icheck.min.js')}}"></script>
    <!-- jQuery -->
    <script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <!-- Bootstrap -->
    <script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <!-- FastClick -->
    <script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
    <!-- NProgress -->
    <script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
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


    <!-- Custom Theme Scripts -->
    <script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
@endsection
  </body>
</html>
