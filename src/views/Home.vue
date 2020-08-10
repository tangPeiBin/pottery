<template>
  <div>
    <my-header></my-header>
    <div class="body">
      <div class="home">
        <div>
          <nav>
            <ul>
              <li>
                <a href="#">
                  餐桌艺术
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  文房雅具
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  咖啡物语
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  茶禅一味
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  作品收藏
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  酒店白瓷
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  精端产品
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  新品
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
              <li>
                <a href="#">
                  特价产品
                  <span>
                    <img src="../assets/biao8.gif" />
                  </span>
                </a>
              </li>
            </ul>
          </nav>
          <div id="carousel" class="animated backOutUp">
            <img v-for="(img,index) of imgs" :key="index" :src="img" v-show="num==index" />
            <ul class="carouselItem">
              <li v-for="(value,index) of imgs" :key="index" :class="{'selected':num==index}" @mouseover="changeImg(index)" @mouseleave="play" >{{index+1}}</li>
            </ul>
          </div>
        </div>
        <div class="list">
          <div class="fastNews">
            <p>站内快讯</p>
            <ul>
              <li v-for="(v,k) of news" :key="k">
                <a :href="v.link">{{v.title}}</a>
              </li>
            </ul>
          </div>
          <div>
            <div class="recommand">
              <p>
                精品推荐
                <a href="#">
                  更多
                  <img src="../assets/biao17.gif" />
                </a>
              </p>
              <ul>
                <li v-for="(recommand,key) of recommands" :key="key">
                  <router-link :to="recommand.pid">
                    <img :src="recommand.image" />
                    <span>{{recommand.title}}</span>
                  </router-link>
                  <p class="other">
                    市场价：
                    <del>￥{{recommand.price}}元</del>
                  </p>
                  <p>
                    本店价：
                    <span>￥{{recommand.price}}元</span>
                  </p>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="list">
          <div class="recommand">
            <p>
              新品上架
              <a href="#">
                更多
                <img src="../assets/biao17.gif" />
              </a>
            </p>
            <ul>
              <li v-for="(isNew,key) of isNews" :key="key">
                <router-link to="/detail">
                  <img :src="isNew.image" />
                  <span>{{isNew.title}}</span>
                </router-link>
                <p class="other">
                  市场价：
                  <del>￥{{isNew.price}}元</del>
                </p>
                <p>
                  本店价：
                  <span>￥{{isNew.price}}元</span>
                </p>
              </li>
            </ul>
          </div>
        </div>
        <div class="list">
          <div class="recommand">
            <p>
              热卖商品
              <a href="#">
                更多
                <img src="../assets/biao17.gif" />
              </a>
            </p>
            <ul>
              <li v-for="(isOnsale,key) of isOnsales" :key="key">
                <router-link to="/detail">
                  <img :src="isOnsale.image" />
                  <span>{{isOnsale.title}}</span>
                </router-link>
                <p class="other">
                  市场价：
                  <del>￥{{isOnsale.price}}元</del>
                </p>
                <p>
                  本店价：
                  <span>￥{{isOnsale.price}}元</span>
                </p>
              </li>
            </ul>
          </div>
        </div>
        <div class="list">
          <div class="recommand">
            <p>
              精端产品
              <a href="#">
                更多
                <img src="../assets/biao17.gif" />
              </a>
            </p>
            <ul>
              <li v-for="(seminal,key) of seminals" :key="key">
                <router-link to="/detail">
                  <img :src="seminal.image" />
                  <span>{{seminal.title}}</span>
                </router-link>
                <p class="other">
                  市场价：
                  <del>￥{{seminal.price}}元</del>
                </p>
                <p>
                  本店价：
                  <span>￥{{seminal.price}}元</span>
                </p>
              </li>
            </ul>
          </div>
        </div>
        <div class="list">
          <div class="recommand">
            <p>
              茶禅一味
              <a href="#">
                更多
                <img src="../assets/biao17.gif" />
              </a>
            </p>
            <ul>
              <li v-for="(tea,key) of teas" :key="key">
                <router-link to="/detail">
                  <img :src="tea.image" />
                  <span>{{tea.title}}</span>
                </router-link>
                <p class="other">
                  市场价：
                  <del>￥{{tea.price}}元</del>
                </p>
                <p>
                  本店价：
                  <span>￥{{tea.price}}元</span>
                </p>
              </li>
            </ul>
          </div>
        </div>
        <div class="list">
          <div class="recommand">
            <p>
              餐桌艺术
              <a href="#">
                更多
                <img src="../assets/biao17.gif" />
              </a>
            </p>
            <ul>
              <li v-for="(table,key) of tables" :key="key">
                <router-link to="/detail">
                  <img :src="table.image" />
                  <span>{{table.title}}</span>
                </router-link>
                <p class="other">
                  市场价：
                  <del>￥{{table.price}}元</del>
                </p>
                <p>
                  本店价：
                  <span>￥{{table.price}}元</span>
                </p>
              </li>
            </ul>
          </div>
        </div>
        <div class="list">
          <div class="recommand">
            <p>
              文房雅具
              <a href="#">
                更多
                <img src="../assets/biao17.gif" />
              </a>
            </p>
            <ul>
              <li v-for="(room,key) of rooms" :key="key">
                <router-link to="/detail">
                  <img :src="room.image" />
                  <span>{{room.title}}</span>
                </router-link>
                <p class="other">
                  市场价：
                  <del>￥{{room.price}}元</del>
                </p>
                <p>
                  本店价：
                  <span>￥{{room.price}}元</span>
                </p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<style scoped>
