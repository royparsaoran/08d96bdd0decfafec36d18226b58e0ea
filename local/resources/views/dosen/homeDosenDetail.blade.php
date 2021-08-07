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
    background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("{{URL::asset('images/cover/'.$count.'.png')}}");
    height: 50%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
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

    /* On mouse-over, add a deeper shadow */
    .card:hover {
      box-shadow: 0 10px 18px 0 	rgba(42, 63, 84,1);
    }
    a.custom-card,a.custom-card:hover {
      color: inherit;
    }
    /* Add some padding inside the card container */
    .container {
      padding: 2px 16px;
    }
    #vc:hover {
      box-shadow: 0 10px 18px 0 	rgba(42, 63, 84,1);
      border-radius:100%;
    }
    #mybutton {
      position: fixed;
      bottom: 5px;
      right: 14px;
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
            <table style="width: fit-content">
              <tr>
                <td>
                  <form method="POST" action="{{url('courseRatingDosen2')}}" id="formCourse">
                  {{csrf_field()}}
                  <div>
									<input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                  <a href="#" class="custom-card">
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
                    <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                    <a href="#" class="custom-card">
                      <div class="card">
                        <img src="{{URL::asset('images/coverDetail/2.png')}}" alt="Avatar" style="width:100%">
                        </div>
                      </div>
                    </a>
                  </form>
                </td>
                <td>
                  <form method="POST" action="{{url('administrasiDosen')}}" id="formAdmin">
                    {{csrf_field()}}
                    <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                  <a href="{{ url('/forumTitleMKDosen')}}" class="custom-card">
                    <div class="card">
                      <img src="{{URL::asset('images/coverDetail/3.png')}}" alt="Avatar" style="width:100%">
                      </div>
                    </div>
                  </a>
                </form>
                </td>
                <td>
                  <form method="POST" action="{{url('administrasiDosen')}}" id="formAdmin">
                    {{csrf_field()}}
                    <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                  <a href="#" class="custom-card">
                    <div class="card">
                      <img src="{{URL::asset('images/coverDetail/4.png')}}" alt="Avatar" style="width:100%">
                      </div>
                    </div>
                  </a>
                </form>
                </td>

                <td>
                  <a href="{{ url('/assignmentDosen')}}" class="custom-card">
                    <form method="POST" action="{{ URL::asset('assignmentDosen/selectMK') }}" id="formAsignment">
                      {{csrf_field()}}
                      <input type="hidden" name="matakuliah" value="{{$idMasterDKBS}}">
                    <div class="card">
                      <img src="{{URL::asset('images/coverDetail/5.png')}}" alt="Avatar" style="width:100%">
                      </div>
                    </div>
                  </a>
                </form>
                </td>

              </tr>
            </table>
            
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

<!-- Custom Theme Scripts -->
<script src="{{asset('vendors/build/js/custom.min.js')}}"></script>
<script>
  $("#formCourse a").click(function(e){
    $("#formCourse").submit();
  });
  $("#formAsignment a").click(function(e){
    $("#formAsignment").submit();
  });
  $("#formSyllabus a").click(function(e){
    $("#formSyllabus").submit();
  });
  $("#formAdmin a").click(function(e){
    $("#formAdmin").submit();
  });
</script>
@endsection
</body>

</html>