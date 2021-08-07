@extends('layouts.admin')

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
                      <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                          
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                      </ul>
                      <div class="clearfix"></div>
                    </div>
                            <div class="x_content">
                    <button id="send" type="button" class="btn btn-success" name="btnExport">Export</button>
                    <table id="datatable-keytable" class="table table-striped table-bordered">
                                 <thead>
                                   <tr>
                                     <th>No</th>
                                     <th>NIK</th>
                                     <th>Nama Dosen</th>
                                     <th>Matakuliah</th>
                                     <th>Pertemuan</th>
                                     <th></th>
                                   </tr>
                                 </thead>
                                 <tbody>
                                   <tr>
                                    <td>1</td>
                                    <td>720140
</td>
                                    <td>Dr. Ir. Mewati Ayub, M.T.
</td>
                                    <td>
                                  
                                      <select id="heard" class="form-control" required>
                                      <!-- <option value="">Pilihan</option> -->
                                      <option value="press">IN010 Dasar Pemrograman</option>
                                      <option value="net">IN072 Pemrograman Berorientasi Objek A</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 1</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 2</option>
                                      <option value="mouth">IN062 Strategi Algoritmik </option>
                                    </select>
                                    </td>
                                    <td>
                                    <select id="heard" class="form-control" required>
                          <!-- <option value="">Pilihan</option> -->
                          <option value="press">Pertemuan 1 :  Introduksi dan Tipe Data</option>
                          <option value="net">Pertemuan 2 :  Struktur Program Sederhana </option>
                          <option value="mouth">Pertemuan 3 :  Analisa Kasus</option>
                          <option value="mouth">Pertemuan 4 :  Quiz-1 & Review (tipe data, aksi sekuensial, analisa kasus) </option>
                          <option value="mouth">Pertemuan 5 : Pengulangan dengan while dan for (bagian-1)</option>
                          <option value="net">Pertemuan 6 : Pengulangan dengan while dan for (bagian-2) </option>
                          <option value="mouth">Pertemuan 7 :  Fungsi(1)</option>
                          <option value="mouth">Pertemuan 8 :  Fungsi(2)</option>
                          <option value="mouth">Pertemuan 9 :  Array satu dimensi</option>
                          <option value="net">Pertemuan 10 :  Array dua dimensi</option>
                          <option value="mouth">Pertemuan 11 :  Searching dan Sorting </option>
                          <option value="mouth">Pertemuan 12 :  Quiz </option>
                          
                        </select>
                      </td>
                                    <td><a href="{{ url('/crAdmin2')}}"><button id="send" type="button" class="btn btn-warning" name="btnCheck">Check</button></a>
                                    </td>
                                   </tr>
                                   <tr>
                                       <td>2</td>
                                    <td>720302
</td>
                                    <td>Maresha Caroline Wijanto, S. Kom., M.T.

</td>
                                    <td>
                                      <select id="heard" class="form-control" required>
                                      <!-- <option value="">Pilihan</option> -->
                                      <option value="press">IN010 Dasar Pemrograman</option>
                                      <option value="net">IN072 Pemrograman Berorientasi Objek A</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 1</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 2</option>
                                      <option value="mouth">IN062 Strategi Algoritmik </option>
                                    </select>
                                    </td>
                                    <td>
                                    <select id="heard" class="form-control" required>
                          <!-- <option value="">Pilihan</option> -->
                          <option value="press">Pertemuan 1 :  Introduksi dan Tipe Data</option>
                          <option value="net">Pertemuan 2 :  Struktur Program Sederhana </option>
                          <option value="mouth">Pertemuan 3 :  Analisa Kasus</option>
                          <option value="mouth">Pertemuan 4 :  Quiz-1 & Review (tipe data, aksi sekuensial, analisa kasus) </option>
                          <option value="mouth">Pertemuan 5 : Pengulangan dengan while dan for (bagian-1)</option>
                          <option value="net">Pertemuan 6 : Pengulangan dengan while dan for (bagian-2) </option>
                          <option value="mouth">Pertemuan 7 :  Fungsi(1)</option>
                          <option value="mouth">Pertemuan 8 :  Fungsi(2)</option>
                          <option value="mouth">Pertemuan 9 :  Array satu dimensi</option>
                          <option value="net">Pertemuan 10 :  Array dua dimensi</option>
                          <option value="mouth">Pertemuan 11 :  Searching dan Sorting </option>
                          <option value="mouth">Pertemuan 12 :  Quiz </option>
                          
                        </select>
                        </td>
                                    <td><a href="{{ url('/crAdmin2')}}"><button id="send" type="button" class="btn btn-warning" name="btnCheck">Check</button></a>
                                    </td>
                                   </tr>
                                   <tr>
                                       <td>3</td>
                                    <td>720309
