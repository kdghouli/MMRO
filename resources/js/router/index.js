import { createRouter, createWebHistory } from "vue-router";

import Camion from "../views/category/Camion.vue";
import Voiture from "../views/category/Voiture.vue";
import Scooter from "../views/category/Scooter.vue";
import Chariot from "../views/category/Chariot.vue";
import MasterView from "../views/MasterView.vue";
import Contrats from "../components/contrats/listContrats.vue"
import Accidents from "../components/accidents/listAccidents.vue"
import Anomalies from "../views/Anomalies.vue";

import OneVhlView from "../views/OneVhlView.vue";
import Papiers from "../views/Papiers.vue";




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
    }, {
        path: "/papiers",
        name: "papiers",
        component: Papiers,
    }, {
        path: "/contrats",
        name: "contrats",
        component: Contrats,
    }, {
        path: "/accidents",
        name: "accidents",
        component: Accidents,
    },

    {
        path: "/anomalies",
        name: "anomalies",
        component: Anomalies,
    }



];

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes,
});

export default router;
