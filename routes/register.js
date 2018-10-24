const express=require("express");
const router=express.Router();
const pool=require("../pool")

router.post('/',(req,res)=>{
  var qqnumber=Math.floor(Math.random()*100000000)+10000000;
  var nname=req.body.nname;
  var upwd=req.body.upwd;
  var phone=req.body.phone;
  var email=qqnumber+'@qq.com';
  var sql="insert into lol_user values(NULL,?,?,?,?,?,NULL,NULL,NULL)";
  pool.query(sql,[qqnumber,nname,upwd,phone,email],(err,result)=>{
    if(err) console.log(err);
    if(result.affectedRows>0){
      res.send(`<script>alert('注册成功,您的QQ号为: ${qqnumber}');location.href='http://localhost:3000/main.html'</script>`)
    }
  })
})

module.exports=router;