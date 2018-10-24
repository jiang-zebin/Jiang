function $(id){
  return document.getElementById(id);
}
function check_change(){
  if($("checkbox").checked==true){
      $("checkbox").checked=false;
  }else{
      $("checkbox").checked=true;
  }
}

function click_uname(){
  $("tips_1").style.display="none";
  $("uname_tick").style.display="none";
  $("uname").style.borderColor="#549DF8";
}

function check_uname(){
  if($("uname").value){
    $("uname_tick").style.display="block";
    $("uname").style.borderColor="#999";
  }else{
    $("uname_tick").style.display="none";
    $("tips_1").style.display="block";
    $("uname").style.borderColor="#ff5b5b";
  }
}

function click_upwd(){
  $("tips_2").style.display="none";
  $("tips_3").style.display="block";
  $("upwd_tick").style.display="none";
  $("upwd").style.borderColor="#549DF8";
}

function check_upwd(){
  $("tips_3_1").style.color="#999";
  $("tips_3_2").style.color="#999";
  $("tips_3_3").style.color="#999";
  $("tips_3").style.display="block";
  $("tips_3_1").style.display="block";
  $("tips_3_2").style.display="block";
  $("tips_3_3").style.display="block";
  $("upwd_tick").style.display="none";
  var upwd=$("upwd").value;
  if(!upwd){
    $("tips_3_1").style.backgroundImage="url(img/reg/info.png)";
  }
  if(upwd.search(/\s+/)==-1){
    $("tips_3_1").style.backgroundImage="url(img/reg/green.png)";
  }else{
    $("tips_3_1").style.backgroundImage="url(img/reg/info.png)";
  }
  if(upwd.length>=8){
    $("tips_3_2").style.backgroundImage="url(img/reg/green.png)";
  }else{
    $("tips_3_2").style.backgroundImage="url(img/reg/info.png)";
  }
  if(upwd.search(/[a-zA-Z]+/)!=-1&&upwd.search(/[0-9]+/)!=-1){
    $("tips_3_3").style.backgroundImage="url(img/reg/green.png)";
  }else if(upwd.search(/[a-zA-Z]+/)!=-1&&upwd.search(/([^\w\s]|_)+/)!=-1){
    $("tips_3_3").style.backgroundImage="url(img/reg/green.png)";
  }else if(upwd.search(/[0-9]+/)!=-1&&upwd.search(/([^\w\s]|_)+/)!=-1){
    $("tips_3_3").style.backgroundImage="url(img/reg/green.png)";
  }else{
    $("tips_3_3").style.backgroundImage="url(img/reg/info.png)";
  }
}

