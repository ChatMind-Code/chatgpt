<?php
header( 'Content-Type:text/html;charset=utf-8 ');
require('./lib/init.php');
if($_GET['cxsycs'] == '1'){
    
    $yh = $_POST['key'];
    $sql = "select vip from chat_yonghu where yhmc='$yh'";
    $sfvip = $mysql->getOne($sql);

    if($sfvip != ''){   
        $date1 = $sfvip;
        $time1 = strtotime($date1);
    }else{
        $time1 = 0;
    }
    $date2 = date("Y-m-d");
    $time2 = strtotime($date2);
    if(($sfvip == '') || ($time2 > $time1)){
        
        $sql = "select sycs from chat_yonghu where yhmc = '$yh'";
        $sycs = $mysql->getOne($sql);
        $arr = array('sycs'=>$sycs);
        print_r(json_encode($arr));
        exit();
    }
    if($hysfscs){
        $sql = "select sycs from chat_yonghu where yhmc = '$yh'";
        $sycs = $mysql->getOne($sql);
        $arr = array('sycs'=>'你当前是会员模式无限次数');
        print_r(json_encode($arr));
    }else{
        $sql = "select sycs from chat_yonghu where yhmc = '$yh'";
        $sycs = $mysql->getOne($sql);
        $arr = array('sycs'=>"你是会员-"."剩余次数:".$sycs);
        print_r(json_encode($arr));
    }
}