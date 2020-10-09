<template>
    <div class="container_list">
        <span>编辑推荐</span>
        <!-- 编辑推荐商品列表 -->
        <div class="list_pro">
            <div v-for="(list,index) of lists" :key="index" class="list_product">
                <router-link :to="`/details/${list.id}`">
                    <!-- 商品缩略图 -->
                    <div class="list_image">
                        <img :src="list.image">
                    </div>
                    <!-- 标题链接 -->
                    <div class="list_title">
                        {{list.title}}
                    </div>
                    <!-- 价格栏 -->
                    <div class="list_price">
                        ¥{{list.price}}
                    </div>
                </router-link>
            </div>
        </div>
    </div>
</template>

<style scoped>
    .container_list{
        margin-top: 100px;
        width: 90%;
        margin: 0 auto;
    }
    .container_list span{
        margin-top: 50px;
        font-weight: bold;
        font-size: 24px;
        color: #333;
    }
    .container_list .list_pro{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-bottom: 15px;
    }
    .container_list .list_pro .list_product{
        height: 334px;width: 244px;
        flex: 0 0 20%;
    }
    .container_list .list_title{
        text-align: center;
        color: #333;
        font-size: 14px;
        line-height: 18px;
        font-weight: normal;
        margin: 10px auto;
        overflow: hidden; /*溢出的部分隐藏*/
        white-space: nowrap; /*文本不换行*/
        text-overflow: ellipsis; /*ellipsis:文本溢出显示省略号（...）；clip：不显示省略标记（...），而是简单的裁切*/
    }
    .container_list .list_price{
        text-align: center;
        font-size: inherit;
        font-size: 17px;
        color: #d33a31;
    }
    .container_list .list_image{
        background-color: #EFEFEF;
    }
</style>

<script>
export default {
    data(){
        return{
            // 储存list的标题信息
            lists:[],
        }
    },
    mounted(){
        // 获取list数据
        this.axios.get('/index').then(res=>{
            // 接受返回的数据，赋值给list
            this.lists = res.data.results;
            let data = res.data.results;
            data.forEach(item=>{
                if(item.image != null){
                    item.image = require('../../../server/public/image/product/' + item.image);
                }
                this.lists.push(item);
            })
        });
    }
}
</script>