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

                  <h3>Rating</h3>

                </div>

              </div>



              <div class="clearfix"></div>



              <div class="row">

                <div class="col-md-12 col-sm-12 col-xs-12">

                  <div class="x_panel">

                    <div class="x_title">

                      <h2>Course Rating</h2>

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

                      <?php if (session('message') != null): ?>

                          <div class="alert alert-success">

                            <?php echo  session('message') ?>

                          </div>                

                    <?php endif ?>



                      <div style="text-align: left; margin-bottom: 17px">



                        <form method="POST" action="{{url('courseRating0/processed')}}">

                        {{csrf_field()}}  





                        <label for="heard">Mata Kuliah     :</label>

                        <select class="btn btn-primary dropdown-toggle" name="idmaster" id="namaMK" required="" >

                          <option value="" style="text-align: center;">-- Pilih --</option>

                          <?php foreach ($dataMK as $dtmk ): ?>

                          

                            <option value="{{ $dtmk->idMasterDKBS }}" name="idmaster">{{ $dtmk->kodeMK }} - {{ $dtmk->namaMK }}</option>



                          <?php endforeach ?>

                        </select> 

                          <label for="heard">Pertemuan     :</label>

                          <select class="btn btn-primary dropdown-toggle" id="Pertemuan" name="idpertemuan" required="" disabled title="Pertemuan yang telah diisi tidak akan muncul">

                            <option value="">-- Pilih --</option>

                            <?php foreach ($dataJawaban as $dp): ?>

                             <option value="{{ $dp->idPertemuan }}" class="{{ $dp->masterdkbs_idMasterDKBS }}" > {{$dp->namaPertemuan}}</option>

                              

                            <?php endforeach ?>

                          </select> 

                          <div align="right">

                            <br>

                                                        

                    

      



                                  <div class="x_content">

                    <label style="text-align:left;">TS: Tidak Setuju ; KS: Kurang Setuju ; S: Setuju ; SS: Sangat Setuju</label>

                    

                    <table id="datatable-keytable" class="table table-striped table-bordered">

                                 <thead>

                                   <tr>

                                     <th>No</th>

                                     <th>Pertanyaan</th>

                                     <th>TS</th>

                                     <th>KS</th>

                                     <th>S</th>

                                     <th>SS</th>

                                   </tr>

                                 </thead>

                                 <tbody>

                                   <?php foreach ($dataPertanyaan as $dpy ): ?>

                                        <tr>  

                                          <input type="hidden" name="question[]" value="{{ $dpy->idDetailQuestion }}">

                                          <td>{{ $dpy->idDetailQuestion }}</td>

                                          <td>{{ $dpy->Soal }}</td>

                                          <td>

                                         <input type="radio" class="flat" name="iCheck{{ $dpy->idDetailQuestion }}" value="TM" required="">



                                         </td>

                                         <td>

                                           <input type="radio" class="flat" name="iCheck{{ $dpy->idDetailQuestion }}" value="KM" required="">

                                         </td>

                                         <td>

                                           <input type="radio" class="flat" name="iCheck{{ $dpy->idDetailQuestion }}" value="M" required="">

                                         </td>

                                         <td>

                                           <input type="radio" class="flat" name="iCheck{{ $dpy->idDetailQuestion }}" value="SM" required="">

                                         </td>

                                        </tr>

                                        <?php endforeach ?>

                                 </tbody>

                               </table>

                               <div class="form-group">

                                  <label for="comment">Comment:</label>

                                  <textarea class="form-control" rows="5" id="comment" name="komenmk" required=""></textarea>

                                </div>

                    <div align="right"><input type="submit" name="Submit" class="btn btn-round btn-primary " value="Submit"></div>

                  </div>

                </form>

                

                </div>



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

    <script>

      let dataMK = $("#namaMK");

      dataMK.change(function(){

        $("#Pertemuan option").not('.' + $(this).val()).hide();

        $("." + $(this).val()).show();

      })



      $(document).ready(function(){

        $('#namaMK').change(function(){

          console.log($(this).val());

          $("#Pertemuan").prop('disabled', false);

        })

      })

    </script>

@endsection

  </body>

</html>





