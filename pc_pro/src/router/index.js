import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
// 导入项目实践页面
import Index from '../views/Index.vue'
import Details from '../views/Details.vue'

Vue.use(VueRouter)

const routes = [
  {
    path:'/details/:id',
    component:Details,
    props:true
  },
  {
    path:'/',
    component:Index
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  routes
})

export default router
