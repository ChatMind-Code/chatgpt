
function getStyle(el , attr) {
    return el.currentStyle ? el.currentStyle[attr] : getComputedStyle(el,null)[attr];
}
var guan = document.getElementsByClassName('close-sidebar')[0];
var kai = document.getElementsByClassName('show-sidebar')[0];
var box = document.getElementsByClassName('audio-box')[0];
window.onscroll=function(){
var t =document.documentElement.scrollTop||document.body.scrollTop;
var left =document.getElementsByTagName("body")[0];

  window.onscroll = function() {
      scrollFunction()
  };
  
  


  
function scrollFunction() {
    

 
 
           if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            $('.returnTop').fadeIn(500 , function(){
        $('.returnTop').css('display' , 'block');
    });
    
     } else {
        $('.returnTop').fadeOut(500 , function(){
                $('.returnTop').css('display' , 'none');
            });
     }
     
     
     if(document.body.scrollTop >= 1|| document.documentElement.scrollTop >= 1){
        $('.daohang').css('position' , 'fixed');
     }else{
         $('.daohang').css('position' , '');
     }
     
     
 }
  
 // 鐐瑰嚮鎸夐挳锛岃繑鍥為《閮 
$('.returnTop').click(function(){
                 // 鐐瑰嚮鎸夐挳锛岃繑鍥為《閮 
    document.body.scrollTop = 0;
     document.documentElement.scrollTop = 0;
});

}



$('#dianjiwo').click(function(){

    $('#dianwo').fadeIn(1000).delay(1).fadeIn(1 , function(){
        $('#sysmask').css('display','inline');
        $('#sysmask').css('position','absolute');
$('#sysmask').css('height','100%');
$('#sysmask').css('width','100%');
$('#sysmask').css('background','rgba(0,0,0,.8)');
$('#sysmask').css('z-index','1500');
    });


});

$('#sys-btn-event').click(function(){
    // alert(1);
    $('#dianwo').fadeOut(1000).delay(1).fadeOut(1 , function(){
                $('#sysmask').css('display','none');

    });
});

$('.sys-oper-box').click(function(){
    // alert(1);
    $('#dianwo').fadeOut(1000).delay(1).fadeOut(1 , function(){
        $('#sysmask').css('display','none');
    });
});




$('.dlzc').click(function(){


    $('.zuiwaimt').css('display','block');
    
    $('.register-login-modal').fadeIn(500 , function(){
        $('.register-login-modal').css('display' , 'block');
    });
    
});


$('.zuiwaimt').click(function(){
    $('.register-login-modal').fadeOut(500 , function(){
        $('.register-login-modal').css('display' , 'none');
    });
    $('.zuiwaimt').fadeOut(500 , function(){
        $('.zuiwaimt').css('display' , 'none');
    });
    
    $('.register-login-modal2').fadeOut(500 , function(){
        $('.register-login-modal').css('display' , 'none');
    });
    
    
});



$('.grzxym').click(function(){
    
      if (confirm("你确定要退出嘛?")) {
         function clearAllCookie() {  
                var keys = document.cookie.match(/[^ =;]+(?=\=)/g);  
                for(i=0;i<keys.length;i++){
                    $.cookie(keys[i], '');
                }
                // console.log(keys)
                window.location.href=window.location.href;  
            }  
             clearAllCookie();
      } 

    
});



