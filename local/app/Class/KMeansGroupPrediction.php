<?php

use Illuminate\Support\Facades\DB;

include "Prediction.php";
class KMeansGroupPrediction extends Prediction
{
    public function cluster($ammount)
    {
        $kluster = DB::table('kluster')
            ->get();
        shell_exec('C:\R\R-4.0.2\bin\Rscript.exe C:\xampp\htdocs\koneksiR\connect.R ' . $ammount);
        $json_data = file_get_contents('C:\xampp\htdocs\CLSReborns\kluster.json');
        $dataCluster = json_decode($json_data);
        $n = 0;
        foreach ($kluster as $key) {
            DB::table('kluster')
                ->where('id', $key->id)
                ->update(['knumber' => $dataCluster[$n]]);
            $n++;
        }
    }
    public function recommend($ammount, $groups, $member)
    {

        $group = array_fill(0, $groups, $member);
        $kluster = DB::table('kluster')
            ->join('mahasiswa', 'mahasiswa.nrp', '=', 'kluster.nrp')
            ->orderBy('knumber')
            ->get();
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
        return $group;
    }
    public function graph()
    {
        shell_exec('C:\R\R-4.0.2\bin\Rscript.exe C:\xampp\htdocs\koneksiR\graph.R ');
    }
    public function predictSentiment()
    {
        $url = 'http://chatclassification.herokuapp.com/prediksi';
        $predict = DB::table('forumcomment')
            ->where('sentimen', '=', -1)
            ->get();
        foreach ($predict as $key) {
            $data = array('text' => htmlspecialchars_decode(trim($key->body)));
            $options = array(
                'http' => array(
                    'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
                    'method'  => 'POST',
                    'content' => http_build_query($data)
                )
            );
            $context  = stream_context_create($options);
            $result = file_get_contents($url, false, $context);
            if ($result === FALSE) { /* Handle error */
            }
            $temp = json_decode(json_encode(json_decode(json_decode($result))), true)['prediction'][0];
            DB::table('forumcomment')
                ->where('comment_id', $key->comment_id)
                ->update(['sentimen' => $temp]);
        }

        $predict = DB::table('forumreply')
            ->where('sentimen', '=', -1)
            ->get();
        foreach ($predict as $key) {
            $data = array('text' => htmlspecialchars_decode(trim($key->body)));
            $options = array(
                'http' => array(
                    'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
                    'method'  => 'POST',
                    'content' => http_build_query($data)
                )
            );
            $context  = stream_context_create($options);
            $result = file_get_contents($url, false, $context);
            if ($result === FALSE) { /* Handle error */
            }
            $temp = json_decode(json_encode(json_decode(json_decode($result))), true)['prediction'][0];
            DB::table('forumreply')
                ->where('reply_id', $key->reply_id)
                ->update(['sentimen' => $temp]);
        }
    }
}
