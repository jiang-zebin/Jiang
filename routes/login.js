const express=require("express");
const router=express.Router();
const pool=require('../pool');

router.post("/",(req,res)=>{
  var uname=req.body.uname;
  var upwd=req.body.upwd;
  var sql="select nname from lol_user where qqnumber=? or phone=? or email=? and upwd=?"
  pool.query(sql,[uname,uname,uname,upwd],(err,result)=>{
    if(err) console.log(err);
    if(result.length>0){
      console.log(result[0].nname);
      var nname=result[0].nname;
      res.send(`<script>alert('登录成功');sessionStorage.setItem("nname","${nname}");history.go(-1)</script>`)
    }else{
      res.send(`<script>alert('用户名或密码错误');history.go(-1)</script>`)
    }
  })
})

module.exports=router;