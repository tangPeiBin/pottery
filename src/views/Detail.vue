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
            <div>
              <div>
                <img :src="item.image" />
              </div>             
            <div id="details">
              <h4>{{item.title}}</h4>
              <div id="price">
                <p>
                  本店售价：
                  <span>￥{{item.price}}元</span>
                  <del>￥{{item.price}}元</del>
                </p>
                <table>
                  <tr>
                    <td>商品货号：F0207E002</td>
                    <td>商品库存：99</td>
                  </tr>
                  <tr>
                    <td>
                      商品品牌：
                      <span>红叶</span>
                    </td>
                    <td>商品点击数：12</td>
                  </tr>
                </table>
              </div>
              <div id="member">
                会员：
                <span>￥{{item.price}}元</span>
                <a href="#">收藏</a>|
              </div>
              <div id="buy">
                <p>
                  购买数量：
                  <input type="text" v-model="count" />
                  商品总价：
                  <span>￥{{total}}元</span>
                </p>
                <router-link :to="id">
                  <img src />立即购买
                </router-link>
              </div>
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
  width: 14rem;
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
/*右*/
.right {
  width: 60rem;
  margin-left: 1rem;
}
.right > div {
  width: 100%;
  display: flex;
  margin-bottom: 1rem;
}
/*放大镜效果*/
.right > div > div:first-child {
  width: 24rem;
  position: relative;
}
.right > div > div:first-child > img {
  width: 100%;
}
.right > div > div:first-child > img:nth-child(2) {
  width: 5rem;
  margin-top: 3.5rem;
}
.right > div > div:first-child > div {
  width: 20rem;
  height: 20rem;
  position: absolute;
  background-color: #f70;
  z-index: 99;
  left: 25rem;
  top: 0;
  background-image: url("../assets/2613_G_1594944404558.jpg");
}
/*商品详情*/
#details {
  width: 35rem;
  color: #666;
  background-color: #fff;
  margin-left: 1rem;
}
#details > h4 {
  height: 2.5rem;
  font-size: 1.2rem;
  font-weight: bold;
  color: #000;
  border-bottom: 1px solid #ddd;
}
#price {
  border-bottom: 1px solid #ddd;
}
#price > p {
  margin: 1.5rem 0.5rem;
}
#price > p > span {
  font-size: 1.6rem;
  font-weight: bold;
  color: #f70;
  margin-right: 1rem;
}
#price > table {
  width: 30rem;
}
#price > table > tr > td {
  padding: 0 0 1.2rem 0.5rem;
}
#price > table > tr > td > span {
  color: #f70;
}
/*会员*/
#member {
  height: 2.5rem;
  line-height: 2.5rem;
  padding-left: 0.5rem;
}
#member > span {
  color: #f70;
}
#member > a {
  text-decoration: none;
  color: #f70;
  margin-left: 1rem;
}
/*购买*/
#buy {
  height: 6rem;
  background-color: #f5f5f5;
}
#buy > p {
  height: 3rem;
  line-height: 3rem;
  padding-left: 0.5rem;
}
#buy > p > input {
  width: 2rem;
  padding: 0.2rem 0.1rem;
  outline: 0;
  border: 1px solid #ccc;
}
#buy > p > span {
  color: #f70;
}
#buy > a {
  display: inline-block;
  padding: 0.75rem 2rem;
  margin-left: 0.5rem;
  background-color: #f70;
  font-size: 1rem;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
  border-radius: 0.25rem;
}
</style>
<script>
export default {
  data() {
    return {
      item: {},
      count: 1,
      id: ""
    };
  },
  computed: {
    total() {
      var total = 0;
      total = this.count * this.item.price;
      return total;
    },
  },
  methods: {
    getParams() {
      var id = this.$route.params.id;
      console.log(id);
      this.axios.get("/product/detail?id=" + id).then((res) => {
        var data = res.data[0];
        data.image = require("../assets/" + data.image);
        this.item = data;
        this.id = "/shoppingcart/" + data.pid;
      });
    }
  },
  mounted() {
    this.getParams();
  },
};
</script>