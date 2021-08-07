<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;

class logsController extends Controller
{
    public function index(Request $request)
    {
        $dataLogs = DB::table('logs')
                    ->get();
        return view('admin.logsAdmin')
            ->with('dataLogs', $dataLogs);
    }
    public function indexDosen(Request $request)
    {
        $dataLogs = DB::table('logs')
                    ->join('masterdkbs', 'masterdkbs.idMasterDKBS', '=', 'logs.idMasterDKBS')
                    ->where('dosen_nik', '=', session('nrp'))
                    ->get();
        return view('dosen.logsDosen')
            ->with('dataLogs', $dataLogs);
    }
}
