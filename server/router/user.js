const express=require("express");
const router=express.Router();
const pool=require("../pool.js");
const cors=require('cors');
router.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"]
}));
router.post("/register",(req,res)=>{
    let uname=req.body.uname;
    let email=req.body.email;
    let upwd=req.body.upwd;
    let msn=req.body.msn;
    let qq=req.body.qq;
    let office_tele=req.body.office_tele;
    let family_tele=req.body.family_tele;
    let phone=req.body.phone;
    let answer=req.body.answer;
    let sql="insert into user(uname,email,upwd,msn,qq,office_tele,family_tele,phone,answer) VALUES(?,?,?,?,?,?,?,?,?)";
    pool.query(sql,[uname,email,upwd,msn,qq,office_tele,family_tele,phone,answer],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({message:"注册成功",code:1});
        }else{
            res.send({message:"注册失败",code:0});
        }
    });
});
router.get("/login",(req,res)=>{
    let _uname=req.query.uname;
    let _upwd=req.query.upwd;
    let sql="select uname from user where uname=? and upwd=?"
    pool.query(sql,[_uname,_upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({message:"登录成功",code:1});
        }else{
            res.send({message:"登录成功",code:0});

        }
    });
});
module.exports=router;