@extends('layouts.dosen')

@section('css')

<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="vendors/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="vendors/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="vendors/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="vendors/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
     folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="vendors/dist/css/skins/_all-skins.min.css">

<!-- Custom Theme Style -->
<link href="vendors/build/css/custom.min.css" rel="stylesheet">
<style>
  /* body {
    background: #f2f2f2;
    font-family: 'Poppins', sans-serif;
  } */

  /* h3 {
    font-family: 'Poppins', sans-serif;
  } */

  .social-box .box {
    /* background: #eaf9f7; */
    background: #1e3258;
    border-radius: 10px;
    padding: 40px 10px;
    margin: 20px 0px;
    color: #ffffff;
    cursor: pointer;
    transition: all 0.5s ease-out;
  }

  .social-box .box:hover {
    box-shadow: 0 0 6px #4183D7;
  }

  .social-box .box .box-text {
    margin: 20px 0px;
    font-size: 15px;
    line-height: 30px;
  }

  .social-box .box .box-btn a {
    text-decoration: none;
    color: #4183D7;
    font-size: 16px;
  }

  /*
  .fa {
    color: #4183D7;
  } */
</style>
@endsection

@section('content')
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Forum</h3>
      </div>
    </div>

    <div class="clearfix"></div>

    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Timeline</h2>
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
          <div class="x_content">
            <!-- row -->
            <div class="row">
              <div class="col-md-12">
                <form class="form-inline" action="" method="POST">
                  {{ csrf_field() }}
                  <div class="input-group">
                    <input name="search" type="search" class="form-control" placeholder="Search" style="width:100%;">
                    <span class="input-group-addon">
                      <a type="submit" href="#" value="" onclick="$(this).closest('form').submit()"> <i
                          class="glyphicon glyphicon-search"> </i></a></span>
                  </div>
                </form>
              </div>

              <h4>Trending Topics : </h4>
              <div>
                <?php foreach($trending as $tren) :?>
                <button onclick="" class="btn btn-primary">{{ $tren->title }}</button>
                <?php endforeach; ?>
              </div>
              <hr>
              <h4>Ranking Mahasiswa : </h4>
              <div>
                <div>
                  <?php foreach ($ranking as $r) { ?>
                  <button class="btn-facebook"> {{ $r->createdby }}</button>
                  <?php  } ?>
                </div>
              </div>
              <hr>
              <h4>Hot Forums : </h4>
              <div class="social-box">
                <div class="container">
                  <div class="row">
                    <?php foreach ($forum as $f) : ?>
                    <div class="col-lg-4 col-xs-12 text-center">
                      <div class="box">
                        {{-- <i class="fa fa-behance fa-3x" aria-hidden="true"></i> --}}
                        <div class="box-title">
                          <h3><b>{{ $f->title }}</b></h3>
                        </div>
                        <div class="box-text">

                          @if ($f->img != "")
                          <img src=" {!!  URL::asset('images/forum/'.$f->img)  !!}" alt="" width="40%;">
                          @endif</div>
                        <div class="box-btn">
                          {{-- <a href="#">Learn More</a> --}}

                          <span>{!! $f->body !!}</span>

                        </div>
                      </div>
                    </div>
                    <?php endforeach; ?>

                  </div>
                  <div align="center">
                    {{ $forum->links() }} </div>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->





          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- /page content -->
@endsection

@section('js')

<!-- jQuery 3 -->
<script src="vendors/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="vendors/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="vendors/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="vendors/dist/js/demo.js"></script>

<!-- Custom Theme Scripts -->
<script src="vendors/build/js/custom.min.js"></script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
@endsection
</body>

</html>
