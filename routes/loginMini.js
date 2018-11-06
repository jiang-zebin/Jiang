const express=require("express");
const mysql=require("mysql");
const pool=require("../pool");
var router=express.Router();
//获取用户信息
router.get("/",(req,res)=>{
	var id=req.query.id;
	var sql="SELECT `mid`, `id`, `phone`, `email`, `user_name`, `gender`, `address` FROM `lol_mini` WHERE id=?";
	pool.query(sql,[id],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result);
		}else{
			var sql="INSERT INTO `lol_mini`(`id`) VALUES (?)";
			pool.query(sql,[id],(err,result)=>{
				if(err) throw err;
				if(result.affectedRows>0){
					var sql="SELECT `mid`, `id`, `phone`, `email`, `user_name`, `gender`, `address` FROM `lol_mini` WHERE id=?";
					pool.query(sql,[id],(err,result)=>{
						if(err) throw err;
						if(result.length>0){
							res.send(result);
						}
					})
				}
			})
		}
	});
});

//获取商品列表
router.get("/herolist",(req,res)=>{
	var sql="SELECT `pid`, `pname`, `price`, `rmb`, `game_currency`, `img_url`, `price_sale`, `type`, `hero_type`, `sale_time`  FROM `lol_product` WHERE type='hero' ";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result)
		}
	});
});
router.get("/skinlist",(req,res)=>{
	var sql="SELECT `pid`, `pname`, `price`, `rmb`, `game_currency`, `img_url`, `price_sale`, `type`, `hero_type`, `sale_time`  FROM `lol_product` WHERE type='skin' ";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result)
		}
	});
});

router.get("/tips",(req,res)=>{
	var hero_type=req.query.hero_type;
	var sql="SELECT `pid`, `pname`, `price`, `rmb`, `game_currency`, `img_url`,  `price_sale`, `type`, `hero_type`, `sale_time`  FROM `lol_product` WHERE hero_type=? ";
	pool.query(sql,[hero_type],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result)
		}
	});
});

//查询符合关键字商品
router.get("/pname",(req,res)=>{
	var pname="%"+req.query.pname+"%";
	var sql="SELECT `pid`, `pname`, `price`, `rmb`, `game_currency`, `img_url`,  `price_sale`, `type`, `hero_type`, `sale_time`  FROM `lol_product` WHERE pname LIKE ?";
	pool.query(sql,pname,(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result)
		}
	})
})

//轮播图
router.get("/bannerlist",(req,res)=>{
	var sql="SELECT `id`, `productId`, `img_url` ,`hero_type` FROM `lol_bannerlist`";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result)
		}
	});
});

//详情页
router.get("/detail",(req,res)=>{
	var pid=req.query.pid;
	var sql="SELECT `pid`, `pname`, `price`, `rmb`, `game_currency`, `img_url`, `price_sale`, `type`, `hero_type`, `sale_time`  FROM `lol_product` WHERE pid=? ";
	pool.query(sql,[pid],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send(result)
		}
	});
});

//加入购物车
router.get("/addcart",(req,res)=>{
	var productId=req.query.pid;
	var id=req.query.id;
	var sql="INSERT INTO `lol_cart`( `id`, `productId`) VALUES (?,?)";
	pool.query(sql,[id,productId],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send("add success")
		}
	})
})

//获取购物车
router.get("/getcart",(req,res)=>{
	var id = req.query.id;
	var sql = "SELECT productId FROM lol_cart WHERE id=?"
	pool.query(sql,id,(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			var sql = "SELECT `pid`, `pname`, `price`, `rmb`, `game_currency`, `img_url`, `price_sale`, `type`, `hero_type`, `sale_time`  FROM `lol_product` WHERE ";
			for(var i = 0;i<result.length;i++){
				if(i==0){
					sql+=" pid="+result[i].productId
				}else{
					sql+=" or pid="+result[i].productId
				}
			}
			pool.query(sql,(err,result)=>{
				if(err) throw err;
				if(result.length>0){
					res.send(result)
				}
			})
		}
	})
})

//删除购物车
router.get("/delete",(req,res)=>{
	var pid = req.query.pid;
	var sql = "DELETE FROM `lol_cart` WHERE productId=?";
	pool.query(sql,pid,(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			res.send({code:200,message:"delete success"});
		}
	})
})

//提交订单
router.get("/addbuylist",(req,res)=>{
	var id = req.query.id;
	var pids = req.query.pids;
	var sql = "INSERT INTO `lol_buylist`(`id`, `productId`) VALUES (?,?)";
	pool.query(sql,[id,pids],(err,result)=>{
		if(err) throw err;
		if(result.affectedRows>0){
			var sql = "SELECT `pid`, `pname`, `price`, `rmb`, `game_currency`, `img_url`, `price_sale`, `type`, `hero_type`, `sale_time`  FROM `lol_product` WHERE ";
			var pidList = pids.split(" ");
			for(var i = 0;i<pidList.length;i++){
				if(i==0){
					sql+=" pid="+pidList[i]
				}else{
					sql+=" or pid="+pidList[i]
				}
			}
			pool.query(sql,(err,result)=>{
				if(err) throw err;
				if(result.length>0){
					res.send(result)
				}
			})
		}
	})
})

module.exports=router;