<?php

namespace App\Http\Controllers;

use App\Submission;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Session;

class assignmentController extends Controller
{
    public function index(Request $request)
    {
        $login = SESSION::GET('nrp');
        $matakuliah = DB::table('masterdkbs')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->join('semester', 'masterdkbs.semester_namaSemester', 'semester.namaSemester')
            ->where('semester.actiiveSemester', 1)
            ->join('detaildkbs', 'detaildkbs.masterdkbs_idMasterDKBS', 'masterdkbs.idMasterDKBS')
            ->where('detaildkbs.mahasiswa_NRP', SESSION::GET('nrp'))
            ->groupby('masterdkbs.idMasterDKBS')
            ->get();

        return view('assignment', ['login' => $login, 'matakuliah' => $matakuliah]);
    }

    public function indexComment(Request $request, $id)
    {
        $assignment = DB::table('assignment')
            ->where('assignment.id', $id)
            ->first();
        $comment = DB::table('assignmentcomment')
            ->join('assignment', 'assignmentcomment.assigmentId', 'assignment.id')
            ->leftjoin('mahasiswa', 'assignmentcomment.createdby', 'mahasiswa.nrp')
            ->leftjoin('dosen', 'assignmentcomment.createdby', 'dosen.nik')
            ->select('*', 'assignmentcomment.*', DB::raw('IFNULL(dosen.namaDosen, mahasiswa.namaMhs) as nama'), DB::raw('IFNULL(dosen.foto, mahasiswa.foto) as foto'))
            ->where('assignmentcomment.assigmentId', $id)
            ->where('assignmentcomment.status', 1)
            ->groupby('assignmentcomment.id')
            ->get();
        return view('assignmentComment', ['assignment' => $assignment, 'comment' => $comment]);
    }

    public function insertComment(Request $request, $id)
    {
        DB::table('assignmentcomment')
            ->insert(['text' => $request->comment, 'createdby' => SESSION::GET('nrp'), 'status' => 1, 'assigmentId' => $id]);

        return redirect()->back();
    }

    public function indexDosen(Request $request)
    {
        $matakuliah = DB::table('masterdkbs')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->join('semester', 'masterdkbs.semester_namaSemester', 'semester.namaSemester')
            ->where('semester.actiiveSemester', 1)
            ->where('masterdkbs.dosen_nik', SESSION::GET('nrp'))
            ->groupby('masterdkbs.idMasterDKBS')
            ->get();
        // return $matakuliah;

        return view('dosen.assignmentDosen', ['matakuliah' => $matakuliah]);
    }

    public function indexCommentDosen(Request $request, $id)
    {
        $assignment = DB::table('assignment')
            ->where('assignment.id', $id)
            ->first();
        $comment = DB::table('assignmentcomment')
            ->join('assignment', 'assignmentcomment.assigmentId', 'assignment.id')
            ->leftjoin('mahasiswa', 'assignmentcomment.createdby', 'mahasiswa.nrp')
            ->leftjoin('dosen', 'assignmentcomment.createdby', 'dosen.nik')
            ->select('*', 'assignmentcomment.*', DB::raw('IFNULL(dosen.namaDosen, mahasiswa.namaMhs) as nama'), DB::raw('IFNULL(dosen.foto, mahasiswa.foto) as foto'))
            ->where('assignmentcomment.assigmentId', $id)
            ->where('assignmentcomment.status', 1)
            ->groupby('assignmentcomment.id')
            ->get();
        return view('dosen.assignmentCommentDosen', ['assignment' => $assignment, 'comment' => $comment]);
    }

