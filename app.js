const express=require("express");
const bodyParser=require("body-parser");
const hero=require("./routes/hero");
const register=require("./routes/register");
const login=require("./routes/login")
var app=express();
var server=app.listen(3000);
app.use(bodyParser.urlencoded({extended:false}));
app.use(express.static('public'));
app.use("/hero",hero);
app.use("/register",register);
app.use("/login",login)