<template>
<div>
  <my-header></my-header>
  <div id="category">
    <div class="box">
      <div id="position">
        当前位置：
        <router-link to="/home">首页</router-link>&gt;
        <a href="#">餐桌艺术</a>
      </div>
      <div id="content">
        <div class="left">
          <h2>所有商品分类</h2>
          <ul>
            <li>
              <a href="#">餐桌艺术</a>
            </li>
            <li>
              <a href="#">文房雅具</a>
            </li>
            <li>
              <a href="#">咖啡物语</a>
            </li>
            <li>
              <a href="#">茶禅一味</a>
            </li>
            <li>
              <a href="#">作品收藏</a>
            </li>
            <li>
              <a href="#">酒店白瓷</a>
            </li>
            <li>
              <a href="#">精端产品</a>
            </li>
            <li>
              <a href="#">新品</a>
            </li>
            <li>
              <a href="#">特价产品</a>
            </li>
          </ul>
        </div>
        <div class="right">
          <div class="condition">
            <h4>商品筛选</h4>
            <div>
              <ul>
                <li>品牌 :</li>
                <li>
                  <a href="#">全部</a>
                </li>
                <li>
                  <a href="#">金品陶</a>
                </li>
                <li>
                  <a href="#">红叶</a>
                </li>
              </ul>
              <ul>
                <li>价格 :</li>
                <li>
                  <a href="#">全部</a>
                </li>
                <li>
                  <a href="#">0-6000</a>
                </li>
                <li>
                  <a href="#">6000-12000</a>
                </li>
                <li>
                  <a href="#">12000-18000</a>
                </li>
                <li>
                  <a href="#">54000-60000</a>
                </li>
              </ul>
            </div>
          </div>
          <div class="list">
            <div class="title">
              <ul>
                <li>显示方式：</li>
                <li>
                  <a href="#"><img src="../assets/display_mode_list.gif" alt=""></a>
                </li>
                <li>
                  <a href="#"><img src="../assets/display_mode_grid_act.gif" alt=""></a>
                </li>
                <li>
                  <a href="#"><img src="../assets/display_mode_text.gif" alt=""></a>
                </li>
                <li>
                  <a href="#"><img src="../assets/goods_id_DESC.gif" alt=""></a>
                </li>
                <li>
                  <a href="#"><img src="../assets/shop_price_default.gif" alt=""></a>
                </li>
                <li>
                  <a href="#"><img src="../assets/last_update_default.gif" alt=""></a>
                </li>
              </ul>
              <h4>商品列表</h4>
            </div>
            <div id="lists">
              <ul>
                <li v-for="(v,k) of lists" :key="k">
                  <img :src="v.image" />
                  <p>{{v.title}}</p>
                  <p>
                    市场价：
                    <del>￥{{v.price.toFixed(1)}}元</del>
                  </p>
                  <p>
                    本店价：
                    <span>￥{{v.price.toFixed(1)}}元</span>
                  </p>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <my-footer></my-footer>
</div>
</template>
<style scoped>
#category {
  background-color: #fafafa;
}
.box {
  width: 75rem;
  margin: 0 auto;
}
/*定位样式*/
#position {
  height: 3rem;
  line-height: 3rem;
}
#position > a {
  color: #666;
  text-decoration: none;
}
/*正文弹性*/
#content {
  display: flex;
}
/*侧边导航样式*/
.left {
  width: 15rem;
}
.left > h2 {
  width: 100%;
  height: 2.5rem;
  background-color: #f70;
  color: #fff;
  text-align: center;
  line-height: 2.5rem;
  font-size: 1rem;
}
.left > ul > li {
  width: 12rem;
  height: 2.5rem;
  line-height: 2.5rem;
  padding-left: 0.5rem;
}
.left > ul > li + li {
  border-top: 1px solid #eee;
}
.left > ul > li > a {
  color: #000;
  text-decoration: none;
  font-weight: bold;
}
.left > ul > li > a:hover {
  text-decoration: underline;
}
/*商品筛选*/
.condition {
  width: 59.5rem;
  margin-left: 0.5rem;
  border: 1px solid #ddd;
}
.condition > h4 {
  height: 2.2rem;
  line-height: 2.2rem;
  padding-left: 0.5rem;
  font-size: 0.875rem;
  font-weight: bold;
  background-color: #f5f5f5;
}
.condition > div {
  background-color: #fff;
}
.condition > div > ul {
  display: flex;
  padding: 0.5rem 0;
}
.condition > div > ul > li:first-child {
  font-weight: bold;
}
.condition > div > ul > li {
  margin: 0 .1rem;
  padding:.3rem;
}
.condition > div > ul > li:nth-child(2){
  background:#f70;
}
.condition > div > ul > li > a {
  color: #000;
  text-decoration: none;
}
.condition > div > ul > li:nth-child(2) > a{
  color:#fff;
}
.condition > div > ul > li > a:hover {
  color: #f70;
  text-decoration: underline;
}
/*商品列表*/
.list {
  width: 59.5rem;
  margin-left: 0.5rem;
  margin-top: 1rem;
  border: 1px solid #ddd;
}
/*头部*/
.title {
  height: 2.2rem;
  line-height: 2.2rem;
  padding-left: 0.5rem;
  font-size: 0.875rem;
  font-weight: bold;
  background-color: #f5f5f5;
}
.title > ul {
  display: flex;
  float: right;
  font-weight: normal;
  color: #666;
}
.title >ul>li+li{
  margin-left:.2rem;
}
.title >ul>li:nth-child(4){
  margin-right:.5rem;
}
/*商品列表*/
#lists {
  background-color: #fff;
  padding: 0 1rem;
}
#lists > ul {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
#lists > ul > li {
  padding: 1rem 0;
}
#lists > ul > li > p:nth-child(2) {
  padding: 0.5rem 0;
  font-size: 0.75rem;
}
#lists > ul > li > p:nth-child(3) {
  padding-bottom: 0.5rem;
  font-size: 0.75rem;
}
#lists > ul > li > p:nth-child(4) {
  padding-bottom: 0.5rem;
  font-size: 0.75rem;
}
#lists > ul > li > p:nth-child(4) > span {
  color: #f70;
  font-weight: bold;
}
</style>
<script>
export default {
  data() {
    return {
      lists: [],
    };
  },
  methods: {
    getData() {
      this.lists = [];
      var id = this.$route.params.id;
      this.axios.get("/product/recommand?id=" + id).then((res) => {
        var data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          this.lists.push(item);
        });
      });
    },
  },
  mounted() {
    this.getData();
  },
};
</script>
