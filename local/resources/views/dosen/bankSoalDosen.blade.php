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
                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">List Bank Soal</a></li>
                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Create Bank Soal</a></li>
                        <!-- <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Semester 2</a></li>  -->
                        <br/>
                      </ul>
                      <div id="myTabContent" class="tab-content">

                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                       <form method="POST" action="/bankSoal" >
                          <table id="datatable-keytable" class="table table-striped table-bordered">
                            <thead>
                              <tr>
                                <th>Nama Soal</th>
                                <th>Pembuat Soal</th>
                                <th>Tahun Terbit</th>
                                <th>Tipe Soal</th>
                                <th>Jumlah Soal</th>
                                <th>Case Sensitive</th>
                                <th>Detail</th>
                                <th>Update</th>
                                <th>Delete</th>
                              </tr>
                            </thead>


                            <tbody>

                                <?php foreach ($bank as $b): ?>
                                    <tr>
                                      <td>{{$b->namaSoal}}</td>
                                      <td>{{$b->pembuat}}</td>
                                      <td>{{ date('d-M-Y', strtotime($b->tahunTerbit))}}</td>
                                      <td>{{$b->tipeSoal}}</td>
                                      <td>{{$b->jumlahSoal}}</td>
                                      <td>{{$b->isSensitive}}</td>
                                      <?php if ($b->pembuat == Session::get('login')): ?>
                                        <td class=" "><a href="{{Url('/bankSoal/show/'.$b->id)}}"><button type="button" class="btn btn-info">Detail</button></a></td>
                                        <td class=" "><a href="{{Url('/bankSoalDosen/edit/'.$b->id)}}"><button type="button" class="btn btn-warning">Update</button></a></td>
                                        <td class=" "><a href="{{Url('/bankSoalDosen/delete/'.$b->id)}}"><button type="button" class="btn btn-danger">Delete</button></a></td>
                                      <?php else: ?>
                                        <td class=" "></td>
                                        <td class=" "></td>
                                        <td class=" "></td>
                                      <?php endif; ?>



                                    </tr>
                                <?php endforeach; ?>


                            </tbody>
                          </table>
                        </form>

                        @if(Session::has('error'))
                        <div class="alert alert-danger alert-dismissible fade in" role="alert">
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                          </button>
                          {{Session::get('error')}}
                        </div>
                        @endif

                        @if ($errors->any())
                        <div class="alert alert-danger alert-dismissible fade in" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                            </button>
                                  @foreach ($errors->all() as $error)
                                      {{ $error }}
                                  @endforeach
                          </div>
                      @endif

                        </div>

                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                          <form method="POST" action="{{ url('/bankSoalDosen') }}" class="form-horizontal form-label-left" enctype="multipart/form-data" novalidate>
                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="namaSoal">Nama Soal<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input id="namaSoal" class="form-control col-md-7 col-xs-12" name="namaSoal" placeholder="" required="required" type="text">
                                    </div>
                                  </div>


                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="jumlahSoal">Jumlah Soal<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input type="number" id="jumlahSoal" name="jumlahSoal" required="required" placeholder="" class="form-control col-md-7 col-xs-12">
                                    </div>
                                  </div>

                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="tipeSoal">Tipe Soal<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <select class="form-control" required="required" id="tipeSoal" name="tipeSoal" onchange="CheckTipeSoal(this.value);" >
                                        <option value="pg">Pilihan Ganda</option>
                                        <option value="isian">Isian</option>
                                        <option value="gabungan">Gabungan</option>
                                        <option value="isiancheck">Isian Check</option>
                                        <option value="gabungancheck">Gabungan Check</option>
                                      </select>
                                    </div>
                                  </div>
                                  <div id="persentase" style='display:none;'>
                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="persenPG"> Persentase Nilai PG (Dalam Persen) <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input id="persenPG" class="form-control col-md-7 col-xs-12" name="persenPG" placeholder="" required="required" type="text"  >
                                    </div>
                                    %
                                  </div>

                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="persenIsian"> Persentase Nilai Isian (Dalam Persen) <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input id="persenIsian" class="form-control col-md-7 col-xs-12" name="persenIsian" placeholder="" required="required" type="text" >
                                    </div>
                                    %
                                  </div>
                                </div>

                                <div id="jawabanRequired" style='display:none;'>
                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="case">Jawaban Mahasiswa Required<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input type="radio" class="flat" name="caseReq" id="caseReqY" value="yes" checked="true" required="required"/> Yes
                                      <input type="radio" class="flat" name="caseReq" id="caseReqN" value="no"/> No
                                    </div>
                                  </div>
                                </div>

                                  <div class="item form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="case">Case Sensitive<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                      <input type="radio" class="flat" name="case" id="caseY" value="yes" checked="true" required="required"/> Yes
                                      <input type="radio" class="flat" name="case" id="caseN" value="no"/> No
                                    </div>
                                  </div>
                                  <br/>



                                  <div class="ln_solid"></div>
                                  <div align="center">
                                  <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                      <button type="submit" class="btn btn-primary">Cancel</button>
                                      <button id="send" type="submit" class="btn btn-success">Submit</button>
                                    </div>
                                  </div>
                                 </div>
                                 {{ csrf_field() }}
                                </form>

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
                  </div>
                    <!-- /page content -->

@endsection

@section('js')
    <script type="text/javascript">
      // document.getElementById("persenIsi").style.display = "none";
      // document.getElementById("persenPG").style.display = "none";

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
