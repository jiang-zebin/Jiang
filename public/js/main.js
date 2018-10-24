//大图切换
window.onmousewheel=function(){
  if(scrollY>100){
    var ver=document.getElementsByClassName("ver")[0];
    var btn=document.getElementsByClassName("big_btn")[0];
    ver.style.height="350px";
    ver.style.backgroundImage="url(img/mian/pic-back-v29.jpg)";
    btn.style.margin="300px 46.5%";
  }
}

//内容导航切换样式
var lis=menu.children;
menu.onclick=function(e){
  if(e.target.nodeName==="LI"){
    for(var li of lis){
      li.className="menu_li";
    }
    var li=e.target;
    li.className+=" click";
  }
}

//轮播图
var i=0;
var spans=banner_text.children;
spans[0].className="on";
function task(){
  if(i==4){
    i=0;
  }else{
    i++;
  }
  banner.style=`margin-left:-${820*i}px`;
  for(var span of spans){
    span.className="";
  }
  spans[i].className="on";
}
var timer=setInterval(task,5000);
banner.onmouseover=function(){
  clearInterval(timer);
  timer=null;
}
banner.onmouseout=function(){
  timer=setInterval(task,5000);
}
//轮播图导航
for(var j=0;j<spans.length;j++){
  spans[j].id=j;
  spans[j].onmouseover=function(){
    for(var span of spans){
      span.className="";
    }
    this.className="on"
    banner.style=`margin-left:-${820*this.id}px`;
    i=this.id;
  }
}

//切换标签页
var elems=document.querySelectorAll(".tab");
for(var elem of elems){
  elem.onmouseenter=function(e){
    var elem=e.target;
    var tabs=elem.querySelectorAll("[data-toggle=tab]");
    for(var tab of tabs){
      tab.onmouseenter=function(){
        for(var tab of tabs){
          tab.className="";
        }
        this.className="over";
        var elem=tab.parentElement.parentElement.parentElement;
        var divs=elem.getElementsByClassName("tab_item");
        for(var div of divs){
          div.style="display:none";
        }
        var id=this.getAttribute("data-target");
        document.querySelector(id).style="display:block";
      }
    }
  }
}

//周免下拉菜单
var more=document.getElementsByClassName("more_free")[0];
more.onclick=function(){
  var div=more.parentElement.previousElementSibling;
  var par=more.parentElement.parentElement;
  if(div.className=="hero_item"){
    div.className="hero_item active";
    //this.style="background-image:url(img/icon/spr-40.png)";
    this.style="transform:rotate(180deg)";
    par.className="tab_item free_hero shadow";
  }else{
    div.className="hero_item";
    //this.style="background-image:url(img/icon/spr-41.png)";
    this.style="transform:rotate(0deg)";
    par.className="tab_item free_hero";
  }
}