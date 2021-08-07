<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Course Learning System</title>

  <!-- Bootstrap -->
  <link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
  <!-- NProgress -->
  <link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
  <!-- Link Swiper's CSS -->
  <link href="{{URL::asset('vendors/dist/css/swiper.min.css')}}" rel="stylesheet">
  <!-- iCheck -->
  <link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
  <!-- bootstrap-progressbar -->
  <link href="{{URL::asset('vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css')}}" rel="stylesheet">
  <!-- JQVMap -->
  <link href="{{URL::asset('vendors/jqvmap/dist/jqvmap.min.css')}}" rel="stylesheet" />
  <!-- bootstrap-daterangepicker -->
  <link href="{{URL::asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{URL::asset('vendors/bower_components/font-awesome/css/font-awesome.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{URL::asset('vendors/bower_components/Ionicons/css/ionicons.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{URL::asset('vendors/dist/css/AdminLTE.min.css')}}">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="{{URL::asset('vendors/dist/css/skins/_all-skins.min.css')}}">
  <!-- Morris chart -->
  <link rel="stylesheet" href="{{URL::asset('vendors/bower_components/morris.js/morris.css')}}">
  <!-- jvectormap -->
  <link rel="stylesheet" href="{{URL::asset('vendors/bower_components/jvectormap/jquery-jvectormap.css')}}">
  <!-- Date Picker -->
  <link rel="stylesheet"
    href="{{URL::asset('vendors/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
  <!-- Daterange picker -->
  <link rel="stylesheet"
    href="{{URL::asset('vendors/bower_components/bootstrap-daterangepicker/daterangepicker.css')}}">


  <!-- Custom Theme Style -->
  <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

  <!-- Slider styles -->
  <style>
    .card {
      /* Add shadows to create the "card" effect */
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      transition: 0.3s;
      width: 30%;
      padding: 5px;
      max-width: 30%;
      float: left;
    }

    /* On mouse-over, add a deeper shadow */
    .card:hover {
      box-shadow: 0 10px 18px 0 rgba(42, 63, 84, 1);
    }

    a.custom-card,
    a.custom-card:hover {
      color: inherit;
    }

    /* Add some padding inside the card container */
    .container {
      padding: 2px 16px;
      margin: auto;
    }

    .swiper-container {
      width: 100%;
      padding-top: 100px;
      padding-bottom: 100px;
    }

    .swiper-slide {
      background-position: center;
      background-size: cover;
      height: inherit;
      max-width: 40%;
      max-height: 40%;

      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;

    }

    .swiper-pagination-bullet {
      width: 20px;
      height: 20px;
      text-align: center;
      line-height: 20px;
      font-size: 12px;
      color: #000;
      opacity: 1;
      background: rgba(0, 0, 0, 0.2);
    }

    .swiper-pagination-bullet-active {
      color: #fff;
      background: #007aff;
    }

    th,
    td {
      padding: 3px;
    }

    @media only screen and (max-width: 500px) {
      .card {
        width: 100%;
        max-width: 100%;
        float: none;
      }
    }
  </style>

</head>

