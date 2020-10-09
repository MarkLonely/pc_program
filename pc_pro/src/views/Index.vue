<template>
    <div class="container_index">
        <!-- 头部组件 -->
        <my-header></my-header>
        <!-- 轮播组件 -->
        <banner></banner>
        <!-- tab页签 -->
        <div class="hometab">
            <ul>
                <li>
                    <img src="../assets/images/hometab/hot.png" alt="">
                    <span>热销爆款</span>
                </li>
                <li>
                    <img src="../assets/images/hometab/zhoubian.png" alt="">
                    <span>IP周边</span>
                </li>
                <li>
                    <img src="../assets/images/hometab/shuma.png" alt="">
                    <span>数码影音</span>
                </li>
                <li>
                    <img src="../assets/images/hometab/jifen.png" alt="">
                    <span>云贝商场</span>
                </li>
            </ul>
        </div>
        <!-- 分割线 -->
        <hr>
        <!-- sub分页 -->
        <div class="sub_img">
            <div>
                <img src="../assets/sub/left.jpg">
            </div>
            <div>
                <img src="../assets/sub/right.jpg">
            </div>
        </div>
        <!-- list列表组件 -->
        <list></list>
        <!-- 中部的图片 -->
        <div class="middle_image">
            <img src="../assets/images/middle.png">
        </div>
        <!-- list列表组件 -->
        <list></list>
        <!-- Footer组件 -->
        <my-footer></my-footer>
    </div>
</template>

<style>
    *{
        list-style: none;
    }
    a{
        text-decoration: none;
    }
    /* 给最外层容器加定宽 */
    .container_index{
        width: 80%;
        margin: 0 auto;
    }

    /* sub样式 */
    .container_index .sub_img{
        margin-top: 40px;
        display: flex;
        margin: 0 auto;
    }
    .container_index .sub_img div:first-child{
        margin: 0 auto;
    }
    .container_index .sub_img div:nth-child(2){
        margin: 0 auto;
    }

    /* tab页签 */
    .hometab{
        width: 90%;
        margin: 20px auto;
    }
    .hometab>ul{
        text-align: center;
        display: flex;
        padding: 0;
    }
    .hometab>ul>li{
        flex: 0 0 25%;
        display: left;
        border-right: 1px solid #b4b1b1;
    }
    .hometab>ul>li:last-child{
        border-right: none;
    }
    .hometab>ul>li span{
        text-align: center;
        vertical-align: top;
        font-weight: bold;
    }

    /* 分割线样式 */
    .hometab + hr{
        /* border: 1px solid #b4b1b1; */
        margin-bottom: 20px;
    }

    .container_index .middle_image{
        margin: 20px auto;
    }
</style>

<script>
export default {
    
}
</script>