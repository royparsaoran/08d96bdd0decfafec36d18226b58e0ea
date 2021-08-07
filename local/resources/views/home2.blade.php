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
    <link href="{{URL::asset('vendors/jqvmap/dist/jqvmap.min.css')}}" rel="stylesheet"/>
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
    <link rel="stylesheet" href="{{URL::asset('vendors/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="{{URL::asset('vendors/bower_components/bootstrap-daterangepicker/daterangepicker.css')}}">


    <!-- Custom Theme Style -->
    <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">

    <!-- Slider styles -->
    <style>
    .swiper-container {
        width: 100%;
        padding-top: 50px;
        padding-bottom: 50px;

    }
    .swiper-slide {
        background-position: center;
        background-size: cover;
        width: 980px;
        height: 470px;
        max-width:100%;
        max-height:100%;

    }
    </style>

  </head>

  <body class="nav-sm">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="{{ url('/home')}}" class="site_title"><i class="fa fa-code"></i> <span>Course Learning System</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
              <div class="profile clearfix">
                <div class="profile_pic">
                  <img src="{{URL::asset('images/'.Session::get('foto'))}}" alt="..." class="img-circle profile_img">
                </div>
                <div class="profile_info">
                  <h2>{{Session::get('login')}}</h2>
                  <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
              </div>
              <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <!-- <h3>Level 1</h3> -->
                <ul class="nav side-menu">
                  <li><a href="{{ url('/home')}}"><i class="fa fa-home"></i> Home </a></li>

                  <li><a href="{{ url('/comment')}}"><i class="fa fa-bullhorn"></i> Messages </a></li>
                  <!-- <li><a href="{{ url('/project')}}"><i class="fa fa-edit"></i> Project</a></li> -->
                  <li><a href="{{ url('/contact')}}"><i class="fa fa-desktop"></i> Contact</a></li>
                  <li><a href="{{ url('/calendar')}}"><i class="fa fa-table"></i> Calendar</a></li>
                  <li><a href="{{ url('/leaderboard')}}"><i class="fa fa-bar-chart-o"></i> Leaderboard </a></li>
                  <!-- <li><a href="{{ url('/inbox')}}"><i class="fa fa-clone"></i> Inbox </a></li> -->
                  <li><a href="{{ url('/tournament')}}"><i class="fa fa-trophy"></i> Tournament </a></li>
                  <!-- <li><a href="{{ url('/resources')}}"><i class="fa fa-archive"></i> Resources </a></li> -->
                  <li><a href="{{ url('/livestream')}}"><i class="fa fa-youtube-play"></i> Livestream </a></li>
                  <!-- <li><a href="{{ url('/achievement')}}"><i class="fa fa-star"></i> Achievement </a></li> -->
                  <!--<li><a href="{{ url('/forecasting')}}"><i class="fa fa-line-chart"></i> Forcasting </a></li>
                  <li><a href="{{ url('/forum')}}"><i class="fa fa-comment-o"></i> Forum </a></li>
                  <li><a href="{{ url('/notification')}}"><i class="fa fa-bullhorn"></i> Notification </a></li>
                  <li><a href="{{ url('/event')}}"><i class="fa fa-gamepad"></i> Event </a></li>
                  -->
                  <li><a href="{{ url('/courseRating0')}}"><i class="fa fa-sort-amount-asc"></i> Course Rating </a></li>
                  <!--<li><a href="{{ url('/manage')}}"><i class="fa fa-hdd-o"></i> Manage Master Data </a></li>-->
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
                  <a href="{{url('/profile')}}" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="{{URL('images/foto/'.Session::get('foto'))}}" alt="">{{Session::get('login')}}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="{{url('/profile')}}"> Profile</a></li>
                    <!-- <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li> -->
                    <!-- <li><a href="javascript:;">Help</a></li> -->
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
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">4</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
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


								<!-- Swiper -->
            <div class="swiper-container">
                <div class="swiper-wrapper">

                  <?php foreach ($slider as $sli): ?>
                    <div class="swiper-slide"><img src="{{URL::asset('images/slider/'.$sli->fileName)}}" width="100%" height="100%"></div>
                  <?php endforeach; ?>


                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
            </div>

            <!-- Swiper JS -->
            <script src="{{asset('vendors/dist/js/swiper.min.js')}}"></script>

            <!-- Initialize Swiper -->
            <script>
            var swiper = new Swiper('.swiper-container', {
                pagination: '.swiper-pagination',
                effect: 'coverflow',
                grabCursor: true,
                centeredSlides: true,
                slidesPerView: 'auto',
                // spaceBetween: 30,
                // autoplay: {
                //   delay: 2500,
                //   disableOnInteraction: false,
                // },
                // pagination: {
                //   el: '.swiper-pagination',
                //   clickable: true,
                // },
                // navigation: {
                //   nextEl: '.swiper-button-next',
                //   prevEl: '.swiper-button-prev',
                // },
                coverflow: {
                    rotate: 50,
                    stretch: 0,
                    depth: 100,
                    modifier: 1,
                    slideShadows : true
                }
            });
            </script>

            <!-- TO DO List -->
          <div class="box box-primary">
            <form method="POST" action="{{URL('/home')}}">
            <div class="box-header">
              <i class="ion ion-clipboard"></i>

              <h3 class="box-title">To Do List</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
              <ul class="todo-list">
                <?php foreach ($todo as $td): ?>
                  <li>
                    <!-- checkbox -->
                    <!-- <input type="checkbox" value="check[]" name="check[]" id="check[]"> -->
                    <!-- todo text -->
                    <span class="text">{{$td->task}}</span>
                    <!-- Emphasis label -->
                    <small class="label label-danger"><i class="fa fa-clock-o"></i> {{$td->created_at->diffForHumans($sekarang)}} </small>
                    <!-- General tools such as edit or delete-->
                    <div class="tools">
                      <a href="{{URL('/home/edit/'.$td->id)}}"><button type="button"><i class="fa fa-edit"></i></button></a>
                      <a href="{{URL('/home/delete/'.$td->id)}}"><button type="button"><i class="fa fa-trash-o"></i></i></button></a>
                    </div>
                  </li>
                <?php endforeach; ?>

              </ul>
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix no-border">
              <div align="center">
                {!! $todo->links() !!}
              </div>

              <div class="form-group">
                <label>Task TODO</label><br/>
                <input type="text" name="task" id="task" size="100"/>
                <button type="submit" class="btn btn-default pull-right" ><i class="fa fa-plus"></i> Add item</button>

              </div>

            </div>
            {{ csrf_field() }}
          </form>
          </div>
          <!-- /.box -->

