const express=require("express");
const pool=require("../pool");
const router=express.Router();
router.get("/type",(req,res)=>{
  var hero_type="%"+req.query.hero_type+"%";
  var sql="SELECT `hid`, `hname`, `real_name_cn`, `real_name_en`, `hero_avatar`, `hero_type` FROM `lol_hero` WHERE hero_type LIKE ?";
  pool.query(sql,[hero_type],(err,result)=>{
    res.send(result);
  })
})
router.get("/search",(req,res)=>{
  var heroName="%"+req.query.heroName+"%";
  var sql="SELECT `hid`, `hname`, `real_name_cn`, `real_name_en`, `hero_avatar`, `hero_type` FROM `lol_hero` WHERE hname LIKE ? or real_name_cn LIKE ? or real_name_en LIKE ?";
  pool.query(sql,[heroName,heroName,heroName],(err,result)=>{
    res.send(result);
  })
})
module.exports=router;