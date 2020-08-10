<template>
<div>

  <my-header></my-header>
  <div id="login">
    <div id="container">
      <p>
        当期位置：
        <a href="#">首页</a> &gt; 用户中心
      </p>
      <div>
        <ul>
          <li>
            <a href="#">用户登录</a>
          </li>
          <li>
            <router-link to="/register">用户注册</router-link>
          </li>
        </ul>
        <table>
          <tbody>
            <tr>
              <td>用户名</td>
              <td>
                <input type="text" v-model="username" />
              </td>
              <td>{{usernameMsg}}</td>
            </tr>
            <tr>
              <td>密码</td>
              <td>
                <input type="password" v-model="upwd" />
              </td>
              <td>{{upwdMsg}}</td>
            </tr>
            <tr>
              <td></td>
              <td>
                <label>
                  <input type="checkbox" />请保存我这次的登录信息。
                </label>
              </td>
            </tr>
            <tr>
              <td></td>
              <td>
                <button @click="login">立即登录</button>
              </td>
            </tr>
            <tr>
              <td></td>
              <td>
                <a href="#">密码问题找回密码</a>
                <a href="#">注册邮件找回密码</a>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <my-footer></my-footer>
</div>
</template>
<style>
#login {
  background-color: #fafafa;
  padding: 1.25rem 0;
}
#container {
  width: 75rem;
  margin: 0 auto;
}
/*页面导航样式*/
#container > p {
  margin-bottom: 1rem;
}
#container > p > a {
  color: #000;
  text-decoration: none;
}
/*登录样式*/
#container > div {
  width: 37.5rem;
  background-color: #fff;
  margin-left: 3.75rem;
}
#container > div > ul {
  width: 29rem;
  display: flex;
  margin-left: 4.5rem;
  border-bottom: 1px solid #f70;
  margin-top: 1rem;
}
#container > div > ul > li {
  margin-left: 0.5rem;
  margin-top: 1rem;
  border: 1px solid #f70;
  margin-bottom: -1px;
}
#container > div > ul > li > a {
  display: inline-block;
  width: 7.5rem;
  height: 1.5rem;
  background-color: #fff5ec;
  color: #000;
  text-decoration: none;
  font-size: 1rem;
  font-weight: bold;
  text-align: center;
  line-height: 1.5rem;
}
#container > div > ul > li + li > a {
  background-color: #f70;
  color: #fff;
}
#container > div > ul > li:first-child > a {
  background-color: #f70;
  color: #fff;
}
#login > #container > div > ul > li + li > a {
  background-color: #fff5ec;
  color: #000;
}
#container > div > table > tbody > tr > td > a {
  display: inline-block;
  text-decoration: none;
  color: #000;
  margin-right: 0.3rem;
  margin-bottom: 1.25rem;
}
/*表格样式*/
#container > div > table {
  margin-top: 0.75rem;
  margin-left: 6.25rem;
}
#container > div > table > tbody > tr > td {
  padding-top: 0.65rem;
}
#container > div > table > tbody > tr > td > input {
  width: 12.5rem;
  height: 1.25rem;
  outline: 0;
}
#container > div > table > tbody > tr > td > ul {
  width: 9.5rem;
  display: flex;
  justify-content: space-around;
}
/*登录按钮*/
#container > div > table > tbody > tr > td > button {
  width: 8.75rem;
  height: 2.5rem;
  background-color: #f70;
  border: 0;
  border-radius: 5px;
  font-size: 1rem;
  color: #fff;
  outline: 0;
}
#container > div > table > tbody > tr > td:first-child {
  float: right;
  margin-right: 0.5rem;
}
#container > div > table > tbody > tr > td:nth-child(3) {
  padding-left: 0.5rem;
  color: #f00;
}
#container > div > p {
  margin-top: 0.5rem;
  display: flex;
  justify-content: center;
  padding: 1.25rem;
}
#container > div > p > a {
  text-decoration: none;
  color: #000;
  margin: 0 0.125rem;
}
</style>
<script>
export default {
  data() {
    return {
      username: "",
      upwd: "",
      usernameMsg: "",
      upwdMsg: "",
    };
  },
  methods: {
    login() {
      this.axios
        .get("/user/login?uname=" + this.username + "&upwd=" + this.upwd)
        .then((res) => {
          if (res.data.code == 1) {
            this.$router.push("/");
          } else {
            this.usernameMsg = "用户名或密码错误";
          }
        });
    },
  },
};
</script>>