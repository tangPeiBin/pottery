import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import MintUi from 'mint-ui'
import 'mint-ui/lib/style.min.css'
import axios from 'axios'
import Header from './components/Header'
import Footer from './components/Footer'

Vue.use(MintUi)
Vue.component('my-header',Header)
Vue.component('my-footer',Footer)
Vue.config.productionTip = false
axios.defaults.baseURL='http://127.0.0.1:3000'
Vue.prototype.axios=axios

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
