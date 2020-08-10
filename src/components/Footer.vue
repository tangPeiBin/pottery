<template>
  <footer>
    <ul>
      <li>
        <a href="#">公司简介</a>
      </li>
      <li>
        <a href="#">批发方案</a>
      </li>
      <li>
        <a href="#">配送方式</a>
      </li>
    </ul>
    <div>
      <img src="../assets/aftersale.png" />
    </div>
    <p>
      © 2005-2020 日用陶瓷-景德镇陶瓷网 版权所有，并保留所有权利。ICP备案证书号：
      <a href="#">赣ICP备19001325号</a>
    </p>
    <ul>
      <li>服务时间：09:00-21:00</li>
      <li>
        客服热线：
        <strong>400-006-2221</strong>
      </li>
    </ul>
  </footer>
</template>
<style scoped>
/*尾部样式*/
footer {
  margin: 0 auto;
  width: 37.5rem;
}
footer > ul {
  display: flex;
  justify-content: center;
}
footer > ul > li {
  margin: 1.25rem 1.25rem;
}
footer > ul > li > a {
  text-decoration: none;
  color: #000;
}
footer > ul > li > a:hover {
  color: #f70;
}
footer > p {
  margin-top: 0.625rem;
}
footer > p > a {
  color: #000;
  text-decoration: none;
}
footer > p > a:hover {
  color: #f70;
}
footer > ul > li > strong {
  font-weight: bold;
  font-size: 0.875rem;
}
</style>