<?php

require('./lib/init.php');

if(empty($_POST)){
    exit();
}

$zhu['yhmc'] = trim($_POST['yhm']);

$zhu['yhmm'] = trim($_POST['mm']);

$zhu['yhyx'] = trim($_POST['yx']);

$zhu['time'] = $date;

$sql = "select yhmc from chat_yonghu where yhmc='$zhu[yhmc]'";
if($mysql->getOne($sql)) {
	echo '2';
	exit();
}

if(!$mysql->query(Pj('chat_yonghu' , $zhu))){
    echo '0';
	exit();
}else{
    echo '1';
    setcookie('dengluname' , $zhu['yhmc'], time() + 86400, '/');
    exit();
}