    public function insertAssignment(Request $req)
    {
        $validate = $req->validate([
            'file' => 'max:2048',
        ]);
        $newFile = "";
        if ($req->hasFile('file')) {
            $file = $req->file('file');
            $ext = $file->getClientOriginalExtension();
            if ($req->file('file')->isValid()) {
                $newFile = date('YmdHis') . '_' . SESSION::GET('nrp') . ".$ext";
                $upload_path = 'files/forum';
                $req->file('file')->move($upload_path, $newFile);
            }
        }

        DB::table('assignment')
            ->insert(['file' => $newFile, 'createdby' => SESSION::get('nrp'), 'title' => $req->title, 'instruction' => $req->instruction, 'idPertemuan' => $req->pertemuan, 'valid_end' => $req->finish]);
        return redirect()->back()->with('success', 'Success Insert Your Assignment');
    }

    public function insertSubmission(Request $req)
    {
        $newFile= null;
        if (isset($req->file)) {
            $validitor = $req->validate([
                'file' => 'required|max:2048',
            ]);
            if ($req->hasFile('file')) {
                $file = $req->file('file');
                $ext = $file->getClientOriginalExtension();

                if ($req->file('file')->isValid()) {
                    $newFile = 'Submission' . $req->id . '_' . SESSION::GET('nrp') . ".$ext";
                    $upload_path = 'files/forum';
                    $req->file('file')->move($upload_path, $newFile);
                }
            }
            if ($newFile == "") {
                return redirect()->back()->with(['fail' => 'File Over 2 Megabyte ']);
            }
        }
        $submission_id = DB::table('submission')
            ->insertgetid(['file' => $newFile, 'createdby' => SESSION::get('nrp'), 'assignmentId' => $req->id, 'link' => $req->link, 'nilai' => -1]);
        return redirect()->back()->with('success', 'Success Insert Your Submission');
    }

    public function selectMK(Request $req)
    {
        $matakuliah = DB::table('masterdkbs')
            ->where('idMasterDKBS', $req->matakuliah)
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->first();
        $pertemuan = DB::table('pertemuan')
            ->where('pertemuan.masterdkbs_idMasterDKBS', $req->matakuliah)
            ->get();
        $assignment = DB::table('assignment')
            ->select('*', 'assignment.*')
            ->join('pertemuan', 'assignment.idPertemuan', 'pertemuan.idPertemuan')
            ->join('masterdkbs', 'pertemuan.masterdkbs_idMasterDKBS', 'masterdkbs.idMasterDKBS')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->join('dosen', 'assignment.createdby', 'dosen.nik')
            ->where('assignment.createdby', SESSION::get('nrp'))
            ->where('masterdkbs.idMasterDKBS', $req->matakuliah)
            ->groupby('assignment.id')
            ->get();
        $submission = DB::table('submission')
            ->select('*', 'submission.*')
            ->join('assignment', 'submission.assignmentId', 'assignment.id')
            ->join('pertemuan', 'assignment.idPertemuan', 'pertemuan.idPertemuan')
            ->join('masterdkbs', 'pertemuan.masterdkbs_idMasterDKBS', 'masterdkbs.idMasterDKBS')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->join('mahasiswa', 'mahasiswa.nrp', 'submission.createdby')
            ->where('masterdkbs.idMasterDKBS', $req->matakuliah)
            ->where('assignment.createdby', SESSION::get('nrp'))
            ->groupby('submission.id')
            ->get();
        return redirect()->back()->with(['pertemuan' => $pertemuan, 'assignment' => $assignment, 'submission' => $submission, 'matakuliah' => $matakuliah]);
    }
    public function indexDetailNilai(Request $req, $id)
    {
        $title = DB::table('assignment')
            ->join('pertemuan', 'assignment.idPertemuan', 'pertemuan.idPertemuan')
            ->join('masterdkbs', 'pertemuan.masterdkbs_idMasterDKBS', 'masterdkbs.idMasterDKBS')
            ->where('assignment.createdby', SESSION::get('nrp'))
            ->where('assignment.id', $id)
            ->first();
        $submission = DB::table('mahasiswa')
            ->join('detaildkbs', 'detaildkbs.mahasiswa_NRP', 'mahasiswa.nrp')
            ->join('masterdkbs',  'detaildkbs.masterdkbs_idMasterDKBS','masterdkbs.idMasterDKBS')
            ->join('pertemuan',  'masterdkbs.idMasterDKBS','pertemuan.masterdkbs_idMasterDKBS')
             ->join('assignment','pertemuan.idPertemuan', 'assignment.idPertemuan' )
             ->where('assignment.id',$id)
            ->groupby('mahasiswa.nrp')
            ->get();
        // return $submission;
      
        return view('dosen.assignmentDetailGradeDosen', ['submission' => $submission, 'idAssignment' => $id, 'title' => $title]);
    }

