require('./bootstrap');


//import "bootstrap/dist/css/bootstrap.min.css"
//import "./bootstrap" ;
import 'bootswatch/dist/flatly/bootstrap.min.css'; // Added this :boom:
import 'animate.css';




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
