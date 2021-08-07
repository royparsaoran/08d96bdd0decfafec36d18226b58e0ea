@extends('layouts.dosen')

@section('css')
<!-- Bootstrap -->
<link href="{{URL::asset('vendors/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
<!-- Font Awesome -->
<link href="{{URL::asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
<!-- NProgress -->
<link href="{{URL::asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet">
<!-- FullCalendar -->
<link href="{{URL::asset('vendors/fullcalendar/dist/fullcalendar.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/fullcalendar/dist/fullcalendar.print.css')}}" rel="stylesheet" media="print">
<!-- iCheck -->
<link href="{{URL::asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet">
<!-- Datatables -->
<link href="{{URL::asset('vendors/datatables.net-bs/css/dataTables.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css')}}" rel="stylesheet">
<link href="{{URL::asset('vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css')}}" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"
    rel="stylesheet">
<!-- Custom styling plus plugins -->
<link href="{{URL::asset('vendors/build/css/custom.min.css')}}" rel="stylesheet">
@endsection
<style>
    table {
        vertical-align: middle;
    }

    .dataTables_info {
        display: none;
    }

    .dataTables_length {
        display: none;
    }

    .dataTables_length {
        display: none;
    }

    * {
        margin: 0;
        padding: 0;
    }

    .loader {
        display: none;
        top: 50%;
        left: 50%;
        position: absolute;
        transform: translate(-50%, -50%);
    }

    .loading {
        border: 2px solid #ccc;
        width: 60px;
        height: 60px;
        border-radius: 50%;
        border-top-color: #1ecd97;
        border-left-color: #1ecd97;
        animation: spin 1s infinite ease-in;
    }

    @keyframes spin {
        0% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(360deg);
        }
    }
