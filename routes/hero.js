const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.get("/type",(req,res)=>{
  var hero_type="%"+req.query.hero_type+"%";
  var sql="select hname,hero_avatar from lol_hero where hero_type like ?";
  pool.query(sql,[hero_type],(err,result)=>{
    res.send(result);
  })
})
router.get("/search",(req,res)=>{
  var heroName="%"+req.query.heroName+"%";
  var sql="select hname,hero_avatar from lol_hero where hname like ? or real_name_cn like ? or real_name_en like ?";
  pool.query(sql,[heroName,heroName,heroName],(err,result)=>{
    res.send(result);
  })
})
module.exports=router;