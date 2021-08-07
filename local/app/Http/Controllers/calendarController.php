<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use URL;
use DateTime;
use Carbon\Carbon;
use Session;


use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;
use App\Leaderboard;
use App\Tournament;
use App\Livestream;

class calendarController extends Controller
{
    public function index(Request $request)
    {
      return view('calendar');
    }

    public function indexDosen(Request $request)
    {
      return view('dosen.calendarDosen');
    }

    public function indexAdmin(Request $request)
    {
      return view('admin.calendarAdmin');
    }





}