</style>
@section('content')
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Group</h3>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12">
                <div class="x_panel">
                    <div class="x_title">
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        @if(session()->has('success'))
                        <div class="alert alert-success alert-dismissible fade in">
                            {{ session()->get('success') }}
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        </div>
                        <br>
                        <br>
                        @endif
                        @if(session()->has('fail'))
                        <div class="alert alert-danger alert-dismissible fade in">
                            {{ session()->get('fail') }}
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        </div>
                        @endif
                        @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                        @endif
                        <?php $idMasterDKBS = 0; ?>
                        <?php foreach ($currentMK as $key) {
                            $idMasterDKBS = $key->idMasterDKBS;
                        }?>
                        <form method="POST" action="{{url('groupDosen')}}">
                            {{csrf_field()}}
                            <label for="heard">Mata Kuliah :</label>
                            <select class="btn btn-primary dropdown-toggle" name="idmaster" id="namaMK">
                                <option value="" style="text-align: center;">--Choose--</option>
                                <?php foreach ($dataMK as $dtmk ): ?>
                                <option value="{{ $dtmk->idMasterDKBS }}" name="idmaster">{{ $dtmk->kodeMK }} -
                                    {{ $dtmk->namaMK }} ( {{ $dtmk->kelas }} )</option>
                                <?php endforeach ?>
                                <div align="right"><input type="submit" name="Submit" class="btn btn-round btn-primary"
                                        value="GO" id="btngo"></div>
                            </select>
                        </form>
                        <?php if (count($namaMK)==0){ ?>
                        <span style="color: red">
                            <p title="please select option in dropdown">Empty Data</p>
                        </span>
                        <div id="groupContent" hidden="true">
                            <?php }else{ ?>
                            <div id="groupContent">
                                <?php } ?>
                                <br>
                                <br>
                                <br>
                                <?php foreach ($namaMK as $nmk2 ): ?>
                                <div style="background-color: #2a3f54">
                                    <h1 style="text-align: center ;color:white">{{ $nmk2->namaMK }} ({{ $nmk2->kelas }})
                                    </h1>
                                </div>
                                <?php endforeach ?>
                                <div style="width: 100%; margin-right: 0;">
                                    <div style="float: left">
                                        <form method="POST" action="{{url('insertGroupDosen')}}">
                                            {{csrf_field()}}
                                            <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                                            <input type="submit" class="btn btn-success" value="+Add Manually">
                                        </form>
                                    </div>
                                    {{-- Modal --}}
                                    <div id="myModal" class="modal fade in">
                                        <div class="loader">
                                            <div class="loading">
                                            </div>
                                        </div>
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <center>
                                                        <h4>Generate Group Automatically</h4>
                                                        <h5>Class Member : <b>{{$classMember}}</b> peoples</h5>
                                                    </center>
                                                    <?php 
                                                        function primefactor($num) {
                                                            $sqrt = sqrt($num);
                                                            for ($i = 2; $i <= $sqrt; $i++) {
                                                                if ($num % $i == 0) {
                                                                    return array_merge(primefactor($num/$i), array($i));
                                                                }
                                                            }
                                                            return array($num);
                                                        }
                                                    ?>
                                                </div>
                                                <form method="POST" action="{{url('predictGroupDosen')}}">
                                                    {{csrf_field()}}
                                                    <div class="modal-body">
                                                        <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                                                        <label for="text">Number of</label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="groups" checked>
                                                            Groups
                                                        </label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="optradio" value="peoples"> Peoples
                                                        </label>
                                                        <input type="number" name="ammount" id="ammount">
                                                    </div>
                                                    <div style="padding-left: 15px">
                                                        Recommend :
                                                        <?php 
                                                        foreach (primefactor($classMember) as $key) {
                                                            echo '<p> - '.$key.' peoples </p>';
                                                        }
                                                    ?>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button class="btn btn-danger btn-round" data-dismiss="modal">
                                                            Cancel</button>
                                                        <input type="submit" name="Submit"
                                                            class="btn btn-primary btn-round" value="OK" id="btngo"
                                                            onclick="spinner()">
                                                    </div>
                                                </form>

                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dalog -->
                                    </div><!-- /.modal -->
                                    <div style="float: left">
                                        <a data-toggle="modal" href="#myModal" id="alert-demo" name="remove_levels">
                                            <span class="btn btn-success">+Add Automatically</span></a>
                                        {{-- <form method="POST" action="{{url('predictGroupDosen/'.$idMasterDKBS)}}">
                                        {{csrf_field()}}
                                        <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                                        <input type="submit" class="btn btn-success" value="+Add Automatically">
                                        </form> --}}
                                    </div>
                                    <div style="float: left">
                                        <form method="POST" action="{{url('graphGroupDosen')}}">
                                            {{csrf_field()}}
                                            <input type="hidden" name="idmaster" value="{{$idMasterDKBS}}">
                                            <input type="submit" class="btn btn-success" value="Graph ENA"
                                                onclick="spinner()">
                                        </form>
                                    </div>
                                </div>
                                <table id="" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Group Name</th>
                                            <th>Count</th>
                                            <th>Member</th>
                                            <th>Created At</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $no=1; ?>
                                        <?php foreach ($groupList as $key) { ?>
                                        <tr>
                                            <td style="text-align: center">{{$no}}</td>
                                            <td>{{$key->name}}</td>
                                            <td style="text-align: center">{{$key->number}}</td>
                                            <td>
                                                <?php 
                                                $temp = explode(",",$key->nrp);
                                                foreach ($temp as $t) {
                                                    echo($t);
                                                    echo("<br>");
                                                }
                                                ?>
                                            </td>
                                            <td>{{date("d M Y H:i:s", strtotime($key->timestamp))}}</td>
                                            <td>
                                                {{-- Modal --}}
                                                <div id="myModal_{{ $key->id }}" class="modal fade in">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4>Delete Confirmation</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <center>
                                                                    <h4>Are You Sure,</h4>
                                                                    <h4>Delete Group {{$key->name}} ?</h4>
                                                                </center>
                                                            </div>

                                                            <div class="modal-footer">
                                                                <button class="btn btn-primary btn-round"
                                                                    data-dismiss="modal"> Cancel</button>
                                                                <a href="{{ URL::asset('groupDosen/delete/'.$key->id) }}"
                                                                    class="btn btn-danger btn-round">
                                                                    OK</a>
                                                            </div>

                                                        </div><!-- /.modal-content -->
                                                    </div><!-- /.modal-dalog -->
                                                </div><!-- /.modal -->
                                                <center>
                                                    <table style="text-align: center">
                                                        <tr>
                                                            <td>
                                                                <a data-toggle="modal" href="#myModal_{{ $key->id }}"
                                                                    id="alert-demo" name="remove_levels">
                                                                    <span class="btn glyphicon glyphicon-trash btn-lg"
                                                                        style="color:red;"></span></a>
                                                            </td>
                                                            <td>
                                                                <a href="{{ URL::asset('groupDosen/edit/'.$key->id) }}">
                                                                    <span class="btn glyphicon glyphicon-pencil btn-lg"
                                                                        style="color:rgb(2, 68, 126);"></span></a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </center>
                                            </td>
                                        </tr>
                                        <?php $no++; ?>
                                        <?php }?>
                                    </tbody>
                                </table>
                                {{-- Modal --}}
                                <div id="myModal_reset" class="modal fade in">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4>Reset Confirmation</h4>
                                            </div>
                                            <div class="modal-body">
                                                <center>
                                                    <h4>Are You Sure,</h4>
                                                    <h4>Reset Group ?</h4>
                                                </center>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-primary btn-round"
                                                    data-dismiss="modal"> Cancel</button>
                                                <a href="{{ URL::asset('groupDosen/reset/'.$idMasterDKBS)}}"
                                                    class="btn btn-danger btn-round">
                                                    OK</a>
                                            </div>

                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dalog -->
                                </div><!-- /.modal -->

                                <a data-toggle="modal" href="#myModal_reset" id="alert-demo" name="remove_levels">
                                    <span class="btn btn-danger">Reset Group</span></a>
                                <br>

                                <div class="title_left">
                                    <h2>Messages
                                        <button id="btnmessages" onclick="show()" title="Show Messages"><i
                                                class="fa fa-caret-square-o-down" aria-hidden="true"></i></button>
                                    </h2>
                                </div>
                                <?php $no=1; ?>
                                <div id="messages" style="visibility: hidden">
                                    <table id="" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>NRP</th>
                                                <th>Name</th>
                                                <th>About Group</th>
                                                <th>Messages</th>
                                                <th>Created At</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($groupmessages as $key):
                                            // dd($groupmessages);
                                            ?>
                                            <tr>
                                                <td>{{$no++}}</td>
                                                <td>{{$key->nrp}}</td>
                                                <td>{{$key->namaMhs}}</td>
                                                <td>{{$key->name}}</td>
                                                <td>{{$key->text}}</td>
                                                <td>{{date("d M Y H:i:s", strtotime($key->timestamp))}}</td>
                                                <td>
                                                    <div id="Modal_{{ $key->id }}" class="modal fade in">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h4>Delete Confirmation</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <center>
                                                                        <h4>Are You Sure,</h4>
                                                                        <h4>Delete This Messages?</h4>
                                                                    </center>
                                                                </div>

                                                                <div class="modal-footer">
                                                                    <button class="btn btn-primary btn-round"
                                                                        data-dismiss="modal"> Cancel</button>
                                                                    <a href="{{ URL::asset('/groupDosen/deleteMessages/'.$key->id) }}"
                                                                        class="btn btn-danger btn-round">
                                                                        OK</a>
                                                                </div>

                                                            </div><!-- /.modal-content -->
                                                        </div><!-- /.modal-dalog -->
                                                    </div><!-- /.modal -->
                                                    <center>
                                                        <a data-toggle="modal" href="#Modal_{{ $key->id }}"
                                                            id="alert-demo" name="remove_levels">
                                                            <span class="btn glyphicon glyphicon-trash btn-lg"
                                                                style="color:red;"></span></a>
                                                    </center>
                                                </td>
                                            </tr>
                                            <?php endforeach?>
                                        </tbody>
                                    </table>
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
    <script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <!-- Bootstrap -->
    <script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <!-- FastClick -->
    <script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script>
    <!-- NProgress -->
    <script src="{{asset('vendors/nprogress/nprogress.js')}}"></script>
    <!-- FullCalendar -->
    <script src="{{asset('vendors/moment/min/moment.min.js')}}"></script>
    <script src="{{asset('vendors/fullcalendar/dist/fullcalendar.min.js')}}"></script>
    <!-- iCheck -->
    <script src="{{ asset('vendors/iCheck/icheck.min.js')}}"></script>
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
    <script>
        $('#datatable').dataTable( {
        "pageLength": 50
        } );
    </script>
    <script type="text/javascript">
        function spinner() {
            document.getElementsByClassName("loader")[0].style.display = "block";
        }

        function show(){
            var x = document.getElementById("messages");
            if(x.style.visibility == 'visible'){
                document.getElementById("btnmessages").innerHTML = "<i class='fa fa-caret-square-o-down' aria-hidden='true'></i>";
                x.style.visibility = 'hidden';
            }else{
                document.getElementById("btnmessages").innerHTML = "<i class='fa fa-caret-square-o-up' aria-hidden='true'></i>";;
                x.style.visibility = 'visible';
            }
        }
        $(document).ready(function() {
            $('table.table-bordered').DataTable();
        } );

    </script>
    @endsection
    </body>

    </html>