.body {
  background-color: #f5f5f5;
  padding-bottom: 1px;
}
.home {
  width: 75rem;
  margin: 0 auto;
}
.home > div:first-child {
  display: flex;
  margin-bottom: 2rem;
}
/*侧边导航样式*/
nav {
  width: 12.75rem;
}
nav > ul > li + li {
  border-top: 1px dotted #ccc;
}
nav > ul > li > a {
  display: inline-block;
  width: 11.75rem;
  height: 3rem;
  font-size: 0.9375rem;
  font-weight: bold;
  background-color: #fff;
  padding-left: 1rem;
  line-height: 3rem;
  color: #000;
  text-decoration: none;
}
nav > ul > li > a:hover {
  color: #f70;
  background-color: rgba(192, 192, 192, 0.1);
}
nav > ul > li > a > span {
  float: right;
  margin-right: 1rem;
  margin-top: 0.4rem;
  font-size: 0.5rem;
  color: #f70;
}
/*轮播图*/
#carousel {
  width: 62.25rem;
  height: 27.5rem;
  position:relative;
}
#carousel > img {
  width: 100%;
  height: 100%;
}
.list {
  margin-bottom: 1rem;
  border: 1px solid #ddd;
  display: flex;
}
/*动画*/

/*items*/
.carouselItem{
  position:absolute;
  display:flex;
  left:50%;
  margin-left:-2.3rem;
  bottom:.5rem;
}
.carouselItem>li{
  width:1rem;
  height:1rem;
  border:1px solid #f70;
  background:#fff;
  color:#f70;
  text-align: center;
  line-height:1rem;
}
.carouselItem>li+li{
  margin-left:.2rem;
}
.carouselItem>li:hover{
  cursor: pointer;
}
.carouselItem>.selected{
  height:1.2rem;
  background:#f70;
  color:#fff;
  font-weight:bold;
  margin-top:-.2rem;
}


