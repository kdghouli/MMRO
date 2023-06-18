require('./bootstrap');
window.Vue = require('vue');

import "bootstrap/dist/css/bootstrap.min.css"
import "./bootstrap" ;
import 'bootswatch/dist/sandstone/bootstrap.min.css'; // Added this :boom:
import 'animate.css';



//----start-----Sweetalert2------
 import Swal from 'sweetalert2';
 import 'sweetalert2/dist/sweetalert2.min.css';
window.Swal = Swal              //--for 'globally' use

const Toast = Swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000,
  timerProgressBar: true,
  onOpen: (toast) => {
    toast.addEventListener('mouseenter', Swal.stopTimer)
    toast.addEventListener('mouseleave', Swal.resumeTimer)
  }
})

window.Toast = Toast;       //--for 'globally' use
//----End-----Sweetalert2------------//------



import "lodash";

import Vue3EasyDataTable from 'vue3-easy-data-table';
import 'vue3-easy-data-table/dist/style.css';

//Vue 3

import{createApp} from "vue";
import { createPinia } from 'pinia';
import router from "./router";
import App from './App.vue';
//import PostIndex from "./components/PostIndex.vue";

//Axios
import axios from 'axios';
import VueAxios from 'vue-axios';


createApp(App)
.component('EasyDataTable', Vue3EasyDataTable)
.use(router)
.use(createPinia())

.use(VueAxios, axios)
.mount('#app');

// end Vue 3
