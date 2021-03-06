@extends('layouts.master')

@section('css')
    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="vendors/build/css/custom.min.css" rel="stylesheet">
@endsection

@section('content')
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Achievement</h3>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Achievement Report</h2>
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
                    <div class="col-md-12 col-sm-6 col-xs-12">

                      <div class="col-xs-3">
                      <!-- required for floating -->
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs tabs-left">
                        <li class="active"><a href="#done" data-toggle="tab">DONE</a>
                        </li>
                        <li><a href="#progress" data-toggle="tab">ON PROGRESS</a>
                        </li>
                        <li><a href="#special" data-toggle="tab">SPECIAL</a>
                        </li>
                        <li><a href="#global" data-toggle="tab">GLOBAL</a>
                        </li>
                      </ul>
                    </div>

                    <div class="col-xs-9">
                      <!-- Tab panes -->
                      <div class="tab-content">
                        <div class="tab-pane active" id="done">
                          <p class="lead"></p>
                          <p>  <div class="">
                    <ul class="to_do">
                      <li>
                        <p>
                          <input type="checkbox" class="flat" checked="true"> Get 10 Friend </p>
                      </li>
                      <li>
                        <p>
                          <input type="checkbox" class="flat" checked="true"> First time Livestream</p>
                      </li>
                      <li>
                        <p>
                          <input type="checkbox" class="flat" checked="true"> Check Notification</p>
                      </li>
                      <li>
                        <p>
                          <input type="checkbox" class="flat" checked="true">Do task in todo list</p>
                      </li>
                      <li>
                        <p>
                          <input type="checkbox" class="flat" checked="true">Do Quiz once</p>
                      </li>
                      <li>
                        <p>
                          <input type="checkbox" class="flat" checked="true">Download Resources once a day</p>
                      </li>
                    </ul>
                  </div></p>
                        </div>
                        <div class="tab-pane" id="progress">
                                <div class="col-md-8">
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-danger" data-transitiongoal="25">Get friend (10/100)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-warning" data-transitiongoal="45">Daily login (45/1000)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-info" data-transitiongoal="65">Download Resources (32/52)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-success" data-transitiongoal="95">Check Notification (9/10)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-danger" data-transitiongoal="25">Get friend (10/100)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-warning" data-transitiongoal="45">Daily login (45/1000)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-info" data-transitiongoal="65">Download Resources (32/52)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-success" data-transitiongoal="95">Check Notification (9/10)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-danger" data-transitiongoal="25">Get friend (10/100)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-warning" data-transitiongoal="45">Daily login (45/1000)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-info" data-transitiongoal="65">Download Resources (32/52)</div>
                                      </div>
                                      <div class="progress">
                                        <div class="progress-bar progress-bar-success" data-transitiongoal="95">Check Notification (9/10)</div>
                                      </div>
                                </div>
                        </div>
                        <div class="tab-pane" id="special">
                          <div class="col-md-8">
                                <div class="progress">
                                  <div class="progress-bar progress-bar-danger" data-transitiongoal="25">First Solver in Tournament (5/100)</div>
                                </div>
                                <div class="progress">
                                  <div class="progress-bar progress-bar-warning" data-transitiongoal="45">Most viewed livestream (45/100)</div>
                                </div>
                          </div>
                        </div>
                        <div class="tab-pane" id="global">
                          <div class="col-md-8">
                                <div class="progress">
                                  <div class="progress-bar progress-bar-info" data-transitiongoal="45">Get position one in leaderboard (5/10)</div>
                                </div>

                          </div>
                        </div>
                      </div>
                    </div>
                    </div>
                  </div>

                  </div>
                </div>
              </div>
              </div>

              <div class="row">
             <div class="col-md-12 col-sm-12 col-xs-12">
               <div class="x_panel">
                 <div class="x_title">
                   <h2>Badges <small>Collection</small></h2>
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
                   <table id="datatable" class="table table-striped table-bordered">
                     <thead>
                       <tr>
                         <th>Image</th>
                         <th>Name</th>
                         <th>Description</th>
                         <th>Criteria</th>
                         <th>Issued To me</th>
                       </tr>
                     </thead>


                     <tbody>
                       <tr>
                         <td><img src="images/Subject_Knowledge.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr><tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr><tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr><tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr><tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr><tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr><tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Analysis.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Assignment_Superstar.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Quiz 100</td>
                         <td>2011/04/25</td>
                       </tr>
                       <tr>
                         <td><img src="images/Moodle_Support_Hero.png"></td>
                         <td>Subject Knowledge</td>
                         <td>Awarded automatically on obtaining 60% or more in the Factual Recall Test.</td>
                         <td>Download Resources</td>
                         <td>2011/04/25</td>
                       </tr>
                     </tbody>
                   </table>
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
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="vendors/jszip/dist/jszip.min.js"></script>
    <script src="vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="vendors/pdfmake/build/vfs_fonts.js"></script>


    <!-- Custom Theme Scripts -->
    <script src="vendors/build/js/custom.min.js"></script>
@endsection

  </body>
</html>
