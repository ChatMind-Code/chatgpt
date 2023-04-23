

<?php

require('./lib/init.php');


if(empty($_POST)){
    exit();
}

$zhu['yhmc'] = trim($_POST['yhmc']);
    

$zhu['yhmm'] = trim($_POST['yhmm']);

$sql = "select yhmc from chat_yonghu where yhmc='$zhu[yhmc]'";
if(!($mysql->getOne($sql))) {
	echo '0';
	exit();
}


$sql = "select yhmm from chat_yonghu where yhmm='$zhu[yhmm]'";
if(($mysql->getOne($sql)) != $zhu['yhmm']){
    echo '0';
    exit();
}else{
    echo '1';
}


setcookie('dengluname' , $zhu['yhmc'], time() + 86400, '/');



?>





