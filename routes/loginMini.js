const express=require("express");
const mysql=require("mysql");
const pool=require("../pool");
var router=express.Router();
router.get("/",(req,res)=>{
	var id=req.query.id
	res.send(id)
});
module.exports=router;