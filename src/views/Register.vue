<template>
<div>
 <my-header></my-header>
  <div id="register">
    <div id="container">
      <p>
        当期位置：
        <a href="#">首页</a> &gt; 用户中心
      </p>
      <div>
        <ul>
          <li>
            <router-link to="/login">用户登录</router-link>
          </li>
          <li>
            <a href="#">用户注册</a>
          </li>
        </ul>
        <table>
          <tbody>
            <tr>
              <td>用户名</td>
              <td>
                <input type="text" v-model="username" @blur="usernameCheck" />
                <span></span>
              </td>
              <td>{{usernamemsg}}</td>
            </tr>
            <tr>
              <td>email</td>
              <td>
                <input type="text" v-model="email" @blur="emailCheck" />
              </td>
              <td>{{emailmsg}}</td>
            </tr>
            <tr>
              <td>密码</td>
              <td>
                <input type="password" v-model="password" @blur="passwordCheck" />
              </td>
              <td>{{passwordmsg}}</td>
            </tr>
            <tr>
              <td>密码强度</td>
              <td>
                <ul>
                  <li>弱</li>
                  <li>中</li>
                  <li>强</li>
                </ul>
              </td>
              <td></td>
            </tr>
            <tr>
              <td>确认密码</td>
              <td>
                <input type="password" v-model="password2" @blur="password2Check" />
              </td>
              <td>{{password2msg}}</td>
            </tr>
            <tr>
              <td>MSN</td>
              <td>
                <input type="text" v-model="msn" />
              </td>
              <td></td>
            </tr>
            <tr>
              <td>QQ</td>
              <td>
                <input type="text" v-model="qq" />
              </td>
              <td></td>
            </tr>
            <tr>
              <td>办公电话</td>
              <td>
                <input type="text" v-model="officeTele" />
              </td>
              <td></td>
            </tr>
            <tr>
              <td>家庭电话</td>
              <td>
                <input type="text" v-model="familyTele" />
              </td>
              <td></td>
            </tr>
            <tr>
              <td>手机</td>
              <td>
                <input type="text" v-model="phone" />
              </td>
              <td>{{phonemsg}}</td>
            </tr>
            <tr>
              <td>密码提示问题</td>
              <td>
                <select>
                  <option selected>请选择密码提示问题</option>
                  <option>我最好朋友的生日？</option>
                  <option>我儿时居住的地址？</option>
                  <option>我的座右铭是？</option>
                  <option>我最喜爱的电影？</option>
                  <option>我最喜爱的歌曲？</option>
                  <option>我最喜爱的食物？</option>
                  <option>我最大的爱好？</option>
                  <option>我最喜欢的小说？</option>
                  <option>我最喜欢的运动队？</option>
                </select>
              </td>
              <td></td>
            </tr>
            <tr>
              <td>密码问题答案</td>
              <td>
                <input type="text" v-model="answer" />
              </td>
              <td>{{answermsg}}</td>
            </tr>
            <tr>
              <td>验证码</td>
              <td>
                <input type="text" v-model="code" />
              </td>
              <td>{{codemsg}}</td>
            </tr>
            <tr>
              <td></td>
              <td>
                <label>
                  <input type="checkbox" />我已看过并接受《
                  <a href>用户协议</a>》
                </label>
              </td>
              <td></td>
            </tr>
            <tr>
              <td></td>
              <td>
                <button @click="register">会员注册</button>
              </td>
              <td></td>
            </tr>
          </tbody>
        </table>
        <p>
          <a href>密码问题找回密码</a>
          <a href>注册邮件找回密码</a>
        </p>
      </div>
    </div>
  </div>
 <my-footer></my-footer>
</div>
</template>
<style scoped>
#register {
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
/*注册样式*/
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
/*注册按钮*/
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
      //注册表单数据
      username: "",
      password: "",
      password2: "",
      email: "",
      msn: "",
      qq: "",
      officeTele: "",
      familyTele: "",
      phone: "",
      answer: "",
      code: "",
      //提示语
      usernamemsg: "*",
      emailmsg: "*",
      passwordmsg: "*",
      password2msg: "*",
      phonemsg: "*",
      answermsg: "*",
      codemsg: "",
    };
  },
  methods: {
    //用户名验证
    usernameCheck() {
      var usernameRegExp = /^\w{3,14}$/;
      if (usernameRegExp.test(this.username)) {
        this.usernamemsg = "*可以注册";
      } else if (this.username.length < 3) {
        this.usernamemsg = "-用户名长度不能少于3个字符。";
      } else if (this.username.length > 14) {
        this.usernamemsg = "-用户名最长不得超过7个汉字";
      } else {
        this.usernamemsg = "-用户名含有非法字符";
      }
    },
    //邮箱验证
    emailCheck() {
      var emailRegExp = /^\w+@\w+$/;
      if (emailRegExp.test(this.email)) {
        this.emailmsg = "*可以注册";
      } else {
        this.emailmsg = "-邮件地址不合法";
      }
    },
    //密码验证
    passwordCheck() {
      var passwordRegExp = /^\w{6,}$/;
      if (passwordRegExp.test(this.password)) {
        this.passwordmsg = "*可以注册";
      } else {
        this.passwordmsg = "-登录密码不能少于6个字符。";
      }
      if (this.password.length < 10) {
      }
    },
    password2Check() {
      var password2RegExp = /^\w{6,}$/;
      if (password2RegExp.test(this.password2)) {
        if (this.password2 == this.password) {
          this.password2msg = "*可以注册";
        } else {
          this.password2msg = "-两次输入密码不一致";
        }
      } else {
        this.password2msg = "-登录密码不能少于6个字符。";
      }
    },
    register() {
      if (
        this.usernamemsg == "*可以注册" &&
        this.passwordmsg == "*可以注册" &&
        this.password2msg == "*可以注册" &&
        this.email == "*可以注册"
      ) {
        var obj = `uname=${this.username}&email=${this.email}&upwd=${this.msn}&qq=${this.qq}&office_tele=${this.officeTele}&family=${this.familyTele}&phone=${this.phone}&answer=${this.answer}`;
        this.axios.post("/user/register", obj).then((res) => {
          if (res.data.code == 0) {
            this.usernamemsg = "对不起，用户名已存在";
          } else {
            this.$router.push("/");
          }
        });
      } else {
        alert("请按提示输入");
      }
    },
  },
};
</script>