    public function selectMKMhs(Request $req)
    {
        $matakuliah = DB::table('masterdkbs')
            ->where('idMasterDKBS', $req->matakuliah)
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->first();
        $assignment = DB::table('assignment')
            ->select('*', 'assignment.*')
            ->selectRAW('IFNULL(submission.id , "" ) as submissionId')
            ->join('pertemuan', 'assignment.idPertemuan', 'pertemuan.idPertemuan')
            ->join('masterdkbs', 'pertemuan.masterdkbs_idMasterDKBS', 'masterdkbs.idMasterDKBS')
            ->join('detaildkbs', 'masterdkbs.idMasterDKBS', 'detaildkbs.masterdkbs_idMasterDKBS')
            ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', 'matakuliah.kodeMK')
            ->join('dosen', 'assignment.createdby', 'dosen.nik')
            ->leftjoin('submission', 'submission.assignmentId', 'assignment.id')
            ->where('detaildkbs.mahasiswa_NRP', SESSION::GET('nrp'))
            ->where('masterdkbs.idMasterDKBS', $req->matakuliah)
            ->groupby('assignment.id')
            ->get();
        return redirect()->back()->with(['assignment' => $assignment, 'matakuliah' => $matakuliah]);
    }

    public function editNilai(Request $req, $id, $idAssignment, $nrp)
    {
        if ($id != "NULL") {
            $nilai = $req->value;
            if ($req->value < 0) {
                $nilai = 0;
            }
            $submission = Submission::find($id);
            $submission->nilai = $nilai;
            $submission->save();
        } else {
            $nilai = $req->value;
            if ($req->value < 0) {
                $nilai = 0;
            }
            $submission = DB::table('submission')
                ->insert(['createdby' => $nrp, 'assignmentId' => $idAssignment, 'nilai' => $nilai]);
        }
    }
    public function deleteComment(Request $req, $id)
    {
        $comment = DB::table('assignmentcomment')
            ->where('id', $id)
            ->first();
        if (SESSION::GET('nrp') == $comment->createdby) {
            DB::table('assignmentcomment')->where('id', $id)->update(['status' => 0]);
        }
        return redirect()->back();
    }

    public function editSubmission(Request $req, $id)
    {
      $sub = DB::table('submission')
                ->where('id', $id)
                ->first();
        if (isset($req->file)) {
            $validitor = $req->validate([
                'file' => 'required|max:2048',
            ]);
            $newFile = "";
            if ($req->hasFile('file')) {
                $file = $req->file('file');
                $ext = $file->getClientOriginalExtension();

                if ($req->file('file')->isValid()) {
                    $newFile = 'Submission' . $req->assignId . '_' . SESSION::GET('nrp') . ".$ext";
                    $upload_path = 'files/forum';
                    $req->file('file')->move($upload_path, $newFile);
                }
            }
            if ($newFile == "") {
                return redirect()->back()->with(['fail' => 'File Over 2 Megabyte ']);
            }
        } else {
            $newFile = $sub->file;
        }
        $current_date_time = Carbon::now('Asia/Jakarta')->toDateTimeString();
        $submission = DB::table('submission')
            ->where('id', $id)
            ->update(['file' => $newFile, 'timestamp' => $current_date_time, 'link' => $req->link==null ? $sub->link : $req->link ]);
        return redirect()->back()->with('success', 'Success Edit Your Submission');
    }

}
