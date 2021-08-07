@extends('layouts.admin')

@section('css')
<!-- Bootstrap -->
<link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- FullCalendar -->
<link href="{{URL::asset('vendors/fullcalendar/dist/fullcalendar.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/fullcalendar/dist/fullcalendar.print.css')}}" rel="stylesheet" media="print">
<!-- iCheck -->
<link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"
  rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">
@endsection

@section('content')

<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>DKBS</h3>
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>DKBS Info</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">


            <!-- master -->
            <form action="{{url('/dkbs/import')}}" method="POST" enctype="multipart/form-data">
              <input type="file" name="imported-file" />
              @if(Session::has('message'))
              <div class="alert alert-success alert-dismissible fade in" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">×</span>
                </button>
                {{Session::get('message')}}
              </div>
              @endif
              @if(Session::has('error'))
              <div class="alert alert-danger alert-dismissible fade in" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                    aria-hidden="true">×</span>
                </button>
                {{Session::get('error')}}
              </div>
              @endif
              <br />
              <div align="center">
                <a href="{{URL('/dkbs/import')}}"><button class="btn btn-primary" type="submit">Impor Master
                    DKBS</button></a>
                {{csrf_field()}}
              </div>
            </form>
            <!-- detail -->
            <!--              <form action="{{url('/dkbs/import2')}}" method="POST" enctype="multipart/form-data" >
                      <input type="file" name="imported-file"/>
                      @if(Session::has('message2'))
                      <div class="alert alert-success alert-dismissible fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                        </button>
                        {{Session::get('message2')}}
                      </div>
                      @endif
                      @if(Session::has('error2'))
                      <div class="alert alert-danger alert-dismissible fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
                        </button>
                        {{Session::get('error2')}}
                      </div>
                      @endif
                      <br/>
                      <div align="center">
                            <a href="{{URL('/dkbs/import2')}}"><button class="btn btn-primary" type="submit">Import Detail DKBS</button></a>
                          {{csrf_field()}}
                      </div>
                    </form> -->

            <form action="{{url('/dkbs/export')}}" method="GET" enctype="multipart/form-data">
              <div align="center">
                <a href="{{URL('/dkbs/export')}}"><button class="btn btn-success" type="submit">Export</button></a>
                {{csrf_field()}}
              </div>
            </form>


            <div align="center">
              <button type="button" class="btn btn-danger" data-toggle="modal"
                data-target=".bs-example-modal-lg">Delete</button>
              <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                  <div class="modal-content">

                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                      </button>
                      <h4 class="modal-title" id="myModalLabel">DELETE</h4>
                    </div>
                    <div class="modal-body">
                      <h4>Apakah anda yakin akan menghapus data DKBS ?</h4>
                      <p>Data yang telah dihapus tidak dapat dirubah kembali </p>
                    </div>
                    <div class="modal-footer">
                      <form action="{{url('/dkbs/delete')}}" method="GET" enctype="multipart/form-data">
                        <div align="center">
                          <a href="{{URL('/dkbs/delete')}}"><button class="btn btn-danger"
                              type="submit">Delete</button></a>
                          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                      </form>
                    </div>

                  </div>
                </div>
              </div>

              {{csrf_field()}}
            </div>


            <div class="ln_solid"></div>




            <table id="datatable" class="table table-striped table-bordered">
              <thead>
                <tr>
                  <th>Semester</th>
                  <th>KodeMK</th>
                  <th>Nama Mata Kuliah</th>
                  <th>NRP</th>
                  <th>Nama</th>
                  <th>Kelas</th>
                  <th>SKS</th>
                  <th>Hari</th>
                  <th>Jam Awal</th>
                  <th>Jam Akhir</th>
                  <th>NIK</th>
                  <th>Dosen</th>
                  <th>Ruangan</th>
                </tr>
              </thead>

              <tbody>
                <?php foreach ($dkbs as $d): ?>
                <tr>
                  <td>{{$d->semester_namaSemester}}</td>
                  <td>{{$d->matakuliah_kodeMK}}</td>
                  <td>{{$d->namaMK}}</td>
                  <td>{{$d->mahasiswa_NRP}}</td>
                  <td>{{$d->namaMhs}}</td>
                  <td>{{$d->kelas}}</td>
                  <td>{{$d->sks}}</td>
                  <td>{{$d->hari}}</td>
                  <td>{{$d->jamMulai}}</td>
                  <td>{{$d->jamBerakir}}</td>
                  <td>{{$d->dosen_nik}}</td>
                  <td>{{$d->namaDosen}}</td>
                  <td>{{$d->ruangan}}</td>
                </tr>
                <?php endforeach; ?>
              </tbody>
            </table>




          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /page content

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
<!-- FullCalendar -->
<script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
<script src="{{asset('vendors/fullcalendar/dist/fullcalendar.min.js')}}"></script>
<!-- iCheck -->
<script src="{{ asset('vendors/iCheck/icheck.min.js')}}"></script>
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
