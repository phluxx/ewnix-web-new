import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '@/components/Home.vue'
import About from '@/components/About.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/', component: Home },
  { path: '/about', component: About }
]

const router = new VueRouter({
  routes
})

export default router

