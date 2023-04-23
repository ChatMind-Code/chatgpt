<?php

header( 'Content-Type:text/html;charset=utf-8 ');

require('./lib/init.php');

function GetUserIP(){

if(isset($_SERVER['HTTP_X_FORWARDED_FOR'])){

$arr = explode(',',$_SERVER['HTTP_X_FORWARDED_FOR']);

return $arr[0];

}else{

return $_SERVER['REMOTE_ADDR'];

}

}

$sfczmy = $_GET['miyao'];
$sql = "select miyao from chat_key where miyao='$sfczmy'";
if($mysql->getOne($sql)) {
    exit();
}

$miyao['miyao'] = $_GET['miyao'];
$miyao['ip'] = $_GET['ip'];
$miyao['time'] = date("Y-m-d H:i:s");
    
    
$mysql->query(Pj('chat_key' , $miyao));



