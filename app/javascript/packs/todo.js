import Vue from 'vue/dist/vue.esm.js' /*コンポーネントを使用する際に完全ビルドする必要があるから？*/
import Router from './router/router'
import Header from './components/header.vue'


var app = new Vue({
  router: Router,
  el: '#app',
  components: {
    'navbar': Header,
  }
});