<body class="nav-sm">
  <div class="container body">
    <div class="main_container">
      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">
          <div class="navbar nav_title" style="border: 0;">
            <a href="{{ url('/homeDosen')}}" class="site_title"><i class="fa fa-code"></i> <span>Course Learning
                System</span></a>
          </div>

          <div class="clearfix"></div>

          <!-- menu profile quick info -->
          <div class="profile clearfix">
            <div class="profile_pic">
              <img src="{{URL::asset('images/foto/'.Session::get('foto'))}}" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <h2>{{Session::get('login')}}</h2>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- /menu profile quick info -->

          <br />

          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
              <!-- <h3>Level 1</h3> -->
              <ul class="nav side-menu">
                <li><a href="{{ url('/homeDosen')}}"><i class="fa fa-home"></i> Home </a></li>
                <li><a href="{{ url('/administrasiDosen')}}"><i class="fa fa-shield fa-rotate-90"></i> Administrasi </a>
                </li>
                <?php
                      $userSessionRole  = session('roles');
                      // dump($userSessionRole);
                     ?>
                <?php if ($userSessionRole === 'PJS' && isset($userSessionRole)): ?>
                <li><a href="{{ url('/commentDosen')}}"><i class="fa fa-bullhorn"></i> Massages </a></li>
                <?php endif ?>
                {{-- <li><a href="{{ url('/dashboardDosen')}}"><i class="fa fa-tachometer"></i> Dashboard </a></li> --}}
                <li><a href="{{ url('/calendarDosen')}}"><i class="fa fa-table"></i> Calendar</a></li>
                <li><a href="{{ url('/contactDosen')}}"><i class="fa fa-desktop"></i> Contact</a></li>
                <li><a href="{{ url('/forecastingDosen')}}"><i class="fa fa-line-chart"></i> Forecasting </a></li>
                <li><a href="{{ url('/livestreamDosen')}}"><i class="fa fa-youtube-play"></i> Livestream </a></li>
                <li><a href="{{ url('/bankSoalDosen')}}"><i class="fa fa-bank"></i> Bank Soal </a></li>
                <li><a href="{{ url('/assignmentDosen')}}"><i class="fa fa-tasks"></i> Assignment </a></li>
                <li><a href="{{ url('/tournamentDosen')}}"><i class="fa fa-cubes"></i> Manage Tournament </a></li>
                <li><a href="{{ url('/tournamentRegister')}}"><i class="fa fa-plus"></i> Registrasi Peserta </a></li>
                <li><a href="{{ url('/tournament2')}}"><i class="fa fa-trophy"></i> Tournament </a></li>
                <li><a href="{{ url('/tournamentCheck')}}"><i class="fa fa-check"></i> Check Jawaban Tournament </a>
                </li>
                <li><a href="{{ url('/leaderboardDosen')}}"><i class="fa fa-bar-chart-o"></i> Leaderboard </a></li>
                <!-- <li><a href="{{ url('/project')}}"><i class="fa fa-edit"></i> Project</a></li>
                  <li><a href="{{ url('/contact')}}"><i class="fa fa-desktop"></i> Contact</a></li>
                  <li><a href="{{ url('/calendar')}}"><i class="fa fa-table"></i> Calendar</a></li> -->
                <!-- <li><a href="{{ url('/inbox')}}"><i class="fa fa-clone"></i> Inbox </a></li> -->
                <!-- <li><a href="{{ url('/resources')}}"><i class="fa fa-archive"></i> Resources </a></li> -->
                <li><a href="{{ url('/syllabusDosen')}}"><i class="fa fa-edit"></i> Syllabus </a></li>
                <li><a href="{{ url('/forumTitleMKDosen')}}"><i class="fa fa-comment-o"></i> Forum </a></li>
                {{-- <li><a href="{{ url('/notification')}}"><i class="fa fa-bullhorn"></i> Notification </a></li> --}}
                <!--<li><a href="{{ url('/event')}}"><i class="fa fa-gamepad"></i> Event </a></li> -->
                <li><a href="{{ url('/courseRatingDosen')}}"><i class="fa fa-sort-amount-asc"></i> Course Rating </a>
                  <li><a href="{{ url('/logsDosen')}}"><i class="fa fa-list-alt"></i> Logs </a></li>
                </li>
                <li><a href="{{ url('/groupDosen')}}"><i class="fa fa-users"></i> Group</a></li>
              </ul>
            </div>
          </div>
          <!-- /sidebar menu -->

          
          <!-- /menu footer buttons -->
          <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
              <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
              <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
              <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
          </div>
          <!-- /menu footer buttons -->
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">
        <div class="nav_menu">
          <nav>
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
                <a href="{{url('/profileDosen')}}" class="user-profile dropdown-toggle" data-toggle="dropdown"
                  aria-expanded="false">
                  <img src="{{URL::asset('images/foto/'.Session::get('foto'))}}" alt="">{{Session::get('login')}}
                  <span class=" fa fa-angle-down"></span>
                </a>
                <ul class="dropdown-menu dropdown-usermenu pull-right">
                  <li><a href="{{url('/profileDosen')}}"> Profile</a></li>
                  <!-- <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li> -->


                  <li><a href="{{url('/logout')}}"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                </ul>
              </li>

              <!-- <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-bell-o"></i>
                    <span class="badge bg-yellow">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image"><img src="{{URL::asset('images/foto/'.Session::get('foto'))}}" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>{{Session::get('login')}}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li> -->

              <!-- <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-flag-o"></i>
                    <span class="badge bg-red">9</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">

                  </ul>
                </li> -->
              <li class=" center" style="margin-top: 1%">
                <?php
                // $notificationpost = DB::table('forumpost')
                // ->where('forumpost.createdby',SESSION::get('nrp'))
                // // ->join('forumcomment','forumcomment.post_id','forumpost.post_id')
                // // ->join('forumreply','forumreply.comment_id','forumcomment.comment_id')
                // ->orderby('forumpost.createdby','DESC')
                // ->get();
                // $lastWeek = date('Y-m-d', strtotime("-7 day", date('Y-m-d')));
                $date = new Carbon\Carbon; //  DateTime string will be 2014-04-03 13:57:34

                $date->subWeek();
                $notificationpost = DB::table('forumpost')
                ->join('forumcomment','forumcomment.post_id','forumpost.post_id')
                ->where('forumpost.createdby',SESSION::get('nrp'))
                ->where('forumcomment.createdby','!=',SESSION::get('nrp'))
                ->where('forumcomment.status',1)
                ->where('forumpost.status',1)
                ->where('forumcomment.timestamp','>',$date)
                ->orderby('forumcomment.timestamp','DESC')
                ->groupby('forumpost.post_id')
                ->distinct()
                ->get();
                $notificationcomment = DB::table('forumcomment')
                ->join('forumreply','forumreply.comment_id','forumcomment.comment_id')
                ->where('forumcomment.createdby',SESSION::GET('nrp'))
                ->where('forumreply.createdby','!=',SESSION::get('nrp'))
                ->where('forumreply.status',1)
                ->where('forumcomment.status',1)
                ->where('forumreply.timestamp','>',$date)
                ->orderby('forumreply.timestamp','DESC')
                ->groupby('forumcomment.post_id')
                ->distinct()
                ->get();

                ?>
                <div class="dropdown">
                  <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">

                    <?php if($notificationpost == '[]' && $notificationcomment == '[]'): ?>
                    <i class="fa fa-bell-o" aria-hidden="false"></i>
                    <?php else: ?>
                    <i class="fa fa-bell" aria-hidden="false"></i>
                    <?php endif; ?>

                    <span class="badge badge-danger" id="bell"></span>
                    <span class="caret"></span></button>
                  <ul class="dropdown-menu">
                    <?php foreach($notificationcomment as $nc):  ?>
                    <li class="notif">
                      <a href="{{url('/forumThreadDosen/'.$nc->post_id.'?page=1')}}">
                        <p>{{ $nc->createdby }} Replies Your Comment</p>
                        <p>{{date('d-F-Y H:i:s', strtotime( $nc->timestamp)) }}</p>
                      </a>
                    </li>
                    <?php endforeach; ?>
                    <?php foreach($notificationpost as $np):  ?>
                    <li class="notif">
                      <a href="{{url('/forumThreadDosen/'.$np->post_id.'?page=1')}}">
                        <p>{{ $np->createdby }} Comment Your Post</p>
                        <p>{{date('d-F-Y H:i:s', strtotime( $np->timestamp)) }}</p>
                      </a>
                    </li>
                    <?php endforeach; ?>
                  </ul>
                </div>

              </li>

            </ul>
          </nav>
        </div>
      </div>
      <!-- /top navigation -->

      <!-- page content -->
      <div class="right_col" role="main">
        <div class="">
          <div class="page-title">
            <div class="title_left">
              <h3>Blended Learning</h3>
            </div>
          </div>

          <div class="clearfix"></div>
          <!--  -->

          <!-- Swiper -->
          <div class="swiper-container">
            <div class="swiper-wrapper">

              <?php foreach ($slider as $sli): ?>
              <div class="swiper-slide"><img src="{{URL::asset('images/slider/'.$sli->fileName)}}" width="100%"
                  height="100%"></div>
              <?php endforeach; ?>


            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>

          </div>

          <!-- Swiper JS -->
          <script src="{{asset('vendors/dist/js/swiper.min.js')}}"></script>
          <div margin="auto">
            <br>
            <br>
            <div>
              <?php $count = 1; 
              $today = date("d-m-Y");
              ?>
              <?php foreach ($dataMK as $dtmk ): ?>
              <a href="{{asset('homeDosenDetail/'.$count.'/'.$dtmk->kodeMK.'/'.$dtmk->kelas)}}" class="custom-card">
                <div class="card">
                  <img src="{{URL::asset('images/cover/'.$count.'.png')}}" alt="Avatar" style="width:100%">
                  <div class="container">
                    <h4><b>{{ $dtmk->kodeMK }} -
                        {{ $dtmk->namaMK }} ( {{ $dtmk->kelas }} )</b></h4>
                    <?php foreach ($assign as $ass ):  
                        // dd($ass);
                        
                        if($ass->masterdkbs_idMasterDKBS == $dtmk->idMasterDKBS  && strtotime($ass->valid_end) >= strtotime($today) ){ ?>
                    <p>{{$ass->title}} - {{ date('d/M/Y H:i:s', strtotime( $ass->valid_end))}}<p>
                        <?php }
                        ?>
                        <?php endforeach ?>
                  </div>
                </div>
              </a>
              <?php $count += 1; ?>
              <?php endforeach ?>
            </div>
          </div>
          <!-- Initialize Swiper -->
          <script>
            var swiper = new Swiper('.swiper-container', {
                 effect: 'coverflow',
                 grabCursor: true,
                 centeredSlides: true,
                 slidesPerView: 'auto',
                 spaceBetween: 30,
                 centeredSlides: true,
                 loop: true,
                 autoplay: {
                   delay: 5500,
                   disableOnInteraction: false,
                 },
                 coverflowEffect: {
                   rotate: 50,
                   stretch: 0,
                   depth: 100,
                   modifier: 1,
                   slideShadows : true,
                 },
                 pagination: {
                   el: '.swiper-pagination',
                   clickable: true,
                   renderBullet: function (index, className) {
                     return '<span class="' + className + '">' + (index + 1) + '</span>';
                   },
                 },
               });
          </script>





        </div>

      </div>

    </div>
    <!-- /page content -->

    <!-- footer content -->
    {{-- <footer>
      <div class="pull-right">
        1472088 - Steven Yong
      </div>
      <div class="clearfix"></div>
    </footer> --}}
    <!-- /footer content -->
  </div>
  </div>

  <!-- jQuery -->
  <script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
  <!-- Bootstrap -->
  <script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
  <!-- FastClick -->
  <script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
  <!-- NProgress -->
  <script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
  <!-- Custom Theme Scripts -->
  <script src="{{asset('vendors/build/js/custom.min.js')}}"></script>

  <!-- Chart.js -->
  <script src="{{asset('vendors/Chart.js/dist/Chart.min.js')}}"></script>
  <!-- gauge.js -->
  <script src="{{asset('vendors/gauge.js/dist/gauge.min.js')}}"></script>
  <!-- bootstrap-progressbar -->
  <script src="{{asset('vendors/bootstrap-progressbar/bootstrap-progressbar.min.js')}}"></script>
  <!-- iCheck -->
  <script src="{{asset('vendors/iCheck/icheck.min.js')}}"></script>
  <!-- Skycons -->
  <script src="{{asset('vendors/skycons/skycons.js')}}"></script>
  <!-- Flot -->
  <script src="{{asset('vendors/Flot/jquery.flot.js')}}"></script>
  <script src="{{asset('vendors/Flot/jquery.flot.pie.js')}}"></script>
  <script src="{{asset('vendors/Flot/jquery.flot.time.js')}}"></script>
  <script src="{{asset('vendors/Flot/jquery.flot.stack.js')}}"></script>
  <script src="{{asset('vendors/Flot/jquery.flot.resize.js')}}"></script>
  <!-- Flot plugins -->
  <script src="{{asset('vendors/flot.orderbars/js/jquery.flot.orderBars.js')}}"></script>
  <script src="{{asset('vendors/flot-spline/js/jquery.flot.spline.min.js')}}"></script>
  <script src="{{asset('vendors/flot.curvedlines/curvedLines.js')}}"></script>
  <!-- DateJS -->
  <script src="{{asset('vendors/DateJS/build/date.js')}}"></script>
  <!-- JQVMap -->
  <script src="{{asset('vendors/jqvmap/dist/jquery.vmap.js')}}"></script>
  <script src="{{asset('vendors/jqvmap/dist/maps/jquery.vmap.world.js')}}"></script>
  <script src="{{asset('vendors/jqvmap/examples/js/jquery.vmap.sampledata.js')}}"></script>
  <!-- bootstrap-daterangepicker -->
  <script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
  <script src="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.js')}}"></script>

  <!-- AdminLTE App -->
  <script src="{{asset('vendors/dist/js/adminlte.min.js')}}"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="{{asset('vendors/dist/js/pages/dashboard.js')}}"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="{{asset('vendors/dist/js/demo.js')}}"></script>





</body>

</html>