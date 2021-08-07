$request = new HttpRequest();
$request->setUrl('https://ussouthcentral.services.azureml.net/workspaces/19fdf6ca03ce4eb2ba12f919cc178ae9/services/f160187ec7f4407081069a6596dac993/execute');
$request->setMethod(HTTP_METH_POST);

$request->setQueryData(array(
  'api-version' => '2.0',
  'format' => 'swagger'
));

$request->setHeaders(array(
  'Postman-Token' => 'acf015fa-b6a5-3031-d719-fbf5fa96e169',
  'Cache-Control' => 'no-cache',
  'Content-Type' => 'application/json',
  'Authorization' => 'Bearer N/8h4KF5/hxMNqNVKCY3nVqz4Z+ogOEcaVD363h3hMM6lV5GoHHcWL2jj1Eoh7auu7784g643m8CeUSkDh3dqQ=='
));

$request->setBody('{
        "Inputs": {
                "input1":
                [
                    {
                            'Nama': "ana",   
                            'NRP': "1472008",   
                            'gender': "L",   
                            'MataKuliah': "Dasar pemrograman",   
                            'UTS': "60",   
                            'UAS': "60",   
                            'KAT': "60",   
                            'Nilai': "60",   
                            'Mutu': "",   
                    }
                ],
        },
    "GlobalParameters":  {
    }
}
');

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}