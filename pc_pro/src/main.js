import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'

// 引入头部组件
import myHeader from './components/Header'
// 让Header变为全局组件
Vue.component("myHeader",myHeader)

// 引入脚部组件
import myFooter from './components/Footer'
// 让Footer变为全局组件
Vue.component("myFooter",myFooter)

// 引入列表组件
import List from './components/List'
Vue.component("list",List)


// 引入轮播组件
import Banner from './components/Banner'
Vue.component('banner',Banner)

axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.prototype.axios = axios

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