function check_last(){
  var upwd=$("upwd").value;
  $("tips_2").style.display="none";
  $("tips_3").style.display="none";
  if(!upwd){
    $("tips_2").style.display="block";
    $("upwd").style.borderColor="#ff5b5b";
  }else if(upwd){
    if(upwd.search(/\s+/)!=-1){
      $("tips_2").style.display="none";
      $("tips_3").style.display="block";
      $("tips_3_1").style.display="block";
      $("tips_3_1").style.color="#ff5b5b";
      $("tips_3_1").style.backgroundImage="url(img/reg/error.png)";
      $("tips_3_2").style.display="none";
      $("tips_3_3").style.display="none";
      $("upwd").style.borderColor="#ff5b5b";
      if(upwd.length<8){
        $("tips_3_2").style.color="#ff5b5b";
        $("tips_3_2").style.backgroundImage="url(img/reg/error.png)";
        $("tips_3_2").style.display="block";
        if(upwd.search(/[a-zA-Z]+/)==-1&&upwd.search(/[0-9]+/)==-1){
          $("tips_3_3").style.display="block";
          $("tips_3_3").style.color="#ff5b5b";
          $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
        }else if(upwd.search(/[a-zA-Z]+/)==-1&&upwd.search(/([^\w\s]|_)+/)==-1){
          $("tips_3_3").style.display="block";
          $("tips_3_3").style.color="#ff5b5b";
          $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
        }else if(upwd.search(/[0-9]+/)==-1&&upwd.search(/([^\w\s]|_)+/)==-1){
          $("tips_3_3").style.display="block";
          $("tips_3_3").style.color="#ff5b5b";
          $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
        }
      }
    }else if(upwd.length<8){
      $("tips_2").style.display="none";
      $("tips_3").style.display="block";
      $("tips_3_1").style.display="none";
      $("tips_3_2").style.display="block";
      $("tips_3_2").style.color="#ff5b5b";
      $("tips_3_2").style.backgroundImage="url(img/reg/error.png)";
      $("tips_3_3").style.display="none";
      $("upwd").style.borderColor="#ff5b5b";
      if(upwd.search(/[a-zA-Z]+/)==-1&&upwd.search(/[0-9]+/)==-1){
        $("tips_3_3").style.display="block";
        $("tips_3_3").style.color="#ff5b5b";
        $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
      }else if(upwd.search(/[a-zA-Z]+/)==-1&&upwd.search(/([^\w\s]|_)+/)==-1){
        $("tips_3_3").style.display="block";
        $("tips_3_3").style.color="#ff5b5b";
        $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
      }else if(upwd.search(/[0-9]+/)==-1&&upwd.search(/([^\w\s]|_)+/)==-1){
        $("tips_3_3").style.display="block";
        $("tips_3_3").style.color="#ff5b5b";
        $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
      }
    }else if(upwd.search(/[a-zA-Z]+/)==-1&&upwd.search(/[0-9]+/)==-1){
      $("tips_2").style.display="none";
      $("tips_3").style.display="block";
      $("tips_3_1").style.display="none";
      $("tips_3_2").style.display="none";
      $("tips_3_3").style.display="block";
      $("tips_3_3").style.color="#ff5b5b";
      $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
      $("upwd").style.borderColor="#ff5b5b";
    }else if(upwd.search(/[a-zA-Z]+/)==-1&&upwd.search(/([^\w\s]|_)+/)==-1){
      $("tips_2").style.display="none";
      $("tips_3").style.display="block";
      $("tips_3_1").style.display="none";
      $("tips_3_2").style.display="none";
      $("tips_3_3").style.display="block";
      $("tips_3_3").style.color="#ff5b5b";
      $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
    }else if(upwd.search(/[0-9]+/)==-1&&upwd.search(/([^\w\s]|_)+/)==-1){
      $("tips_2").style.display="none";
      $("tips_3").style.display="block";
      $("tips_3_1").style.display="none";
      $("tips_3_2").style.display="none";
      $("tips_3_3").style.display="block";
      $("tips_3_3").style.color="#ff5b5b";
      $("tips_3_3").style.backgroundImage="url(img/reg/error.png)";
    }else{
      $("tips_2").style.display="none";
      $("tips_3").style.display="none";
      $("upwd_tick").style.display="block";
      $("upwd").style.borderColor="#999";
    }
  }
}
function check_phone(){
  var upwd=$("upwd").value;
  var phone=$("phone").value;
  if(upwd){
    if(!phone){
      $("phone").style.borderColor="#ff5b5b";
      $("tips_4").style.display="none";
      $("tips_5").style.display="block";
      $("tips_6").style.display="none";
      $("send_message").style.backgroundColor="#F0F0F0";
      $("send_message").style.color="#ccc";
    }else if(phone.search(/1[3-9][0-9]{9}/)==-1){
      $("phone").style.borderColor="#ff5b5b";
      $("tips_4").style.display="none";
      $("tips_5").style.display="none";
      $("tips_6").style.display="block";
      $("send_message").style.backgroundColor="#F0F0F0";
      $("send_message").style.color="#ccc";
      $("message").style.display="block";
    }else{
      $("tips_4").style.display="block";
      $("tips_5").style.display="none";
      $("tips_6").style.display="none";
      $("send_message").style.backgroundColor="#3386FF";
      $("send_message").style.color="#fff";
      $("phone").style.borderColor="#999";
      $("phone_tick").style.display="block";
      $("message").style.display="block";
    }
  }else{
    $("message").style.display="none";
    $("phone").style.borderColor="#999";
  }
}

function click_phone(){
  $("message").style.display="block";
  $("phone").style.borderColor="#3386FF";
  $("phone_tick").style.display="none";
  $("tips_4").style.display="block";
  $("tips_5").style.display="none";
  $("tips_6").style.display="none";
  $("send_message").style.backgroundColor="#3386FF";
  $("send_message").style.color="#fff";
}
function close_v(id){
  document.getElementById(id).style.visibility="hidden";
}
function open_v(id){
  document.getElementById(id).style.visibility="visible";
}
function close_open(d1,d2){
  document.getElementById(d1).style.display="none";
  document.getElementById(d2).style.display="block";
}

var eye=document.getElementsByClassName("eye")[0];
var see_pwd=document.getElementsByClassName("see_pwd")[0];
var upwd=document.getElementById("upwd");
var upwd_tick=document.getElementById("upwd_tick");
eye.onmouseover=function(){
  eye.src="img/reg/eye.png";
  see_pwd.style="display:block"
  see_pwd.innerHTML=upwd.value;
}
eye.onmouseout=function(){
  eye.src="img/reg/eye-close.png";
  see_pwd.style="display:none"
}

function move(){
  if(upwd_tick.style.display=="block"){
    eye.style.right="17%";
  }else{
    eye.style.right="10%";
  }
}