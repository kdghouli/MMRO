import { createRouter, createWebHistory } from "vue-router";

import Camion from "../views/vhl/category/Camion.vue";
import Voiture from "../views/vhl/category/Voiture.vue";
import Scooter from "../views/vhl/category/Scooter.vue";
import Chariot from "../views/vhl/category/Chariot.vue";
import MasterView from "../components/MasterView.vue"




import OneVhlView from "../views/vhl/OneVhlView.vue";





const routes = [
    {
        path: "/",
        name: "master-view",
        component: MasterView,
    },

    {
        path: "/camions",
        name: "camion",
        component: Camion,
    },
    {
        path: "/voitures",
        name: "voiture",
        component: Voiture,
    },
    {
        path: "/scooters",
        name: "scooter",
        component: Scooter,
    },
    {
        path: "/chariots",
        name: "chariot",
        component: Chariot,
    },

    {
        path: "/:id",
        name: "OneVhlView",
        component: OneVhlView,
    },





];

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes,
});

export default router;
