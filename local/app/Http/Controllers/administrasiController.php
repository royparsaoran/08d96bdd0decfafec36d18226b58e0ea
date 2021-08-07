<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\Http\Requests;
use App\Register;
use App\Mahasiswa;
use App\Dosen;

class administrasiController extends Controller
{
    public function index(Request $request)
    {
        $namaMK2 = DB::table('masterdkbs')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
            ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
            ->get();

        $pertemuan = DB::table('pertemuan')
            ->join('masterdkbs', 'masterdkbs.idMasterDKBS', '=', 'pertemuan.masterdkbs_idMasterDKBS')
            ->where('masterDKBS_idMasterDKBS', 'LIKE', '%' . $request->post('idmaster', '') . '%')
            ->get();

        $dataMhs  = DB::select('
        select * FROM mahasiswa JOIN detaildkbs ON mahasiswa.nrp = detaildkbs.mahasiswa_NRP WHERE detaildkbs.masterdkbs_idMasterDKBS = ' . $request->post('idmaster', '000') . ' ORDER BY mahasiswa.nrp ');

        $nik = session('nrp');
        $role = session('roles');
        $dataMK = DB::table('masterdkbs')
            ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
            ->where('masterdkbs.dosen_nik', $nik)
            ->get();

        $dataJawaban = DB::table('pertemuan')->get();

        $dataAbsen = DB::select('SELECT r.createdby , c.idpertemuan from forumreply r JOIN forumcomment c ON r.comment_id = c.comment_id');
        $dataAssign = DB::select('SELECT a.idPertemuan , s.createdby FROM assignment a JOIN submission s ON a.id = s.assignmentId');
        $dataCR = DB::select('SELECT * FROM answer');
        $assign = DB::table('assignment')
            ->join('pertemuan', 'pertemuan.idPertemuan', '=', 'assignment.idPertemuan')
            ->where('masterDKBS_idMasterDKBS', 'LIKE', '%' . $request->post('idmaster', '') . '%')
            ->get();
        $submission = DB::table('submission')
            ->join('assignment', 'assignment.id', '=', 'submission.assignmentId')
            ->get(['submission.createdby AS pengirim', 'submission.*', 'assignment.*']);
        $dataAdmin = DB::table('administrasi')
            ->get();
        return view('dosen.administrasiDosen')
            ->with('pertemuan', $pertemuan)
            ->with('assign', $assign)
            ->with('submission', $submission)
            ->with('namaMK2', $namaMK2)
            ->with('dataMhs', $dataMhs)
            ->with('dataMK', $dataMK)
            ->with('dataAbsen', $dataAbsen)
            ->with('dataAssign', $dataAssign)
            ->with('dataCR', $dataCR)
            ->with('dataAdmin', $dataAdmin)
            ->with('dataJawaban', $dataJawaban);
    }
    public function profileDosen(Request $req, $nrp)
    {
        $mahasiswa = Mahasiswa::where('nrp', $nrp)->select('mahasiswa.*', 'namaMhs as nama')->first();
        $dosen = Dosen::where('nik', $nrp)->select('dosen.*', 'namaDosen as nama')->first();
        $user = null;
        if ($mahasiswa != null) {
            $user = $mahasiswa;
        } else if ($dosen != null) {
            $user = $dosen;
        }
        return view('dosen.forumProfileDosen', ['user' => $user]);
    }
    public function profile(Request $req, $nrp)
    {
        $mahasiswa = Mahasiswa::where('nrp', $nrp)->select('mahasiswa.*', 'namaMhs as nama')->first();
        $dosen = Dosen::where('nik', $nrp)->select('dosen.*', 'namaDosen as nama')->first();
        $user = null;
        if ($mahasiswa != null) {
            $user = $mahasiswa;
        } else if ($dosen != null) {
            $user = $dosen;
        }
        return view('forumProfile', ['user' => $user]);
    }

    public function insert(Request $req)
    {
        $x = 0;
        if (strpos($req->kehadiran, 'hadir') !== false) {
            $x = 1;
        }
        $dataHadir = DB::table('administrasi')
            ->where('nrp', $req->nrp)
            ->where('idPertemuan', $req->idPertemuan)
            ->get();

        $data = [
            'nrp' => $req->nrp,
            'idPertemuan' => $req->idPertemuan,
            'status' => $x,
        ];

        if (count($dataHadir) == 0) {
            DB::table('administrasi')->insert($data);
        } else {
            DB::table('administrasi')
                ->where('nrp', $req->nrp)
                ->where('idPertemuan', $req->idPertemuan)
                ->update(['status' => $x]);
        }
        return redirect()->back();
    }
}
