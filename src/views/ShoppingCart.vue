<template>
<div>
<my-header></my-header>
  <div id="body">
    <div id="shoppingCart">
      <div id="position">
        当前位置：
        <router-link to="/home">首页</router-link>> 购物流程
      </div>
      <h4>商品列表</h4>
      <div class="cart">
        <table>
          <thead>
            <tr>
              <th>商品名称</th>
              <th>属性</th>
              <th>市场价</th>
              <th>本店价</th>
              <th>购买数量</th>
              <th>小计</th>
              <th>操作</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="(value,key) of scarts" :key="key">
              <td>
                <a href="#">
                  <img :src="value.image" />
                  <br />
                  {{value.title}}
                </a>
              </td>
              <td></td>
              <td>￥{{value.price}}元</td>
              <td>￥{{value.price}}元</td>
              <td>
                <input type="text" v-model="value.count" />
              </td>
              <td>￥{{value.price*value.count}}元</td>
              <td>
                <a href="javascript:;" @click="deletePro(key)">删除</a>
              </td>
            </tr>
          </tbody>
        </table>
        <p>
          购物金额小计 ￥{{total}}元，比市场价 ￥{{total}}元 节省了 ￥0.00元 (0%)
          <button>更新购物车</button>
          <button>清空购物车</button>
        </p>
        <div>
          <button>继续购物</button>
          <button>去结算></button>
        </div>
      </div>
    </div>
  </div>
  <my-footer></my-footer>
</div>
</template>
<style scoped>
#body {
  background-color: #fafafa;
  border-bottom: 1px solid #ddd;
}
#shoppingCart {
  width: 75rem;
  margin: 0 auto;
  color: #666;
}
/*当前位置*/
#position {
  height: 3rem;
  line-height: 3rem;
}
#position > a {
  text-decoration: none;
  color: #666;
}
#shoppingCart > h4 {
  height: 2.2rem;
  line-height: 2.2rem;
  font-weight: bold;
  font-size: 0.875rem;
  color: #000;
  background-color: #eee;
  padding-left: 1rem;
  margin-bottom: 0.3rem;
}
/*表格数据*/
.cart > table {
  background-color: #fff;
  width: 100%;
}
.cart > table > thead > tr > th {
  font-weight: bold;
  height: 2rem;
  line-height: 2rem;
  padding: 0 0.5rem;
}
/*表头宽度*/
.cart > table > thead > tr > th:first-child {
  width: 19rem;
}
.cart > table > thead > tr > th:nth-child(3),
.cart > table > thead > tr > th:nth-child(4),
.cart > table > thead > tr > th:nth-child(6) {
  width: 11rem;
}
.cart > table > tbody > tr > td {
  text-align: center;
  vertical-align: middle;
  padding: 0.3rem;
}
.cart > table > tbody > tr > td > input {
  width: 2.5rem;
  border: 1px solid #bbb;
  outline: 0;
  text-align: center;
  padding: 0.3rem 0;
}
.cart > table > tbody > tr > td > a {
  text-decoration: none;
  color: #666;
}
.cart > table > tbody > tr > td > a > img {
  height: 5rem;
  margin: 0.2rem 0;
}
.cart > table > tbody > tr > td > a:hover {
  text-decoration: underline;
  color: #f70;
}
/*总计*/
.cart > p {
  height: 2.2rem;
  line-height: 2.2rem;
  background-color: #fff;
  margin: 0.3rem 0;
  padding-left: 0.2rem;
}
.cart > p > button {
  float: right;
  margin-right: 0.5rem;
  margin-top: 0.4rem;
  background-color: #f70;
  color: #fff;
  padding: 0.2rem 1rem;
  outline: 0;
  border: 0;
  border-radius: 0.3rem;
}
.cart > div {
  height: 3rem;
  background-color: #fff;
  margin-bottom: 2rem;
}
.cart > div > button {
  height: 2.5rem;
  padding: 0 2rem;
  font-size: 1.2rem;
  color: #fff;
  background-color: #f70;
  font-family: "Microsoft YaHei", Tahoma, Helvetica, Arial, simsun;
  font-weight: 550;
  border: 0;
  outline: 0;
  border-radius: 5px;
  margin-left: 0.5rem;
  margin-top: 0.25rem;
}
.cart > div > button + button {
  float: right;
  margin-right: 0.5rem;
}
</style>

<script>
export default {
  data() {
    return {
      scarts: [],
    };
  },
  methods: {
    getData() {
      var id = this.$route.params.id;
      var _this = this;
      return new Promise(function (resolve) {
        _this.axios.get("/product/detail?id=" + id).then((res) => {
          if (res.data.length > 0) {
            var data = res.data[0];
            data.image = require("../assets/" + data.image);
            data.count = 1;
            _this.scarts.push(data);
            resolve();
          }
        });
      });
    },
    deletePro(key) {
      this.scarts.splice(key, 1);
    },
  },
  mounted() {
    this.getData();
  },
  computed: {
    total() {
      var total = 0;
      this.scarts.forEach((item) => {
        total += item.price * item.count;
      });
      return total;
    },
  },
};
</script>