const express=require("express");
const mysql=require("mysql");
const pool=require("../pool");
var router=express.Router();
router.get("/",(req,res)=>{
	var id=req.query.id;
	var sql="SELECT `cid`, `productId`, `phone`, `email`, `user_name`, `gender`, `address` FROM `lol_mini` WHERE id=?";
	pool.query(sql,[id],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("获取成功");
		}else{
			var sql="INSERT INTO `lol_mini`(`id`) VALUES (?)";
			pool.query(sql,[id],(err,result)=>{
				if(err) throw err;
				if(result.affectedRows>0){
					res.send("新建成功")
				}
			})
		}
	});
});
module.exports=router;