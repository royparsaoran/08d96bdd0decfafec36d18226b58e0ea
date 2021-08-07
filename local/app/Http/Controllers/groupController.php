<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use KMeansGroupPrediction;

include "../CLSReborns/local/app/Class/KMeansGroupPrediction.php";

class groupController extends Controller
{
  public function index(Request $request)
  {
    $nrp = session('nrp');
    $dataMK = DB::table('detaildkbs')
      ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('detaildkbs.mahasiswa_NRP', $nrp)
      ->get();

      $namaMK = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();

      $groupList = DB::select(
        'SELECT gm.name AS "name",GROUP_CONCAT(CONCAT(gl.nrp,"-",m.namaMhs)) AS "nrp" , COUNT(*) AS number ,gm.timestamp AS "timestamp" ,gm.id AS "id"
          FROM groupmahasiswa gm
        JOIN grouplist gl
          ON gm.ID = gl.idGroupMahasiswa
        JOIN mahasiswa m
          ON gl.nrp = m.nrp
        WHERE gm.idMasterDKBS =' . $request->post('idmaster', '000') . ' 
        AND gm.active = 1
        GROUP BY gm.id'
      );

      $currentMK =  DB::table('masterdkbs')
      ->where('idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();

      return view('/group')
      ->with('namaMK', $namaMK)
      ->with('currentMK', $currentMK)
      ->with('groupList', $groupList)
      ->with('dataMK', $dataMK);
  }

  public function indexDosen(Request $request)
  {
    // dd($request->idmaster);
    $nik = session('nrp');
    $role = session('roles');
    if ($role == 'PJS') {
      $dataMK = DB::table('masterdkbs')
        ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
        ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
        ->get();
    } else {
      $dataMK = DB::table('masterdkbs')
        ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
        ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
        ->where('masterdkbs.dosen_nik', $nik)
        ->get();
    }
    $namaMK = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();

    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->where('groupmahasiswa.active', '=', 1)
      ->get();
    $classMember = DB::table('masterdkbs')
      ->join('detaildkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->count();
    // dd($classMember);
    $groupList = DB::select(
      'SELECT gm.name AS "name",GROUP_CONCAT(CONCAT(gl.nrp,"-",m.namaMhs)) AS "nrp" , COUNT(*) AS number ,gm.timestamp AS "timestamp" ,gm.id AS "id"
        FROM groupmahasiswa gm
      JOIN grouplist gl
        ON gm.ID = gl.idGroupMahasiswa
      JOIN mahasiswa m
        ON gl.nrp = m.nrp
      WHERE gm.idMasterDKBS =' . $request->post('idmaster', '000') . ' 
      AND gm.active = 1
      GROUP BY gm.id'
    );
    $currentMK =  DB::table('masterdkbs')
      ->where('idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    
    $groupmessages = DB::table('groupmessages')
      ->select('groupmessages.id','groupmessages.idGroupMahasiswa','groupmessages.nrp','groupmessages.text','groupmessages.timestamp','mahasiswa.namaMhs','groupmahasiswa.name')
      ->join('groupmahasiswa', 'groupmahasiswa.id', '=', 'groupmessages.idGroupMahasiswa')
      ->join('mahasiswa', 'mahasiswa.nrp', '=', 'groupmessages.nrp')
      ->where('groupmessages.active', '=', 1)
      ->get();
    // dd($groupmessages);

    return view('dosen.groupDosen')
      ->with('namaMK', $namaMK)
      ->with('classMember', $classMember)
      ->with('currentMK', $currentMK)
      ->with('groupList', $groupList)
      ->with('groupmessages', $groupmessages)
      ->with('dataMK', $dataMK);
  }

  public function indexEdit(Request $request, $id)
  {
    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.id', '=', $id)
      ->get();

    $idmaster = 0;
    foreach ($groupList as $key) {
      $idmaster = $key->idMasterDKBS;
    }
    $mahasiswa = DB::select('select d.mahasiswa_NRP AS "nrp", mhs.namaMhs AS "nama" From masterdkbs m JOIN detaildkbs d ON m.idMasterDKBS = d.masterdkbs_idMasterDKBS JOIN mahasiswa mhs ON mhs.nrp = d.mahasiswa_NRP WHERE m.idMasterDKBS = ' . $idmaster . ' AND d.mahasiswa_NRP NOT IN (SELECT gl.nrp from groupmahasiswa gm JOIN grouplist gl ON gm.id = gl.idGroupMahasiswa WHERE gm.id = ' . $id . ')');
    // dd($mahasiswa);
    return view('dosen.groupDosenEdit')
      ->with('id', $id)
      ->with('mahasiswa', $mahasiswa)
      ->with('groupList', $groupList);
  }

  public function indexPredict(Request $request)
  {
    $idMasterDKBS = $request->idmaster;
    $k = new KMeansGroupPrediction();
    if($request->optradio == "peoples"){
      $k->cluster($request->ammount);
      $kluster = DB::table('kluster')
        ->join('mahasiswa', 'mahasiswa.nrp', '=', 'kluster.nrp')
        ->orderBy('knumber')
        ->get();
      $ammount = $request->ammount;
      $groups = round(count($kluster) / $ammount);
      $member = array_fill(0, $ammount, NULL);
      $group = $k->recommend($ammount,$groups,$member);
    }else{
      $kluster = DB::table('kluster')
        ->join('mahasiswa', 'mahasiswa.nrp', '=', 'kluster.nrp')
        ->orderBy('knumber')
        ->get();
      $k->cluster(round(count($kluster)/$request->ammount));
      $kluster = DB::table('kluster')
        ->join('mahasiswa', 'mahasiswa.nrp', '=', 'kluster.nrp')
        ->orderBy('knumber')
        ->get();
      $ammount = round(count($kluster)/$request->ammount);
      $groups = $request->ammount;
      $member = array_fill(0, $ammount, NULL);
      $type = $request->optradio;
      $group = $k->recommend($ammount,$groups,$member);
    }
    return view('dosen.groupDosenPredict')
      ->with('idMasterDKBS', $idMasterDKBS)
      ->with('ammount', $ammount)
      ->with('groups', $groups)
      ->with('group', $group);
  }
  public function indexGraph(Request $request)
  {
    $namaMK = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->where('groupmahasiswa.active', '=', 1)
      ->groupBy('groupmahasiswa.id')
      ->get();
    
    $predict = new KMeansGroupPrediction();
    $predict->predictSentiment();
    $predict->graph();
    return view('dosen.groupDosenGraph')
      ->with('groupList', $groupList)
      ->with('namaMK', $namaMK);
  }
  public function indexInsertGroupDosen(Request $request)
  {
    $namaMK = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    $mahasiswa = DB::table('mahasiswa')
      ->join('detaildkbs', 'mahasiswa.nrp', '=', 'detaildkbs.mahasiswa_NRP')
      ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    $currentMK =  DB::table('masterdkbs')
      ->where('idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    return view('dosen.groupDosenInsert')
      ->with('namaMK', $namaMK)
      ->with('currentMK', $currentMK)
      ->with('mahasiswa', $mahasiswa);
  }

  public function insertGroupDosen(Request $request)
  {
    // dd($request);
    // $idmaster = $request->idmaster;
    $groupmahasiswa = [
      'idMasterDKBS' => $request->idmaster,
      'name' => $request->groupName
    ];
    DB::table('groupmahasiswa')->insert($groupmahasiswa);
    $idGroupMahasiswa = DB::select('SELECT * fROM groupmahasiswa ORDER BY id DESC LIMIT 1');
    foreach ($request->list as $key) {
      $groupList = [
        'idGroupMahasiswa' => $idGroupMahasiswa[0]->id,
        'nrp' => $key
      ];
      DB::table('groupList')->insert($groupList);
    }
    return redirect('/groupDosen')
      ->with('success', 'Success Add New Group');
  }
  public function insertGenerateGroup(Request $request)
  {
    $kluster = DB::table('kluster')
      ->join('mahasiswa', 'mahasiswa.nrp', '=', 'kluster.nrp')
      ->orderBy('knumber')
      ->get();
    $ammount = $request->ammount;
    $groups =  $request->groups;
    $member = array_fill(0, $ammount, NULL);
    $group = array_fill(0, $groups, $member);
    $n = 0;
    $i = 0;
    while ($i <= $ammount) {
      $member = [];
      for ($j = 0; $j < $groups; $j++) {
        $group[$j][$i] = $kluster[$n];
        $n++;
        if ($n == count($kluster)) {
          break 2;
        }
      }
      $i++;
    }
    for ($i = 0; $i < count($group); $i++) {
      $group[$i] = array_filter($group[$i]);
    }

    // INSERT
    $name = 1;
    foreach ($group as $key) {
      $groupmahasiswa = [
        'idMasterDKBS' => $request->idmaster,
        'name' => $request->groupName . ' - ' . $name
      ];
      DB::table('groupmahasiswa')->insert($groupmahasiswa);
      $idGroupMahasiswa = DB::select('SELECT * fROM groupmahasiswa ORDER BY id DESC LIMIT 1');
      foreach ($key as $k) {
        $groupList = [
          'idGroupMahasiswa' => $idGroupMahasiswa[0]->id,
          'nrp' => $k->nrp
        ];
        DB::table('groupList')->insert($groupList);
      }
      $name++;
    }
    return redirect('/groupDosen')
      ->with('success', 'Success Add New Group');
  }
  public function edit(Request $request)
  {
    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.id', '=', $request->idgroupmahasiswa)
      ->get();
    if (count($request->listLama) != count($groupList)) {
      foreach ($groupList as $key) {
        // dd($request->listLama);
        if (!in_array($key->nrp, $request->listLama)) {
          $temp =  DB::table('groupmahasiswa')
            ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
            ->where('groupmahasiswa.id', '=', $request->idgroupmahasiswa)
            ->where('grouplist.nrp', '=', $key->nrp)
            ->get();
          // dd($temp[0]->id);
          DB::table('grouplist')->where('id', '=', $temp[0]->id)->delete();
        }
      }
    }
    if ($request->list != null) {
      foreach ($request->list as $key) {
        $groupList = [
          'idGroupMahasiswa' => $request->idgroupmahasiswa,
          'nrp' => $key
        ];
        DB::table('groupList')->insert($groupList);
      }
    }
    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.id', '=', $request->idgroupmahasiswa)
      ->get();
    return redirect('/groupDosen')->with('success', 'Success Edit Group '.$groupList[0]->name);
  }
  public function delete(Request $request, $id)
  {
    DB::table('groupmahasiswa')
      ->where('id', $id)
      ->update(['active' => 0]);
    return redirect()->back()->with('success', 'Success Deleting Group');
  }

  public function reset(Request $request, $id)
  {
    DB::table('groupmahasiswa')
      ->where('idMasterDKBS', $id)
      ->update(['active' => 0]);
    return redirect()->back()->with('success', 'Success Reset Group');
  }

  // --------------------------- ADMIN --------------------------- //
  public function indexAdmin(Request $request)
  {
    $dataMK = DB::table('masterdkbs')
      ->join('semester', 'masterdkbs.semester_namaSemester', '=', 'semester.namaSemester')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->get();
    $namaMK = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();

    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->where('groupmahasiswa.active', '=', 1)
      ->get();
    $classMember = DB::table('masterdkbs')
      ->join('detaildkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->count();
    // dd($classMember);
    $groupList = DB::select(
      'SELECT gm.name AS "name",GROUP_CONCAT(CONCAT(gl.nrp,"-",m.namaMhs)) AS "nrp" , COUNT(*) AS number ,gm.timestamp AS "timestamp" ,gm.id AS "id"
        FROM groupmahasiswa gm
      JOIN grouplist gl
        ON gm.ID = gl.idGroupMahasiswa
      JOIN mahasiswa m
        ON gl.nrp = m.nrp
      WHERE gm.idMasterDKBS =' . $request->post('idmaster', '000') . ' 
      AND gm.active = 1
      GROUP BY gm.id'
    );
    $currentMK =  DB::table('masterdkbs')
      ->where('idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();

    return view('admin.group')
      ->with('namaMK', $namaMK)
      ->with('classMember', $classMember)
      ->with('currentMK', $currentMK)
      ->with('groupList', $groupList)
      ->with('dataMK', $dataMK);
  }

  public function indexEditAdmin(Request $request, $id)
  {
    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.id', '=', $id)
      ->get();

    $idmaster = 0;
    foreach ($groupList as $key) {
      $idmaster = $key->idMasterDKBS;
    }
    $mahasiswa = DB::select('select d.mahasiswa_NRP AS "nrp", mhs.namaMhs AS "nama" From masterdkbs m JOIN detaildkbs d ON m.idMasterDKBS = d.masterdkbs_idMasterDKBS JOIN mahasiswa mhs ON mhs.nrp = d.mahasiswa_NRP WHERE m.idMasterDKBS = ' . $idmaster . ' AND d.mahasiswa_NRP NOT IN (SELECT gl.nrp from groupmahasiswa gm JOIN grouplist gl ON gm.id = gl.idGroupMahasiswa WHERE gm.id = ' . $id . ')');
    // dd($mahasiswa);
    return view('admin.groupEdit')
      ->with('id', $id)
      ->with('mahasiswa', $mahasiswa)
      ->with('groupList', $groupList);
  }

  public function indexInsertGroupAdmin(Request $request)
  {
    $namaMK = DB::table('masterdkbs')
      ->join('matakuliah', 'masterdkbs.matakuliah_kodeMK', '=', 'matakuliah.kodeMK')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    $mahasiswa = DB::table('mahasiswa')
      ->join('detaildkbs', 'mahasiswa.nrp', '=', 'detaildkbs.mahasiswa_NRP')
      ->join('masterdkbs', 'detaildkbs.masterdkbs_idMasterDKBS', '=', 'masterdkbs.idMasterDKBS')
      ->where('masterdkbs.idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    $currentMK =  DB::table('masterdkbs')
      ->where('idMasterDKBS', 'LIKE', $request->post('idmaster', ''))
      ->get();
    return view('admin.groupInsert')
      ->with('namaMK', $namaMK)
      ->with('currentMK', $currentMK)
      ->with('mahasiswa', $mahasiswa);
  }

  public function insertGroupAdmin(Request $request)
  {
    // dd($request);
    $groupmahasiswa = [
      'idMasterDKBS' => $request->idmaster,
      'name' => $request->groupName
    ];
    DB::table('groupmahasiswa')->insert($groupmahasiswa);
    $idGroupMahasiswa = DB::select('SELECT * fROM groupmahasiswa ORDER BY id DESC LIMIT 1');
    foreach ($request->list as $key) {
      $groupList = [
        'idGroupMahasiswa' => $idGroupMahasiswa[0]->id,
        'nrp' => $key
      ];
      DB::table('groupList')->insert($groupList);
    }
    return redirect('/groupAdmin')
      ->with('success', 'Success Add New Group');
  }

  public function deleteAdmin(Request $request, $id)
  {
    DB::table('groupmahasiswa')
      ->where('id', $id)
      ->update(['active' => 0]);

    return redirect()->back()->with('success', 'Success Deleting Group');
  }
  public function editAdmin(Request $request)
  {
    $groupList = DB::table('groupmahasiswa')
      ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
      ->join('mahasiswa', 'grouplist.nrp', '=', 'mahasiswa.nrp')
      ->where('groupmahasiswa.id', '=', $request->idgroupmahasiswa)
      ->get();
    if (count($request->listLama) != count($groupList)) {
      foreach ($groupList as $key) {
        // dd($request->listLama);
        if (!in_array($key->nrp, $request->listLama)) {
          $temp =  DB::table('groupmahasiswa')
            ->join('grouplist', 'groupmahasiswa.id', '=', 'grouplist.idGroupMahasiswa')
            ->where('groupmahasiswa.id', '=', $request->idgroupmahasiswa)
            ->where('grouplist.nrp', '=', $key->nrp)
            ->get();
          // dd($temp[0]->id);
          DB::table('grouplist')->where('id', '=', $temp[0]->id)->delete();
        }
      }
    }
    if ($request->list != null) {
      foreach ($request->list as $key) {
        $groupList = [
          'idGroupMahasiswa' => $request->idgroupmahasiswa,
          'nrp' => $key
        ];
        DB::table('groupList')->insert($groupList);
      }
    }
    return redirect('/groupAdmin');
  }

  public function manageMethod(Request $request)
  {
    $method = DB::table('method')
      ->orderBy('active', 'DESC')
      ->get();
    return view('admin.manageMethod')
      ->with('method', $method);
  }

  public function editMethod(Request $request)
  {
    $method = DB::table('method')
      ->orderBy('active', 'DESC')
      ->get();

    $curentdate = date('Y-m-d');
    DB::table('method')
      ->where('id', $method[0]->id)
      ->update(['active' => 0]);

    DB::table('method')
      ->where('id', $request->id)
      ->update(['active' => 1]);

    return redirect('/manageMethod');
  }

  public function insertComment(Request $request)
  {
    $groupmessages = [
      'idGroupMahasiswa' => $request->idGroupMahasiswa,
      'text' => $request->text,
      'nrp'=>session('nrp')
    ];
    DB::table('groupmessages')->insert($groupmessages);
    return redirect()->back()->with('success', 'Success Send Messages');
  }
  public function deleteComment(Request $request,$id)
  {
    DB::table('groupmessages')
      ->where('id', $id)
      ->update(['active' => 0]);

    return redirect()->back()->with('success', 'Success Deleting Messages');
  }
}
