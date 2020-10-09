const express = require('express');
const server = express();
const cors = require('cors');

const mysql = require('mysql');
const pool = mysql.createPool({
    //MySQL数据库服务器的地址
    host:'127.0.0.1',
    //端口号
    port:3306,
    //数据库用户的用户名
    user:'root',
    //数据库用户的密码
    password:'',
    //数据库名称
    database:'163store',
    //最大连接数据
    connectionLimit:10
});

// 解决跨域问题
server.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080']
}));

// 获取列表页数据的接口
server.get('/index',(req,res)=>{
    // 查找list所需的id，title，image，price
    let sql = 'SELECT id,title,image,price FROM details'
    // 通过MySQL连接池执行SQL语句
    pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send({message:'查询成功',code:1,results:results});
        console.log(results);
    });
});

// 获取详情页的数据接口
server.get('/details',(req,res)=>{
    let id =req.query.id;
    // 查找details所需的id，title，image，price，subtite
    let sql = 'SELECT * FROM details WHERE id=?'
    // 通过MySQL连接池执行SQL语句
    pool.query(sql,[id],(err,results)=>{
        if(err) throw err;
        res.send({message:'查询成功',code:2,results:results});
        console.log(results);
    });
});

server.listen(3000,()=>{
    console.log('server is running...');
});