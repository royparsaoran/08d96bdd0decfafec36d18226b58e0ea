@extends('layouts.admin')





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





    <!-- Custom Theme Style -->


    <link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">


@endsection





@section('content')


        <!-- page content -->


        <div class="right_col" role="main">


          <div class="">


            <div class="page-title">


              <div class="title_left">


                <h3>Super ADMIN<small></small></h3>


              </div>


            </div>





            <div class="clearfix"></div>








              <div class="col-md-12 col-sm-12 col-xs-12">


                <div class="x_panel">


                  <div class="x_title">


                    <h2> Manage Roles<small></small></h2>


                    <ul class="nav navbar-right panel_toolbox">


                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>


                      </li>


                      <li><a class="close-link"><i class="fa fa-close"></i></a>


                      </li>


                    </ul>


                    <div class="clearfix"></div>


                  </div>


                  <div class="x_content">


                    <div class="" role="tabpanel" data-example-id="togglable-tabs">


                      <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">


                        <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">User</a></li>


                        <li role="presentation" class=""><a href="#tab_content2" role="tab" id="profile-tab" data-toggle="tab" aria-expanded="false">Mahasiswa</a></li>


                        <li role="presentation" class=""><a href="#tab_content3" role="tab" id="profile-tab2" data-toggle="tab" aria-expanded="false">Dosen</a></li>


                        <br/>


                      </ul>


                      <div id="myTabContent" class="tab-content">





                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">


                          <br/>





                              <form action="/superadmin" method="POST">


                              <table id="datatable-responsive" class="table table-striped table-bordered">


                                <thead>


                                  <tr>


                                    <th>NRP/NIK</th>


                                    <th>Nama</th>


                                    <th>Email</th>


                                    <th>Fakultas</th>


                                    <th>Prodi</th>


                                    <th>Kota</th>


                                    <th>Role</th>


                                    <th>Tanggal Lahir</th>


                                    <th>Alamat</th>


                                    <th>Gender</th>


                                    <!-- <th>Channel ID</th> -->


                                    <th>Telephone</th>


                                    <th>About</th>


                                    <!-- <th>Created at</th>


                                    <th>Updated at</th> -->


                                    <th align="center">Insert</th>


                                    <th align="center">Update</th>


                                    <th align="center">Delete</th>


                                  </tr>


                                </thead>





                                <tbody>


                                <?php foreach ($register as $reg): ?>


                                      <tr>


                                        <td class=" ">{{$reg->nrp}}</td>


                                        <td class=" ">{{$reg->nama}}</td>


                                        <td class=" ">{{$reg->email}}</td>


                                        <td class=" ">{{$reg->fakultas}}</td>


                                        <td class=" ">{{$reg->prodi}}</td>


                                        <td class=" ">{{$reg->kota}}</td>


                                        <td class=" ">{{$reg->role}}</td>


                                        <td class=" ">{{$reg->tanggalLahir}}</td>


                                        <td class=" ">{{$reg->alamat}}</td>


                                        <td class=" ">{{$reg->gender}}</td>


                                        <!-- <td class=" ">{{$reg->streamlink}}</td> -->


                                        <td class=" ">{{$reg->telephone}}</td>


                                        <td class=" ">{{$reg->about}}</td>


                                        <!-- <td class=" ">{{$reg->created_at}}</td>


                                        <td class=" ">{{$reg->updated_at}}</td> -->


                                        <td class=" "><a href="{{Url('/superadmin/insert/'.$reg->id)}}"><input type="button" name="btnInsert" value="Insert" id="insert" class="btn btn-primary"><input type="hidden" name="_method" value="INSERT"></a></td>


                                        <td class=" "><a href="{{Url('/superadmin/'.$reg->id)}}"><input type="button" name="btnUpdate" value="Update" id="update" class="btn btn-warning" ><input type="hidden" name="_method" value="PUT"></a></td>


                                        <td class=" "><a href="{{Url('/superadmin/delete/'.$reg->id)}}"><input type="button" name="btnDelete" value="Delete" id="delete" class="btn btn-danger" ><input type="hidden" name="_method" value="DELETE"></a></td>


                                      </tr>





                                  <?php endforeach; ?>


                                </tbody>


                              </table>


                              {{csrf_field()}}


                          </form>


                        </div>





                        <div role="tabpanel" class="tab-pane fade" id="tab_content2" aria-labelledby="profile-tab">

                          {{-- isi --}}
                          <br>

                          <a href="{{URL::asset('files/mahasiswa.xlsx')}}" download=""><button class="btn btn-danger" type="">Download Tamplate</button></a>

                          <br>
                          <form action="{{url('/superadmin/importMahasiswa')}}" method="POST" enctype="multipart/form-data">

                            <input type="file" name="imported-file" />
              
                            @if(Session::has('message'))
              
                            <div class="alert alert-success alert-dismissible fade in" role="alert">
              
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
              
                                  aria-hidden="true">×</span>
              
                              </button>
              
                              {{Session::get('message')}}
              
                            </div>
              
                            @endif
              
                            @if(Session::has('error'))
              
                            <div class="alert alert-danger alert-dismissible fade in" role="alert">
              
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
              
                                  aria-hidden="true">×</span>
              
                              </button>
              
                              {{Session::get('error')}}
              
                            </div>
              
                            @endif
              
                            <br />
              
                            <div align="center">
              
                              <a href="{{URL('/superadmin/importMahasiswa')}}"><button class="btn btn-primary" type="submit">Import</button></a>
              
                              {{csrf_field()}}
              
                            </div>
              
                          </form>
                          <form action="{{url('/superadmin/exportMahasiswa')}}" method="GET" enctype="multipart/form-data">

                            <div align="center">
              
                              <a href="{{URL('/superadmin/export')}}"><button class="btn btn-success" type="submit">Export</button></a>
              
                              {{csrf_field()}}
              
                            </div>
              
                          </form>





                              <form action="/superadmin" method="POST">


                              <table id="datatable" class="table table-striped table-bordered">


                                <thead>


                                  <tr>


                                    <th>NRP</th>


                                    <th>Nama</th>


                                    <th>Email</th>


                                    <th>Gender</th>


                                    <th>Fakultas</th>


                                    <th>Prodi</th>


                                    <th>Role</th>


                                    <th>Tanggal Lahir</th>


                                    <th>Telephone</th>


                                    <th>Alamat</th>


                                    <th>Update</th>


                                    <th>Delete</th>


                                  </tr>


                                </thead>





                                <tbody>


                                <?php foreach ($mahasiswa as $mhs): ?>


                                      <tr>


                                        <td >{{$mhs->nrp}}</td>


                                        <td >{{$mhs->namaMhs}}</td>


                                        <td>{{$mhs->email}}</td>


                                        <td >{{$mhs->gender}}</td>


                                        <td>{{$mhs->fakultas}}</td>


                                        <td>{{$mhs->prodi}}</td>


                                        <td>{{$mhs->role}}</td>


                                        <td>{{date("d-M-Y", strtotime($mhs->tanggalLahir))}}</td>


                                        <td>{{$mhs->telephone}}</td>


                                        <td>{{$mhs->alamat}}</td>


                                        <td><a href="{{Url('/superadmin/mahasiswa/'.$mhs->id)}}"><input type="button" name="btnUpdate" value="Update" id="update" class="btn btn-warning" ><input type="hidden" name="_method" value="PUT"></a></td>


                                        <td><a href="{{Url('/superadmin/delete/mahasiswa/'.$mhs->id)}}"><input type="button" name="btnDelete" value="Delete" id="delete" class="btn btn-danger" ><input type="hidden" name="_method" value="DELETE"></a></td>


                                      </tr>


                                  <?php endforeach; ?>


                                </tbody>


                              </table>





                              {{csrf_field()}}


                          </form>











                        </div>





                        <div role="tabpanel" class="tab-pane fade" id="tab_content3" aria-labelledby="profile-tab2">


                          {{-- isi --}}
                          

                          <a href="{{URL::asset('files/dosen.xlsx')}}" download=""><button class="btn btn-danger" type="">Download Tamplate</button></a>

                          <br>
                          <form action="{{url('/superadmin/importDosen')}}" method="POST" enctype="multipart/form-data">

                            <input type="file" name="imported-file" />
              
                            @if(Session::has('message'))
              
                            <div class="alert alert-success alert-dismissible fade in" role="alert">
              
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
              
                                  aria-hidden="true">×</span>
              
                              </button>
              
                              {{Session::get('message')}}
              
                            </div>
              
                            @endif
              
                            @if(Session::has('error'))
              
                            <div class="alert alert-danger alert-dismissible fade in" role="alert">
              
                              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
              
                                  aria-hidden="true">×</span>
              
                              </button>
              
                              {{Session::get('error')}}
              
                            </div>
              
                            @endif
              
                            <br />
              
                            <div align="center">
              
                              <a href="{{URL('/superadmin/importDosen')}}"><button class="btn btn-primary" type="submit">Import</button></a>
              
                              {{csrf_field()}}
              
                            </div>
              
                          </form>
                          <form action="{{url('/superadmin/exportDosen')}}" method="GET" enctype="multipart/form-data">

                            <div align="center">
              
                              <a href="{{URL('/superadmin/exportDosen')}}"><button class="btn btn-success" type="submit">Export</button></a>
              
                              {{csrf_field()}}
              
                            </div>
              
                          </form>





                              <form action="/superadmin" method="POST">


                              <table id="datatable-checkbox" class="table table-striped table-bordered">


                                <thead>


                                  <tr>


                                    <th>NIK</th>


                                    <th>Nama</th>


                                    <th>Email</th>


                                    <th>Gender</th>


                                    <th>Fakultas</th>


                                    <th>Prodi</th>


                                    <th>Role</th>


                                    <th>Tanggal Lahir</th>


                                    <th>Telephone</th>


                                    <th>Alamat</th>


                                    <th>Update</th>


                                    <th>Delete</th>


                                  </tr>


                                </thead>





                                <tbody>


                                <?php foreach ($dosen as $ds): ?>


                                      <tr>


                                        <td class=" ">{{$ds->nik}}</td>


                                        <td class=" ">{{$ds->namaDosen}}</td>


                                        <td class=" ">{{$ds->email}}</td>


                                        <td class=" ">{{$ds->gender}}</td>


                                        <td class=" ">{{$ds->fakultas}}</td>


                                        <td class=" ">{{$ds->prodi}}</td>


                                        <td class=" ">{{$ds->role}}</td>


                                        <td class=" ">{{date("d-M-Y", strtotime($ds->tanggalLahir))}}</td>


                                        <td class=" ">{{$ds->telephone}}</td>


                                        <td class=" ">{{$ds->alamat}}</td>


                                        <td class=" "><a href="{{Url('/superadmin/dosen/'.$ds->id)}}"><input type="button" name="btnUpdate" value="Update" id="update" class="btn btn-warning" ><input type="hidden" name="_method" value="PUT"></a></td>


                                        <td class=" "><a href="{{Url('/superadmin/delete/dosen/'.$ds->id)}}"><input type="button" name="btnDelete" value="Delete" id="delete" class="btn btn-danger" ><input type="hidden" name="_method" value="DELETE"></a></td>


                                      </tr>


                                  <?php endforeach; ?>


                                </tbody>


                              </table>





                              {{csrf_field()}}


                          </form>











                        </div>


                      </div>


                    </div>


                  </div>


                </div>


              </div>


            </div>


          </div>


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


    <!-- iCheck -->


    <script src="{{asset('vendors/iCheck/icheck.min.js')}}"></script>


    <!-- Datatables -->


    <script src="{{asset('vendors/datatables.net/js/jquery.dataTables.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-buttons/js/dataTables.buttons.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-buttons/js/buttons.flash.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-buttons/js/buttons.html5.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-buttons/js/buttons.print.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-keytable/js/dataTables.keyTable.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js')}}"></script>


    <script src="{{asset('vendors/datatables.net-scroller/js/dataTables.scroller.min.js')}}"></script>


    <script src="{{asset('vendors/jszip/dist/jszip.min.js')}}"></script>


    <script src="{{asset('vendors/pdfmake/build/pdfmake.min.js')}}"></script>


    <script src="{{asset('vendors/pdfmake/build/vfs_fonts.js')}}"></script>





    <!-- Custom Theme Scripts -->


    <script src="{{asset('vendors/build/js/custom.min.js')}}"></script>


@endsection


  </body>


</html>


