<?php
//加密方式：php源码混淆类加密。免费版地址:http://www.zhaoyuanma.com/phpjm.html 免费版不能解密,可以使用VIP版本。

//发现了time,请自行验证这套程序是否有时间限制.
//此程序由【找源码】http://Www.ZhaoYuanMa.Com (免费版）在线逆向还原，QQ：7530782 
?>
<?php
$key = base64_encode($key);

$expiration = time() + (30 * 24 * 60 * 60); 

setcookie("key", $key, $expiration, "/");


$url =  $_SERVER['HTTP_HOST'];


require('./lib/init.php');


//判断是否登录 发送ajax获取剩余次数
$sfyjdl = $_COOKIE['dengluname'];
if(!empty($sfyjdl)){
    
    
    $sql = "select sycs from chat_yonghu where yhmc = '$sfyjdl'";
    $sycs = $mysql->getOne($sql);
    
    
    if($sycs == '0'){
        $yijdl = true;
    }
    

}

//判断有没有开通过会员
$sql = "select vip from chat_yonghu where yhmc='$sfyjdl'";
$sfvip = $mysql->getOne($sql);



if(!$hysfscs){
    
    
    if($sfvip != ''){
        if($yijdl){
    echo '<button style=" position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);

    z-index: 999999999999999999999;
    
    border: none;
    background-color: #FF5722;
    color: #fff;
    font-size: 16px;
    cursor: pointer;" type="button" class="btn btn-primary gmtc" data-bs-toggle="modal" data-bs-target="#exampleModal">
		😊你已登录 会员提问次数已用完 点我重新充值会员或者次数
	</button>';
	    echo '<div style="top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: #000;
    opacity: 0.9;
    z-index: 9998;
    position: fixed;" class=""></div>
';

} 
    }else{
        



    }
    
    
     
}else{



if($sfvip != ''){
        //数据库的会员到期时间     
        $date1 = $sfvip;
        $time1 = strtotime($date1);
    }else{
        $time1 = 0;
    }

    //当前时间戳
    $date2 = date("Y-m-d");
    $time2 = strtotime($date2);


    //如果不会空 判断没有会员
    if(($sfvip == '') || ($time2 > $time1)){
        
        
        if($time1 != 0){
               if($yijdl){
        echo '<button style=" position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    
        z-index: 999999999999999999999;
        
        border: none;
        background-color: #FF5722;
        color: #fff;
        font-size: 16px;
        cursor: pointer;" type="button" class="btn btn-primary gmtc" data-bs-toggle="modal" data-bs-target="#exampleModal">
    		😊你已登录 你的会员已到期 👉点我重新购买
    	</button>';
    	    echo '<div style="top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: #000;
    opacity: 0.9;
    z-index: 9998;
    position: fixed;" class=""></div>
';
    
    } 
        }else{
              if($yijdl){
        echo '<button style=" position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
    
        z-index: 999999999999999999999;
        
        border: none;
        background-color: #FF5722;
        color: #fff;
        font-size: 16px;
        cursor: pointer;" type="button" class="btn btn-primary gmtc" data-bs-toggle="modal" data-bs-target="#exampleModal">
    		😊你已登录 剩余提问次数为0 👉点我购买套餐
    	</button>';
    	    echo '<div style="top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: #000;
    opacity: 0.9;
    z-index: 9998;
    position: fixed;" class=""></div>
';
    
    } 
        }
        
        
   
        
    }



}
?>