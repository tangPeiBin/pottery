const express=require("express");
const router=express.Router();
const pool=require("../pool.js");
const cors=require('cors');
router.use(cors({
    origin:["http://127.0.0.1:8080","http://localhost:8080"]
}));

router.get("/detail",(req,res)=>{
    let pid=req.query.id;
    let sql="SELECT title,price,image,pid FROM product WHERE pid=?";
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
router.get("/recommand",(req,res)=>{
    let pid=req.query.id;
    let sql="SELECT title,price,image,pid FROM product WHERE familyId=? LIMIT 0,5";
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
router.get("/new",(req,res)=>{
    let isNew=req.query.isNew;
    let sql="SELECT title,price,image,pid FROM product WHERE isNew=?";
    pool.query(sql,[isNew],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
router.get("/onsale",(req,res)=>{
    let isOnsale=req.query.isOnsale;
    let sql="SELECT title,price,image,pid FROM product WHERE isOnsale=?";
    pool.query(sql,[isOnsale],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
});
router.get('/search',(req,res)=>{
    let search = req.query.search;
    let sql = "SELECT title,price,image,pid FROM product WHERE title LIKE '%"+search+"%'";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
});

module.exports=router;
