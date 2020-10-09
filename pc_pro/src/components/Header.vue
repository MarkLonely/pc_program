<template>
    <div class="headall" >
        <div class="logo">
            <a href=""><img src="../assets/logo1.png"></a>
        </div>
        <div class="head_right">
            <div class="search">
                <!-- <img src="../assets/search.png"> -->
                <input type="text" placeholder="         i12真无线耳机">
            </div>
            <div class="cart" style="line-height:88px">
                <a href=""><img src="../assets/cart.png" alt=""></a>
            </div>
            <!-- 下拉菜单 -->
            <div class="header">
                <span>登录</span>        
                <div class="downbtn">
                    <ul>
                        <li class="headerlogin"><img src="../assets/login/phonelog.png"><a href="#">手机号登陆</a></li>
                        <li class="headerlogin"><img src="../assets/login/wechat.png"><a href="#">微信登录</a></li>
                        <li class="headerlogin"><img src="../assets/login/qq.png"><a href="#">QQ登录</a></li>
                        <li class="headerlogin"><img src="../assets/login/sina.png"><a href="#">新浪微博登录</a></li>
                        <li class="headerlogin"><img src="../assets/login/netease.png"><a href="#">网易邮箱账号登录</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
</template>

<style>
    .headall{
        width: 90%;
        display: flex;
        margin: 20px auto;
    }
    a{
        list-style: none;
        text-decoration: none;
    }
    .logo>a>img{
        width: 240px;height: 70px;
    }
    .search{
        display: inline-block;
        position: relative;
    }
    .search>input{
        width: 300px;height: 30px;
        border: 1px solid lightgrey;
        border-radius: 20px;
        appearance: none;/*去除阴影边框*/
        outline: none;
        -webkit-tap-highlight-color:rgba(0,0,0,0);/*点击高亮的颜色*/
        background: url('../assets/search.png') no-repeat;
    }
    .headall .logo{
        margin-left: 120px;
    }
    .headall .head_right{
        display: flex;
        margin-left: 350px;
    }
    .headall .search input{
        margin-top: 18px;
    }
    .headall .cart{
        margin-left: 30px;
    } 
    .headall .header{
        margin-left: 30px;
    }
    /* 下拉菜单开始 */
     *{
    margin:0;
    padding:0;
    text-decoration:none;
    list-style:none;
    }
    .header{
        display:inline-block;
        position:relative;
    }
    .header:hover .downbtn{
        display:block;
        background-color: #fff;
    }
    .header:hover{
        background-color: #3e8e41;
    }
    .header span{
        padding:15px;
        line-height:61px;
        cursor:pointer;
    }
    .header .downbtn{
        /* 记得修改 */
        z-index: 2;
        display:none;
        position:absolute;
        background-color:#f9f9f9;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        width: 200px;
    }
    .header .downbtn li{
        line-height:30px;
        text-align:left;
        padding-left:5px;
    }
    .header .downbtn li:hover{
        background-color: #eeecec;
    }
    .header .downbtn a{
        display:inner-block;
        color:black;
        font-size: 14px;
        vertical-align: middle;
        margin-left: 15px;
    }
    .header .downbtn li{
        line-height: 50px;
        padding-left: 20px;
    }
    .header .downbtn img{
        vertical-align: middle;
    }

    /* 下拉菜单结束 */
</style>

<script>
export default {
    
}
</script>