<!-- Recent activities -->
            <!-- <div class="row">
              <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Recent Activities <small>Sessions</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
                    <div class="dashboard-widget-content">

                    <ul class="list-unstyled timeline widget">
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="block">
                          <div class="block_content">
                            <h2 class="title">
                                              <a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
                                          </h2>
                            <div class="byline">
                              <span>13 hours ago</span> by <a>Jane Smith</a>
                            </div>
                            <p class="excerpt">Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that could fund your project, and if the buyers liked your flick, they’d pay to Fast-forward and… <a>Read&nbsp;More</a>
                            </p>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  </div>
                </div>
              </div> -->

              <!-- start of weather widget -->
          <!-- <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="x_panel">
              <div class="x_title">
                <h2>Daily active users <small>Sessions</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
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
                <div class="row">
                  <div class="col-sm-12">
                    <div class="temperature"><b>Monday</b>, 07:30 AM
                      <span>F</span>
                      <span><b>C</b></span>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-4">
                    <div class="weather-icon">
                      <canvas height="84" width="84" id="partly-cloudy-day"></canvas>
                    </div>
                  </div>
                  <div class="col-sm-8">
                    <div class="weather-text">
                      <h2>Bandung<br><i>Partly Cloudy Day</i></h2>
                    </div>
                  </div>
                </div>
                <div class="col-sm-12">
                  <div class="weather-text pull-right">
                    <h3 class="degrees">23</h3>
                  </div>
                </div>

                <div class="clearfix"></div>

                <div class="row weather-days">
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Mon</h2>
                      <h3 class="degrees">25</h3>
                      <canvas id="clear-day" width="32" height="32"></canvas>
                      <h5>15 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Tue</h2>
                      <h3 class="degrees">25</h3>
                      <canvas height="32" width="32" id="rain"></canvas>
                      <h5>12 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Wed</h2>
                      <h3 class="degrees">27</h3>
                      <canvas height="32" width="32" id="snow"></canvas>
                      <h5>14 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Thu</h2>
                      <h3 class="degrees">28</h3>
                      <canvas height="32" width="32" id="sleet"></canvas>
                      <h5>15 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Fri</h2>
                      <h3 class="degrees">28</h3>
                      <canvas height="32" width="32" id="wind"></canvas>
                      <h5>11 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="col-sm-2">
                    <div class="daily-weather">
                      <h2 class="day">Sat</h2>
                      <h3 class="degrees">26</h3>
                      <canvas height="32" width="32" id="cloudy"></canvas>
                      <h5>10 <i>km/h</i></h5>
                    </div>
                  </div>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div> -->
          <!-- end of weather widget -->

              <!--Top profiles -->
                      <!-- <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="x_panel">
                          <div class="x_title">
                            <h2>Top Profiles <small></small></h2>
                            <ul class="nav navbar-right panel_toolbox">
                              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                              </li>
                            </ul>

                          </div>
                          <div class="x_content">

                            <ul class="list-unstyled top_profiles scroll-view">
                              <?php foreach ($leaderboard as $lead): ?>
                                <li class="media event">
                                  <a class="pull-left border-green profile_thumb">
                                    <i class="fa fa-user green"></i>
                                  </a>
                                  <div class="media-body">
                                    <a class="title" href="#">{{$lead->nama}}</a>
                                    <p><strong>{{$lead->nrp}}</strong></p>
                                    <p> {{$lead->emas}} <small> Emas</small></p>
                                    <p> {{$lead->perak}} <small> Perak</small></p>
                                    <p> {{$lead->perunggu}} <small> Perunggu</small></p>
                                    <p> Total {{$lead->total}} Poin </p>
                                  </div>
                                </li>
                              <?php endforeach; ?>
                            </ul>

                          </div>
                        </div>
                      </div> -->
                      <!-- End top profiles -->





            </div>

          </div>

              </div>
        <!-- /page content -->

        <!-- footer content -->
         <footer>
           <div class="pull-right">
            1472088 - Steven Yong
            1772044 - Roy Parsaoran
            1772046 - Ariyanto Sani
           </div>
           <div class="clearfix"></div>
         </footer>
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
