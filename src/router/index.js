import Vue from 'vue'
import VueRouter from 'vue-router'

//导入页面组件
import Home from '../views/Home.vue'

//导入组件文件

Vue.use(VueRouter)

const routes = [
  {
    path: '/detail/:id',
    name: 'detail',
    component: () => import(/* webpackChunkName: "detail" */ '../views/Detail.vue')
  }, 
  {
    path: '/shoppingcart/:id',
    name: 'shoppingcart',
    component: () => import(/* webpackChunkName: "shoppingcart" */ '../views/ShoppingCart.vue')
  }, 
  {
    path: '/category/:id',
    name: 'category',
    component: () => import(/* webpackChunkName: "category" */ '../views/Category.vue')
  }, 
  {
    path: '/login',
    name: 'login',
    component: () => import(/* webpackChunkName: "login" */ '../views/Login.vue')
  }, 
  {
    path: '/register',
    name: 'register',
    component: () => import(/* webpackChunkName: "register" */ '../views/Register.vue')
  },
  {
    path: '/',
    name: 'home',
    component: Home
  }
]

const router = new VueRouter({
  mode:'history',
  routes
})

export default router