</td>
                                    <td>Oscar Karnalim, S.T., M.T.

                                    <td>
                                      <select id="heard" class="form-control" required>
                                      <!-- <option value="">Pilihan</option> -->
                                      <option value="press">IN010 Dasar Pemrograman</option>
                                      <option value="net">IN072 Pemrograman Berorientasi Objek A</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 1</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 2</option>
                                      <option value="mouth">IN062 Strategi Algoritmik </option>
                                    </select>
                                    </td>
                                    <td>
                                    <select id="heard" class="form-control" required>
                          <!-- <option value="">Pilihan</option> -->
                          <option value="press">Pertemuan 1 :  Introduksi dan Tipe Data</option>
                          <option value="net">Pertemuan 2 :  Struktur Program Sederhana </option>
                          <option value="mouth">Pertemuan 3 :  Analisa Kasus</option>
                          <option value="mouth">Pertemuan 4 :  Quiz-1 & Review (tipe data, aksi sekuensial, analisa kasus) </option>
                          <option value="mouth">Pertemuan 5 : Pengulangan dengan while dan for (bagian-1)</option>
                          <option value="net">Pertemuan 6 : Pengulangan dengan while dan for (bagian-2) </option>
                          <option value="mouth">Pertemuan 7 :  Fungsi(1)</option>
                          <option value="mouth">Pertemuan 8 :  Fungsi(2)</option>
                          <option value="mouth">Pertemuan 9 :  Array satu dimensi</option>
                          <option value="net">Pertemuan 10 :  Array dua dimensi</option>
                          <option value="mouth">Pertemuan 11 :  Searching dan Sorting </option>
                          <option value="mouth">Pertemuan 12 :  Quiz </option>
                          
                        </select>
                        </td>
                                    <td><a href="{{ url('/crAdmin2')}}"><button id="send" type="button" class="btn btn-warning" name="btnCheck">Check</button></a>
                                    </td>
                                   </tr>
                                   <tr>
                                       <td>4</td>
                                    <td>720303
</td>
                                    <td>Wenny Franciska Senjaya, S. Kom., M.T.

                                    <td>
                                      <select id="heard" class="form-control" required>
                                      <!-- <option value="">Pilihan</option> -->
                                      <option value="press">IN010 Dasar Pemrograman</option>
                                      <option value="net">IN072 Pemrograman Berorientasi Objek A</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 1</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 2</option>
                                      <option value="mouth">IN062 Strategi Algoritmik </option>
                                    </select>
                                    </td>
                                    <td>
                                    <select id="heard" class="form-control" required>
                          <!-- <option value="">Pilihan</option> -->
                          <option value="press">Pertemuan 1 :  Introduksi dan Tipe Data</option>
                          <option value="net">Pertemuan 2 :  Struktur Program Sederhana </option>
                          <option value="mouth">Pertemuan 3 :  Analisa Kasus</option>
                          <option value="mouth">Pertemuan 4 :  Quiz-1 & Review (tipe data, aksi sekuensial, analisa kasus) </option>
                          <option value="mouth">Pertemuan 5 : Pengulangan dengan while dan for (bagian-1)</option>
                          <option value="net">Pertemuan 6 : Pengulangan dengan while dan for (bagian-2) </option>
                          <option value="mouth">Pertemuan 7 :  Fungsi(1)</option>
                          <option value="mouth">Pertemuan 8 :  Fungsi(2)</option>
                          <option value="mouth">Pertemuan 9 :  Array satu dimensi</option>
                          <option value="net">Pertemuan 10 :  Array dua dimensi</option>
                          <option value="mouth">Pertemuan 11 :  Searching dan Sorting </option>
                          <option value="mouth">Pertemuan 12 :  Quiz </option>
                          
                        </select>
                        </td>
                                    <td><a href="{{ url('/crAdmin2')}}"><button id="send" type="button" class="btn btn-warning" name="btnCheck">Check</button></a>
                                    </td>
                                   </tr>
                                   <tr>
                                      <td>5</td>
                                    <td>720307
</td>
                                    <td>Robby Tan, S.T., M. Kom.

</td>
                                    <td>
                                      <select id="heard" class="form-control" required>
                                      <!-- <option value="">Pilihan</option> -->
                                      <option value="press">IN010 Dasar Pemrograman</option>
                                      <option value="net">IN072 Pemrograman Berorientasi Objek A</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 1</option>
                                      <option value="mouth">IN087 Algoritma dan Struktur data 2</option>
                                      <option value="mouth">IN062 Strategi Algoritmik </option>
                                    </select>
                                    </td>
                                    <td>
                                    <select id="heard" class="form-control" required>
                          <!-- <option value="">Pilihan</option> -->
                          <option value="press">Pertemuan 1 :  Introduksi dan Tipe Data</option>
                          <option value="net">Pertemuan 2 :  Struktur Program Sederhana </option>
                          <option value="mouth">Pertemuan 3 :  Analisa Kasus</option>
                          <option value="mouth">Pertemuan 4 :  Quiz-1 & Review (tipe data, aksi sekuensial, analisa kasus) </option>
                          <option value="mouth">Pertemuan 5 : Pengulangan dengan while dan for (bagian-1)</option>
                          <option value="net">Pertemuan 6 : Pengulangan dengan while dan for (bagian-2) </option>
                          <option value="mouth">Pertemuan 7 :  Fungsi(1)</option>
                          <option value="mouth">Pertemuan 8 :  Fungsi(2)</option>
                          <option value="mouth">Pertemuan 9 :  Array satu dimensi</option>
                          <option value="net">Pertemuan 10 :  Array dua dimensi</option>
                          <option value="mouth">Pertemuan 11 :  Searching dan Sorting </option>
                          <option value="mouth">Pertemuan 12 :  Quiz </option>
                          
                        </select>
                        </td>
                                    <td><a href="{{ url('/crAdmin2')}}"><button id="send" type="button" class="btn btn-warning" name="btnCheck">Check</button></a>
                                    </td>
                                   </tr>
                                   
          
                                 </tbody>
                               </table>
                               <div class="form-group">
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
