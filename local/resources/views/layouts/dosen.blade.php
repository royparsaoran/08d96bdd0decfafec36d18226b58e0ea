<!DOCTYPE html>
<html lang="en">

<head>
  <meta name="csrf-token" content="{{csrf_token()}}">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Course Learning System </title>

  @yield('css')
  @yield('header')
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

          <!-- sidebar menu -->
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
                <li><a href="{{ url('/courseRatingDosen')}}"><i class="fa fa-sort-amount-asc"></i> Course Rating </a></li>
                <li><a href="{{ url('/logsDosen')}}"><i class="fa fa-list-alt"></i> Logs </a></li>
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
                <a href="{{url('/profile')}}" class="user-profile dropdown-toggle" data-toggle="dropdown"
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
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
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
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image"><img src="{{URL::asset('images/user.png')}}" alt="Profile Image" /></span>
                        <span>
                          <span>Steven Yong</span>
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
              <li  class=" center" style="margin-top: 1%">
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

      @yield('content')

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


  @yield('js')
  <script src="{{ URL::asset('vendors/notify/notify.js') }}"></script>
  <script>
    var x = document.getElementsByClassName("notif").length.toString();
    document.getElementById("bell").innerHTML = x;
    $.notify(x+" New Notification","info");

  </script>


</body>

</html>
