@extends('layouts.master')



@section('css')



<!-- Bootstrap -->

<link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font 1 -->

<link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

<!-- NProgress -->

<link href="vendors/nprogress/nprogress.css" rel="stylesheet">

<!-- bootstrap-progressbar -->

<link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">





<!-- Custom Theme Style -->

<link href="vendors/build/css/custom.min.css" rel="stylesheet">



<link href="vendors/bootstrap-survey/css/scale.css" rel="stylesheet">

@endsection



@section('content')

<!-- page content -->

<div class="right_col" role="main">

  <div class="">

    <div class="page-title">

      <div class="title_left">

        <h3>Messages</h3>

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

              <li class="dropdown">

                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i
                    class="fa fa-wrench"></i></a>

                <ul class="dropdown-menu" role="menu">

                  <li><a href="#">Settings 1</a>

                  </li>

                  <li><a href="#">Settings 2</a>

                  </li>

                </ul>

              </li>

              <li><a class="close-link"><i class="fa fa-close"></i></a>

              </li>

            </ul>

            <div class="clearfix"></div>

          </div>



          <?php if (session('message') != null): ?>

          <div class="alert alert-success">

            <?php echo  session('message') ?>

          </div>

          <?php endif ?>



          <div class="x_content">

            <form method="POST" action="{{url('comment/store')}}">
              {{csrf_field()}}
              <div class="form-group">
                <label for="usr">Mata Kuliah :</label>
                <select class="btn btn-primary dropdown-toggle" name="iddetail" id="iddetail" required="">
                  <option value="">-- Pilih --</option>
                  <?php foreach ($dataMK as $dtmk ): ?>
                  <option value="{{ $dtmk->idDetailDKBS }}">{{ $dtmk->kodeMK }} - {{ $dtmk->namaMK }}</option>
                  <?php endforeach ?>
                </select>
              </div>
              <div class="form-group">
                <label for="comment">Komentar :</label>
                <textarea class="form-control" rows="5" id="Komentar" name="Komentar" required=""
                  placeholder="Berikan Komentar"></textarea>
              </div>
              <div align="right">
                <input type="submit" name="Submit" class="btn btn-round btn-warning" value="Submit">
              </div>
            </form>
          </div>
          <!-- /form input knob -->



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

      @endsection

      </body>

      </html>