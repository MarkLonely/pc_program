<template>
    <div class="details_container">
        <!-- 引入头部组件 -->
        <my-header></my-header>
        <!-- 中部内容 -->
        <div class="details">
            <!-- 面包屑导航 -->
            <div class="details_navbar">
                <div class="navbar_content">
                    <router-link to="/index">首页</router-link>>
                    <span>{{details.title}}</span>
                </div>
            </div>
            <!-- 内容部分 -->
            <div class="details_content">
                <!-- 左侧图片 -->
                <div class="details_left">
                    <!-- <img :src="details.image"> -->
                    <glass-two :img_s="details.image" :img_b="details.bigimage"></glass-two>
                </div>
                <!-- 右侧 -->
                <div class="details_right">
                    <div class="details_head">
                        <h2>{{details.title}}</h2>
                        <p>{{details.subtitle}}</p>
                        <p class="details_price">¥{{details.price}}</p>
                    </div>
                    <div class="cuxiao">
                        <span>促销：</span>
                        <div class="cuxiao_right">
                            <span>手慢无</span>
                            <span>30元&nbsp;&nbsp;10月嘉年华,</span>
                            <span>无门槛</span>
                            <span>领券</span>
                        </div>
                    </div>
                    <div class="yanse">
                        <span>颜色：</span>
                        <span>{{details.type}}</span>
                    </div>
                    <div class="shuliang">
                        <span>数量：</span>
                        <span>
                            <button class="math">-</button>
                            <span class="count">1</span>
                            <button class="math">+</button>
                        </span>
                    </div>
                    <div class="fuwu">
                        <span>服务：</span>
                        <span>网易自营</span>
                        <span>满119包邮</span>
                        <span>商家发货</span>
                        <span>7天无理由退货</span>
                    </div>
                    <div class="right_btn">
                        <a href="">立即购买</a>
                        <a href="">加入购物车</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- 引入脚部组件 -->
        <my-footer></my-footer>
    </div>
</template>

<style scoped>
    .details{
        width: 70%;
        margin: 0 auto;
    }
    .details_content{
        display: flex;
    }

    /* 面包屑导航样式 */
    .details_container .details_navbar{
        border-bottom: 1px solid #333;
        padding-bottom: 15px;
        margin: 15px auto;
    }
    .details_container .details_navbar .navbar_content span{
        font-size: 16px;
        color: #999;
    }
    .details_container .details_navbar .navbar_content a{
        font-size: 18px;
        font-weight: 600;
        color: #333;
    }
    .details_container .details_navbar .navbar_content a:hover{
        text-decoration: underline;
    }
    
    /* 右侧标题信息 */
    .details_content .details_right h2{
        line-height: 34px;
        color: #333;
        font-size: 24px;
        font-weight: normal;
    }
    .details_content .details_right .details_head p:nth-child(2){
        font-size: 14px;
        margin-top: 8px;
        color: #999;
    }
    .details_content .details_right .details_price{
        font-size: 30px;
        color: #d33a31;
        margin-top: 15px;
        margin-bottom: 15px;
    }
    
    /* 设置内容区域左右布局 */
    .details_left{
        flex: 0 0 50%;
    }
    .details_right{
        flex: 0 0 50%;
    }
    
    /* 右侧下方的栏位 */
    .details_right .cuxiao .cuxiao_right{
        display: inline-block;
    }
    .details_right .cuxiao .cuxiao_right span:first-child{
        padding: 0 3px;
        border: 1px solid #d33a31;
        color: #d33a31;
        margin-left: 8px;
        line-height: 28px;
        font-size: 12px;
    }
    .details_right .cuxiao .cuxiao_right span:nth-child(2),span:nth-child(3),span:nth-child(4){
        margin-left: 8px;
        line-height: 28px;
        font-size: 12px;
        color: #333;
    }
    .details_right .cuxiao .cuxiao_right span:nth-child(4){
        color: #328ad4;
        cursor: pointer;
    }
    .details_right .cuxiao>span:first-child{
        float: left;
        font-size: 12px;
        height: 30px;
        line-height: 30px;
        margin-right: 30px;
        color: #999;
    }
    .details_right .cuxiao .cuxiao_right{
        background-color: #fdf5f4;
        border: 1px solid #f8e2e0;
    }
    
    .details_right .yanse>span:first-child{
        float: left;
        font-size: 12px;
        height: 30px;
        line-height: 30px;
        margin-right: 30px;
        color: #999;
    }
    .details_right .yanse>span:nth-child(2){
        font-size: 12px;
        border: 1px solid #e5e5e5;
        padding: 5px 20px;
        cursor: pointer;
        margin-right: 10px;
    }
    .details_right .yanse>span:nth-child(2):hover{
        border: 1px solid #a81111;
    }
    .details_right .yanse{
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .details_right .shuliang{
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .details_right .fuwu{
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .details_right .shuliang span:first-child{
        float: left;
        font-size: 12px;
        height: 30px;
        line-height: 30px;
        margin-right: 30px;
        color: #999;
    }
    .details_right .fuwu span:first-child{
        float: left;
        font-size: 12px;
        height: 30px;
        line-height: 30px;
        margin-right: 30px;
        color: #999;
    }
    .details_right .fuwu span:nth-child(2),span:nth-child(3),span:nth-child(4),span:nth-child(5){
        line-height: 20px;
        margin-right: 28px;
        color: #666;
        font-size: 12px;
    }
    .right_btn{
        margin-top: 30px;
        margin-bottom: 30px;
    }
    .right_btn a:first-child{
        text-decoration: none;
        width: 170px;
        height: 50px;
        margin-top: 30px;
        font-size: 18px;
        border: 2px solid #d33a31;
        color: #d33a31;
        background-color: white;
        text-align: center;
        margin-right: 10px;
        font-weight: inherit;
        padding: 5px 40px;
    }
    .right_btn a:nth-child(2){
        text-decoration: none;
        width: 170px;
        height: 50px;
        margin-top: 30px;
        font-size: 18px;
        border: 2px solid #d33a31;
        color: #fff;
        background-color: #d33a31;
        text-align: center;
        margin-right: 10px;
        font-weight: inherit;
        padding: 5px 40px;
    }
</style>

<script>
import GlassTwo from '../components/GlassTwo'


export default {
    props:["id"],
    data(){
        return{
            // 储存返回的数据
            details:[],
        }
    },
    components:{
        GlassTwo
    },
    mounted(){
        // 获取details数据
        this.axios.get('/details',{params:{id:this.id}}).then(res=>{
            // 接受返回的数据，赋值给details
            this.details = res.data.results[0];
            let data = res.data.results;
            data.forEach(item=>{
                if(item.image != null){
                    item.image = require('../../../server/public/image/product/' + item.image);
                }
                // this.details.push(item);
            });
            data.forEach(item=>{
                if(item.bigimage != null){
                    item.bigimage = require('../../../server/public/image/product/' + item.bigimage);
                }
                // this.details.push(item);
            })
        });
    }
}
</script>