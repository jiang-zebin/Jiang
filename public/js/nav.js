$(function(){
  $(`<link rel="stylesheet" href="css/nav.css">`).appendTo("head");
  $.ajax({
    url:"nav.html",
    type:"get",
    success:function(res){
      $(res).replaceAll("nav")
      var a = document.getElementById("user_info");
      var nname=sessionStorage.getItem("nname");
      var html=`
        <p class="search_text_p1">
          <a href="#" class="search_text_a">${nname}</a>
          <a href="#" class="search_text_a" onclick="logout()">[注销]</a>
        </p>
        <p class="search_text_p2">查看自己的战绩、资产、声望值等</p>
      `;
      if(nname){
        a.innerHTML=html;
      }
      var c=document.getElementById("c");
      var ctx=c.getContext("2d");
      ctx.beginPath();
      ctx.moveTo(0,5);
      ctx.lineTo(70,5);
      ctx.lineTo(75,0);
      ctx.lineTo(80,5);
      ctx.lineTo(150,5);
      ctx.lineTo(150,155);
      ctx.lineTo(0,155);
      ctx.closePath();
      ctx.fillStyle="rgba(0,0,0,0.7)";
      ctx.fill();
      ctx.fillStyle="#fff";
      ctx.beginPath();
      ctx.moveTo(20,15);
      ctx.lineTo(130,15);
      ctx.lineTo(130,125);
      ctx.lineTo(20,125);
      ctx.closePath();
      ctx.fill();
      var p = new Image();
      p.src="img/index/bg-download.jpg";
      p.onload=function(){
        ctx.drawImage(p,27,22,96,96)
      }
      var str="扫码下载掌上英雄联盟";
      ctx.textBaseline="top";
      ctx.font="12px sans-serif";
      ctx.fillText(str,15,131);
    }
  })
})

function close(id){
  document.getElementById(id).style.display="none";
}
function open(id){
  document.getElementById(id).style.display="block";
}
function close_open(d1,d2){
  document.getElementById(d1).style.display="none";
  document.getElementById(d2).style.display="block";
}
function close_open_flex(d1,d2){
  document.getElementById(d1).style.display="none";
  document.getElementById(d2).style.display="flex";
}
function login_tips(){
  setTimeout(()=>{
      document.getElementById("login_tips").style.display="block";
  },500);
}
function login_tips_none(){
  setTimeout(()=>{
      document.getElementById("login_tips").style.display="none";
  },0);
}
function close1(id){
  id.setAttribute("style","display:none")
}
function open1(id){
  id.setAttribute("style","display:block")
}
function logout(){
  sessionStorage.clear();location.href='http://localhost:3000/main.html';
}