<template>
    <div class="footer_container">
        <div class="footer_text">
            <!-- 左部样式 -->
            <div class="footer_left">
                <!-- 第一排 -->
                <div class="first">
                    <ul>
                        <li>服务条款</li>
                        <li>隐私政策</li>
                        <li>儿童隐私政策</li>
                        <li>版权投诉指引</li>
                        <li>意见反馈</li>
                    </ul>
                </div>
                <!-- 第二排 -->
                <div class="second">
                    <span>网易公司版权所有©1997-2020</span>
                    <span>杭州乐读科技有限公司运营：浙网文[2018] 3506-263号</span>
                </div>
                <!-- 第三排 -->
                <div class="third">
                    <span>违法和不良信息举报电话：0571-89853516</span>
                    <span>举报邮箱：ncm5990@163.com</span>
                </div>
                <!-- 第四排 -->
                <div class="fourth">
                    <span>食品经营许可证 出版物经营许可证 营业执照 网络食品交易第三方平台提供者信息备案: 浙网食A33010041</span>
                </div>
                <!-- 第五排 -->
                <div class="fifth">
                    <span>粤B2-20090191-18</span>
                    <span>举报邮箱：工业和信息化部备案管理系统网站</span>
                </div>
            </div>
            <!-- 右部样式 -->
            <div class="footer_right">

            </div>
        </div>
    </div>
</template>

<style scoped>
    span{
        list-style: none;
        font-size: 12px;
        color: #333;
        line-height: 24px;
    }
    .footer_container{
        width: 100%!important;
        background-color: #F2F2F2;
        float: left;
    }
    .footer_left .first ul{
        display: flex;
    }
    .footer_left .first ul li{
        border-left: 1px solid #999;
        font-size: 12px;
        color: #999;
        padding: 0 10px;
    }
    .footer_left .first ul li:first-child{
        padding-left: 0;
        border-left: none;
    }
    .footer_container{
        padding: 10px 40px;
    }
</style>