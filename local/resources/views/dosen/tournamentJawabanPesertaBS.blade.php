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
        <h3>Tournament</h3>
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
   <div class="col-md-12 col-sm-12 col-xs-12">
     <div class="x_panel">
       <div class="x_title">
         <h2>Jawaban Peserta Tournament</h2>
         <ul class="nav navbar-right panel_toolbox">
           <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
           </li>
         </ul>
         <div class="clearfix"></div>
       </div>
       <div class="x_content">

         @if(Session::has('error'))
         <div class="alert alert-danger alert-dismissible fade in" role="alert">
             <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
             </button>
             {{Session::get('error')}}
         </div>
         @endif


         <!-- <form action="/tournament2" method="POST" enctype="multipart/form-data"> -->
           {!! Form::open(['method'=>'POST', 'action'=>['tournamentDosenController@score',$tournament->id]])!!}
            <table id="datatable" class="table table-striped table-bordered" >
              <thead>
                <tr>
                  <th class="column-title">Title</th>
                  <th class="column-title">Soal</th>
                  <th class="column-title">Jawaban Mahasiswa</th>
                  <th class="column-title">Jawaban Gambar</th>
                  <th class="column-title">Status</th>
                  <th class="column-title">Bobot</th>
                  <th class="column-title">Salah</th>
                  <th class="column-title">Benar</th>
                </tr>
              </thead>
                <?php foreach ($isiancek as $isian): ?>
                  <tr>
                      <td>{{$isian->title}}</td>
                      <td>{{$isian->soal}}</td>
                      <td>{{$isian->jawabanmhs}}</td>
                      <td><img src="{{URL('images/jawaban/'.$isian->jawabanGambar)}}" width="300px" height="300px"></td>
                      <td>{{$isian->status}}</td>
                      <td><input type="text" name="bobots[]" id="bobots"/></td>
                      <td><a href="{{URL('/tournamentCheck/jawabanpeserta/false/'.$isian->id)}}"><button type="button" class="btn btn-danger">Salah</button></a></td>
                      <td><a href="{{URL('/tournamentCheck/jawabanpeserta/true/'.$isian->id)}}"><button type="button" class="btn btn-success">Benar</button></a></td>
                  </tr>
                <?php endforeach; ?>
              <tbody>
                <td></td>
              </tbody>
            </table>

            <div id="total"></div>


                {{csrf_field()}}
                  <a href="{{Url('/tournament/score/'.$tournament->id)}}"><button type="submit" class="btn btn-info">Submit Answer</button></a>
          </form>


          <!-- <div align="center">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Terminate</button>
            <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">

                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">Terminate Answer</h4>
                  </div>
                  <div class="modal-body">
                    <h4>Apakah anda yakin akan mengirimkan jawaban ?</h4>
                    <p>Jawaban yang telah di submit tidak dapat dirubah kembali </p>
                  </div>
                  <div class="modal-footer">
                    {!! Form::open(['method'=>'POST', 'action'=>['tournamentDosenController@score',$tournament->id]])!!}
                    <div align="center">
                      <input type="hidden" name="bobot" id="bobot" value="0">
                      <input type="hidden" value="{{$peserta->nama}}" name="user">
                      <a href="{{Url('/tournament/score/'.$tournament->id)}}"><button type="submit" class="btn btn-info">Submit Answer</button></a>
                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                    {!! Form::close() !!}
                  </div>

                </div>
              </div>
            </div>
          </div> -->


          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /page content -->

@endsection

@section('js')
  <script>
   var bobots = document.getElementsByClassName("bobots");
   var hasil = 0;
   for (var i = 0; i < bobots.length; i++) {
        hasil+= bobots[i]
       });
   }
      document.getElementById("total").innerHTML = "COBAAAAAAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" ;


  </script>

  <!-- jQuery -->
  <script src="{{ asset('vendors/jquery/dist/jquery.min.js')}}"></script>
  <!-- Bootstrap -->
  <script src="{{ asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
  <!-- FastClick -->
  <script src="{{ asset('vendors/fastclick/lib/fastclick.js')}}"></script>
  <!-- NProgress -->
  <script src="{{ asset('vendors/nprogress/nprogress.js')}}"></script>
  <!-- iCheck -->
  <script src="{{ asset('vendors/iCheck/icheck.min.js')}}"></script>
  <!-- Datatables -->
  <script src="{{ asset('vendors/datatables.net/js/jquery.dataTables.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-buttons/js/buttons.print.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>
  <script src="{{ asset('vendors/datatables.net-scroller/js/dataTables.scroller.min.js')}}"></script>
  <script src="{{ asset('vendors/jszip/dist/jszip.min.js')}}"></script>
  <script src="{{ asset('vendors/pdfmake/build/pdfmake.min.js')}}"></script>
  <script src="{{ asset('vendors/pdfmake/build/vfs_fonts.js')}}"></script>


  <!-- Custom Theme Scripts -->
  <script src="{{ asset('vendors/build/js/custom.min.js')}}"></script>

@endsection
  </body>
</html>
