<template>
  <div>
    <div id="top_bg">
      <div id="top">
        <ul>
          <li>
            <a href="#">我的订单</a>
            <ul class="menu">
              <li>
                <a href="#">我的订单</a>
              </li>
              <li>
                <a href="#">我的评价</a>
              </li>
              <li>
                <a href="#">我的余额</a>
              </li>
              <li>
                <a href="#">我的红包</a>
              </li>
              <li>
                <a href="#">我的收藏</a>
              </li>
              <li>
                <a href="#">修改收货地址</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">
              <img src="../assets/viplogo.png" />会员专区
            </a>
          </li>
          <li>
            <a href="#">
              关注我们：
              <img src="../assets/guanzhu-ico.png" />
            </a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="#">❤ 收藏日用陶瓷-景德镇陶瓷网</a>
          </li>
          <li>
            欢迎光临本店，
            <router-link to="/login">登录</router-link>|
            <router-link to="/register">注册</router-link>|
          </li>
        </ul>
      </div>
    </div>
    <header>
      <div>
        <img src="../assets/logo.png" />
        <img src="../assets/company.png" />
      </div>
      <div>
        <input type="text" v-model="searchmsg" />
        <a href="javascript:;" @click="search">搜&nbsp;索</a>
        <p>
          热门搜索：
          <a href>景德镇陶瓷</a>
        </p>
      </div>
      <ul>
        <li>
          <img src="../assets/shoppingcart.png" />
          <router-link to="/shoppingcart/0">我的购物车</router-link>
        </li>
        <li>
          <img src="../assets/hotline.png" />
          <a href="#">400-006-2221</a>
          <br />
          <span>客服热线</span>
        </li>
      </ul>
    </header>
    <nav>
      <ul>
        <li>
          <a href="#">全部商品分类</a>
        </li>
        <li v-for="(v,k) of nav" :key="k">
          <router-link :to="v.url">{{v.title}}</router-link>
        </li>
        
      </ul>
    </nav>
  </div>
</template>
<style scoped>
/*顶部样式*/
/*左边*/
#top_bg {
  background-color: #f5f5f5;
  height: 2.2rem;
  border-bottom: 1px solid #ddd;
}
#top {
  height: 2.2rem;
  font-size: 0.75rem;
  width: 75rem;
  margin: 0 auto;
}
#top > ul {
  display: flex;
  height: 100%;
  align-items: center;
}
#top > ul:first-child {
  float: right;
  margin-right: 6rem;
}
#top > ul:nth-child(2) > li {
  margin-right: 1.2rem;
}
#top > ul:nth-child(2) > li > a {
  color: #666;
  padding-right: 0.3rem;
  text-decoration: none;
}
#top > ul:nth-child(2) > li > a:hover {
  color: #f70;
}
/*右边*/
#top > ul:first-child > li {
  margin-left: 1rem;
  position: relative;
}
#top > ul:first-child > li > a {
  display: inline-block;
  height: 2rem;
  line-height: 2rem;
  text-decoration: none;
  color: #666;
}
#top > ul:first-child > li > a:hover {
  color: #f70;
}
#top > ul:first-child > li > a > img {
  position: relative;
}
#top > ul:first-child > li:nth-child(2) > a > img {
  top: 0.4rem;
}
#top > ul:first-child > li:nth-child(3) > a > img {
  top: 0.15rem;
}
/*下拉订单*/
.menu {
  width: 6rem;
  position: absolute;
  top: 1.7rem;
  left: -2rem;
  z-index: 1;
  opacity: 0;
  display: none;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  transition: all 0.3s;
}
.menu:hover {
  opacity: 1;
  display: block;
}
#top > ul:first-child > li:first-child > a:hover + ul {
  opacity: 1;
  display: block;
}
.menu > li > a {
  display: inline-block;
  width: 5.5rem;
  height: 1.8rem;
  line-height: 1.8rem;
  text-decoration: none;
  padding-left: 0.5rem;
  color: #666;
}
.menu > li > a:hover {
  background-color: #f5f5f5;
}
.menu > li + li {
  border-top: 1px dashed #ccc;
}
/*头部样式*/
header {
  display: flex;
  width: 75rem;
  margin: 0 auto;
}
header > div:first-child {
  margin-top: 0.75rem;
}
header > div:nth-child(2) {
  position: relative;
  margin: 2rem 0 0 5rem;
}
header > div > input {
  width: 27.5rem;
  height: 1.75rem;
  border: 3px solid #f70;
  outline: none;
  padding-left: 0.75rem;
}
header > div > a {
  width: 5rem;
  height: 2rem;
  padding: 1px 0;
  position: absolute;
  right: 0;
  background-color: #f70;
  border: 0;
  text-align: center;
  line-height: 2rem;
  text-decoration: none;
  color: #fff;
  font-size: 1rem;
}
header > div > p {
  margin-top: 0.75rem;
  color: #888;
}
header > div > p > a {
  text-decoration: none;
}
header > div > p > a:hover {
  color: #f70;
}
header > ul {
  display: flex;
  margin: 1rem 0 0 1rem;
}
header > ul > li:first-child {
  margin-right: 2rem;
}
header > ul > li > img {
  width: 2.75rem;
  position: relative;
  top: 1rem;
}
header > ul > li > a {
  text-decoration: none;
  color: #000;
  font-size: 0.75rem;
  font-weight: bold;
}
header > ul > li > span {
  color: #888;
  font-size: 0.75rem;
  margin-left: 2.75rem;
}
/*导航栏样式*/
nav {
  background-color: #f70;
}
nav > ul {
  width: 75rem;
  display: flex;
  margin: 0 auto;
}
nav > ul > li > a:hover {
  background-color: rgba(0, 0, 0, 0.1);
}
nav > ul > li > a {
  display: inline-block;
  color: #fff;
  font-size: 0.875rem;
  text-decoration: none;
  padding: 0.625rem 1.125rem;
}
nav > ul > li:first-child > a {
  padding: 0.625rem 3.75rem;
  background-color: #454c5f;
}
</style>
<script>
export default {
  data(){
    return {
      nav:[
        {title:"首页",url:"/"},
        {title:"餐桌艺术",url:"/category/20"},
        {title:"茶禅一味",url:"/category/30"},
        {title:"文房雅具",url:"/category/40"},
        {title:"咖啡物语",url:"/category/50"},
        {title:"作品收藏",url:"/category/20"},
        {title:"酒店白瓷",url:"/category/20"},
        {title:"陶友互动",url:"/category/20"},
        {title:"精端产品",url:"/category/80"},
        {title:"新品",url:"/category/20"},
        {title:"特价产品",url:"/category/20"}
      ],
      searchmsg:""
    }
  },
  methods:{
    search(){
      
    }
  }
}
</script>