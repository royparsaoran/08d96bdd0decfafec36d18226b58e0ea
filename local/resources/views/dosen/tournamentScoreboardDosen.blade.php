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

<style type="text/css">
.hijau
{
  background-color: #60e760;

}
.first
{
  background-color: #1daa1d;

}
.merah
{
  background-color: #e87272;

}
.untried
{

}
</style>
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
           <h2>Tournament Scoreboard ({!!$tournament->namaTournament!!})</h2>
           <ul class="nav navbar-right panel_toolbox">
             <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
             </li>
           </ul>
           <div class="clearfix"></div>
         </div>
         <div class="x_content">
           @if(Session::has('success'))
           <div class="alert alert-success alert-dismissible fade in" role="alert">
             <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
             </button>
             {{Session::get('success')}}
           </div>
           @endif
           @if(Session::has('error'))
           <div class="alert alert-danger alert-dismissible fade in" role="alert">
             <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span>
             </button>
             {{Session::get('error')}}
           </div>
           @endif
             <!-- <div class="row">
               <table border="1px solid black" style="color:black">
                   <tr>
                      <td class="first"><b>First Solver</b></td>
                   </tr>
                   <tr>
                       <td class="hijau"><b>Accepted</b></td>
                   </tr>
                   <tr>
                       <td class="merah"><b>Wrong Answer</b></td>
                   </tr>
                   <tr>
                       <td class="untried">Untried</td>
                   </tr>
               </table>
               <br/>
             </div> -->
                <?php if ($banksoal->tipeSoal == "isiancheck" || $banksoal->tipeSoal == "gabungancheck"  ): ?>
                  <div class="row">
                     <div class="col-sm-12">
                       <div class="card-box table-responsive">
                         <table id="datatable-buttons" class="table table-striped table-bordered" style="color:black">
                           <thead>
                             <tr>
                               <th>Rank</th>
                               <th>Nama</th>

                               <!-- <th>Solve</th> -->
                               <th>Nilai</th>
                               <!-- <th>Tanggal Tournament</th> -->
                               <th hidden>Start</th>
                               <!-- <th>Finish</th> -->
                             </tr>
                           </thead>

                           <tbody>
                               <?php $i=1 ?>
                               <?php foreach ($nilai as $nil): ?>
                                   <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$nil->namaPeserta}}</td>

                                    <td>{{$nil->totalSolve}}</td>
                                    <td hidden>{{date('d-M-Y H:i:s',strtotime($nil->created_at)) }}</td>
                                   </tr>
                               <?php endforeach; ?>
                           </tbody>
                         </table>
                       </div>
                     </div>
                   </div>

                   <div align="center">
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
                             <h4>Apakah anda yakin akan mengirimkan memberikan point ke leaderboard ?</h4>
                             <p></p>
                           </div>
                           <div class="modal-footer">
                             {!! Form::open(['method'=>'POST', 'action'=>['tournamentDosenController@scoreLeaderboard',$tournament->id]])!!}
                             <div align="center">
                               <input type="hidden" name="idTournament" id="idTournament" value="{{$tournament->id}}">
                               <a href="#"><button type="submit" class="btn btn-info">Submit Scoreboard</button></a>
                               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                             </div>
                             {!! Form::close() !!}
                           </div>

                         </div>
                       </div>
                     </div>
                   </div>

                <?php else: ?>
                  <div class="row">
                     <div class="col-sm-12">
                       <div class="card-box table-responsive">
                         <table id="datatable-buttons" class="table table-striped table-bordered" style="color:black">
                           <thead>
                             <tr>
                               <th>Rank</th>
                               <th>Nama</th>
                               <th>Solve</th>
                               <th>Poin</th>
                               <!-- <th>Tanggal Tournament</th> -->
                               <th hidden>Start</th>
                               <!-- <th>Finish</th> -->
                             </tr>
                           </thead>

                           <tbody>
                               <?php $i=1 ?>
                               <?php foreach ($nilai as $nil): ?>
                                   <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$nil->namaPeserta}}</td>
                                    <td>{{$nil->totalSolve}}</td>
                                    <td>{{($nil->totalSolve / $banyaksoal)*100 }}</td>
                                    <td hidden>{{date('d-M-Y H:i:s',strtotime($nil->created_at)) }}</td>
                                   </tr>
                               <?php endforeach; ?>

                           </tbody>
                         </table>
                       </div>
                     </div>
                   </div>

                   <div align="center">
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
                             {!! Form::open(['method'=>'POST', 'action'=>['tournamentDosenController@scoreLeaderboard',$tournament->id]])!!}
                             <div align="center">
                               <input type="hidden" name="idTournament" id="idTournament" value="{{$tournament->id}}">
                               <a href="#"><button type="submit" class="btn btn-info">Submit Scoreboard</button></a>
                               <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                             </div>
                             {!! Form::close() !!}
                           </div>

                         </div>
                       </div>
                     </div>
                   </div>
                <?php endif; ?>


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
