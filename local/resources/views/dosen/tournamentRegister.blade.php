@extends('layouts.dosen')

@section('css')
    <!-- Bootstrap -->
    <link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <!-- NProgress -->
    <link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
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
          <h3>Register</h3>
        </div>
      </div>
      <div class="clearfix"></div>

      <div class="row">

        <div class="col-md-12 col-sm-12 col-xs-12">
          <div class="x_panel">
            <div class="x_title">
              <h2>Registrasi Peserta Tournament</h2>
              <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
              </ul>
              <div class="clearfix"></div>
            </div>
            <div class="x_content">

              <div class="" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                  <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">Registrasi</a></li>
                  <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Peserta Tournament</a></li>
                  <br/>
                </ul>
                <div id="myTabContent" class="tab-content">

                  <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                      {!! Form::open(['method' => 'POST' ] ) !!}
                       <table id="datatable-keytable" class="table table-striped table-bordered">
                         <thead>
                           <tr>
                             <th>Nama Tournament</th>
                             <th>Tanggal Tournament</th>
                             <th>Nama Mata Kuliah</th>
                             <th>Pembuat</th>
                             <th>Aksi</th>
                           </tr>
                         </thead>


                         <tbody>
                           <?php foreach ($tournament as $tour): ?>
                             <tr>
                               <td>{{$tour->namaTournament}}</td>
                               <td>{{ date('d-M-Y', strtotime($tour->tanggalTournament)) }}</td>
                               <td>{{$tour->namaMK}}</td>
                               <td>{{$tour->creator}}</td>
                              <td class=" "><a href="{{Url('/tournamentDosen/register/'.$tour->id)}}"><button type="button" class="btn btn-info">Detail</button></a></td>
                             </tr>
                           <?php endforeach; ?>


                         </tbody>
                       </table>
                       {!!Form::close()!!}



                  </div>

                  <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                    {!! Form::open(['method' => 'POST' ] ) !!}
                     <table id="datatable" class="table table-striped table-bordered">
                       <thead>
                         <tr>
                           <th>Nama Tournament</th>
                           <th>Tanggal Tournament</th>
                           <th>Nama Mata Kuliah</th>
                           <th>Pembuat</th>
                           <th>Aksi</th>
                         </tr>
                       </thead>


                       <tbody>
                         <?php foreach ($tournament as $tour): ?>
                           <tr>
                             <td>{{$tour->namaTournament}}</td>
                             <td>{{ date('d-M-Y', strtotime($tour->tanggalTournament)) }}</td>
                             <td>{{$tour->namaMK}}</td>
                             <td>{{$tour->creator}}</td>
                            <td class=" "><a href="{{Url('/tournamentDosen/registered/'.$tour->id)}}"><button type="button" class="btn btn-primary">Detail</button></a></td>
                           </tr>
                         <?php endforeach; ?>


                       </tbody>
                     </table>
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
<script src="{{ asset('vendors/jquery/dist/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{ asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- FastClick -->
<script src="{{ asset('vendors/fastclick/lib/fastclick.js')}}"></script>
<!-- NProgress -->
<script src="{{ asset('vendors/nprogress/nprogress.js')}}"></script>
<!-- jQuery Smart Wizard -->
<script src="{{ asset('vendors/jQuery-Smart-Wizard/js/jquery.smartWizard.js')}}"></script>
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
<script src="{{ asset('vendors/build/js/custom.min.js')}}"></script>
@endsection
  </body>
</html>