/*站内快讯*/
.fastNews {
  width: 14.5rem;
  background-color: #fafafa;
}
.fastNews > p {
  font-size: 0.875rem;
  font-weight: bold;
  padding: 0.5rem 0.25rem;
}
.fastNews > ul {
  background-color: #fff;
  padding: 1rem;
  border: 0.5px solid #f5f5f5;
}
.fastNews > ul > li {
  padding: 0.5rem 0;
}
.fastNews > ul > li > a {
  color: #666;
  text-decoration: none;
  display: inline-block;
  height: 0.75rem;
  overflow: hidden;
}
.fastNews > ul > li > a:hover {
  color: #f70;
}
.fastNews + div {
  width: 60.5rem;
}
/*精品推荐*/
.recommand {
  width: 100%;
  background-color: #fafafa;
}
.recommand > p {
  height: 2.5rem;
  font-size: 0.875rem;
  font-weight: bold;
  line-height: 2.5rem;
  padding-left: 0.5rem;
  background-color: #f5f5f5;
}
.recommand > p > a {
  float: right;
  margin-right: 1rem;
  color: #000;
  font-weight: normal;
  text-decoration: none;
}
.recommand > p > a > img {
  position: relative;
  left: 0.2rem;
  top: 0.2rem;
}
.recommand > p > a:hover {
  color: #f70;
}
.recommand > ul {
  display: flex;
  width: 100%;
}
.recommand > ul > li {
  margin: 1rem 0 1rem 1rem;
  width: 13.8rem;
}
.recommand > ul > li > a {
  text-decoration: none;
}
.recommand > ul > li > a > span {
  display: inline-block;
  font-size: 0.75rem;
  color: #000;
  padding: 0.5rem 0;
}
.recommand > ul > li > a > img {
  width: 100%;
  border: 1px solid #ddd;
}
.recommand > ul > li > p {
  color: #666;
}
.recommand > ul > li > p > span {
  color: #f70;
  font-weight: bold;
}
.recommand > ul > li > p.other {
  margin-bottom: 0.5rem;
}
</style>
<script>
export default {
  data() {
    return {
      num: 0,
      imgs: [
        require("../assets/banner1.jpg"),
        require("../assets/banner2.jpg"),
        require("../assets/banner3.jpg"),
        require("../assets/banner4.jpg"),
      ],
      news: [
        {
          title: '景德镇陶瓷集团"双11"营销活动方案',
          link: "#",
        },
        {
          title: "关于春节期间物流停运的通知",
          link: "#",
        },
        {
          title: "6月端午节促销活动",
          link: "#",
        },
        {
          title: "庆五一迎五四红叶亲情回馈",
          link: "#",
        },
        {
          title: "景德镇红叶陶瓷股份有限公司召开2013经济工作会",
          link: "#",
        },
      ],
      recommands: [],
      isNews: [],
      isOnsales: [],
      seminals: [],
      teas: [],
      tables: [],
      rooms: [],
      timer:{}
    };
  },
  mounted() {
    this.play();
    this.search(10);
    this.isNew(1);
    this.isOnsale(1);
    this.searchS(80);
    this.searchT(230);
    this.searchTb(20);
    this.searchRoom(40);
  },
  methods: {
    autoPlay: function () {
      const _self = this;
      _self.num++;
      if (_self.num == this.imgs.length) {
        _self.num = 0;
      }
    },
    play: function () {
      this.timer=setInterval(this.autoPlay, 3000);
    },
    changeImg(key){
      this.num=key;
      clearInterval(this.timer);
    },
    search(id) {
      this.axios.get("/product/recommand?id=" + id).then((res) => {
        let data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          item.price = item.price.toFixed(1);
          item.pid = "/detail/" + item.pid;
          this.recommands.push(item);
        });
      });
    },
    isNew(isNew) {
      this.axios.get("/product/new?isNew=" + isNew).then((res) => {
        let data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          item.price = item.price.toFixed(1);
          this.isNews.push(item);
        });
      });
    },
    isOnsale(isOnsale) {
      this.axios.get("/product/onsale?isOnsale=" + isOnsale).then((res) => {
        let data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          item.price = item.price.toFixed(1);
          this.isOnsales.push(item);
        });
      });
    },
    searchS(id) {
      this.axios.get("/product/recommand?id=" + id).then((res) => {
        let data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          item.price = item.price.toFixed(1);
          this.seminals.push(item);
        });
      });
    },
    searchT(id) {
      this.axios.get("/product/recommand?id=" + id).then((res) => {
        let data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          item.price = item.price.toFixed(1);
          this.teas.push(item);
        });
      });
    },
    searchTb(id) {
      this.axios.get("/product/recommand?id=" + id).then((res) => {
        let data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          item.price = item.price.toFixed(1);
          this.tables.push(item);
        });
      });
    },
    searchRoom(id) {
      this.axios.get("/product/recommand?id=" + id).then((res) => {
        let data = res.data;
        data.forEach((item) => {
          item.image = require("../assets/" + item.image);
          item.price = item.price.toFixed(1);
          this.rooms.push(item);
        });
      });
    },
  },
};
</script>