//登录注册
 function is_check_mail(e) {
        return /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/.test(e)
    }
    function is_check_name(e) {
        return /^[\w]{1,16}$/.test(e)
    }
    
    function is_check_pass(e) {
        return !(e.length < 6);
    }

    var body = jQuery("body"),
    st = 0,
    lastSt = 0,
    navText = ['<i class="mdi mdi-chevron-left"></i>', '<i class="mdi mdi-chevron-right"></i>'],
    iconspin = '<i class="fa fa-spinner fa-spin"></i> ',
    iconcheck = '<i class="fa fa-check"></i> ',
    iconwarning = '<i class="fa fa-warning "></i> ',
    is_tencentcaptcha = !1;
    
    
    $('.zcdd').click(function(){
        $('.dldd').css('opacity' , '0.3');
        
        $('#login666').css('display' , 'none');
        $('#signup666').css('display' , 'block');
        
        $('.zcdd').css('opacity' , '1'); 
    });
    
    
    
    $('.dldd').click(function(){
        $('.dldd').css('opacity' , '1');
        $('#login666').css('display' , 'block');
        $('#signup666').css('display' , 'none');
        $('.zcdd').css('opacity' , '0.3'); 
    });
    
    
 $('.ljdl').click(function(){
     var t = $(this);
     a = t.text();
     console.log('点击有效');
     
     var yhmc = $("input[name='username']").val();
     var yhmm = $("input[name='password']").val();
     
     $.ajax({
            //请求方式
            type : "POST",
            //请求地址
            url: "/login.php",
            //数据，json字符串
            data : { "yhmc" :yhmc,"yhmm":yhmm},
            //请求成功
            success : function(data) {
                    
                    console.log(data);
                    
                    t.html(iconspin + "正在登录中..."), setTimeout(function() {
                        t.html(a)
                    }, 500), !1;
                    
                    if (data==0) {
                        return t.html(iconwarning + "用户名或密码错误"), setTimeout(function() {
                            t.html(a)
                        }, 500), !1;
                    }
                    
                    if (data==1) {
                        return t.html("登录成功..."), setTimeout(function() {
                            t.html(a)
                            window.location.href=window.location.href;                                
                         }, 500), !1;
                    }
                    
            },
    });
     
     
     
 });
 
    
    
    $('.ljzc').click(function(){
        var t = $(this);
        a = t.text();
        console.log('点击有效');
        


        var yhmdz = $("input[name='user_name']").val();
        var yxdz = $("input[name='user_email']").val();
        var mmdz = $("input[name='user_pass']").val();
        var mmdz2 = $("input[name='user_pass2']").val();
        if(yhmdz == '' || yxdz == ''){
            return t.html(iconwarning + "用户名或者邮箱不能为空!"), setTimeout(function() {
                t.html(a)
            }, 500), !1;
        }
        if(!is_check_name(yhmdz)){
            return t.html(iconwarning + "用户名输入错误!"), setTimeout(function() {
                t.html(a)
            }, 500), !1;
        }       
        if(!is_check_mail(yxdz)){
            return t.html(iconwarning + "邮箱格式错误!"), setTimeout(function() {
                t.html(a)
            }, 500), !1;
        }
        if(mmdz == '' || mmdz2 == ''){
            return t.html(iconwarning + "密码没有输入完整!"), setTimeout(function() {
                t.html(a)
            }, 500), !1;
        }
        if(mmdz != mmdz2){
            return t.html(iconwarning + "两次密码输入不一致!"), setTimeout(function() {
                t.html(a)
            }, 500), !1;
        }
        if(!is_check_pass(mmdz)){
            return t.html(iconwarning + "密码需要大于6位!"), setTimeout(function() {
                t.html(a)
            }, 500), !1;
        }
        $.ajax({
            //请求方式
            type : "POST",
            //请求地址
            url: "/re.php",
            //数据，json字符串
            data : { "yhm" :yhmdz,"yx" :yxdz,"mm":mmdz},
            //请求成功
            success : function(data) {
                    
                    console.log(data);
                    
                    t.html(iconspin + "正在注册中..."), setTimeout(function() {
                        t.html(a)
                    }, 500), !1;
                    
                    if (data==2) {
                        return t.html(iconwarning + "用户名已存在"), setTimeout(function() {
                            t.html(a)
                        }, 500), !1;
                    }
                    if (data==1) {
                        return t.html("注册成功..."), setTimeout(function() {
                            t.html(a)
                            window.location.href=window.location.href;                    
                         }, 500), !1;
                    }
                    if (data==0) {
                        return t.html(iconwarning + "注册失败"), setTimeout(function() {
                            t.html(a)
                        }, 500), !1;
                    }
                    
           
            },
            
        }); 
        
    });
    




$('.xzytdj').click(function(){

var svalue = 1;  



    if(!svalue){
        $('.zuiwaimt').css('display','block');
    
        $('.register-login-modal').fadeIn(500 , function(){
            $('.register-login-modal').css('display' , 'block');
        });
    }else{
        //判断是否已经有下载地址
        
        $('.xzytdj').html('正在获取下载地址...');
        
        $.ajax({
            //请求方式
            type : "POST",
            //请求地址
            url: "/login.php",
            //数据，json字符串
            data : { "url" :window.location.href,"xzdz":'xiazaidizhi'},
            //请求成功
            success : function(data) {
                    console.log(data);

                    if (data==0) {
                        $('.xzytdj').html('获取失败(联系客服Q:)');
                        alert('下载地址获取失败 请联系客服处理!');
                        return false;
                    }else{
                        $('.xzytdj').html('获取完成 正在打开...');
                    }     


                    var dataObj = eval("("+data+")");

                    if((dataObj[1]) != ''){
                        alert("请记住网盘访问密码:"+dataObj[1]);
                    }

                    window.location.href=dataObj[0];     



            },
       });
           
        
    }
    
});




function IsPC() {
    var userAgentInfo = navigator.userAgent;
    var Agents = ["Android", "iPhone",
                "SymbianOS", "Windows Phone",
                "iPad", "iPod"];
    var flag = true;
    for (var v = 0; v < Agents.length; v++) {
        if (userAgentInfo.indexOf(Agents[v]) > 0) {
            flag = false;
            break;
        }
    }
    return flag;
}


$(".close-sidebar").click(function(){
    
    $('.register-login-modal2').css('display' , 'block');
    
    //壁纸URL
    
    
    $('.register-login-modal2').html('<div style="width: 100%" class="modal-content"><div style="padding: 0px;" class="modal-body"><img style="width: 100%; padding: 10px 10px; box-sizing: border-box;" class="popup-logo"src="'+$('#bigImg').attr('src')+'"data-dark=""alt="图片预览"></div></div>');
    
    $('.zuiwaimt').css('display' , 'block');
    
    
    
});




$('.suijibiaoqianabq a').css('opacity' , '0.6');



$('.picbz li').mouseover(function(e){
    $(e.currentTarget.lastChild).css('box-shadow' , '5px 5px 10px #ccc');
});



$('.picbz li').mouseout(function(e){
    $(e.currentTarget.lastChild).css('box-shadow' , '0px 0px 0px #ccc');
});









