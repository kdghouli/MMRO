<template>
    <div class="row">
        <nav-bar />
    </div>

    <div class="row p-3">
        <!-- <router-view v-slot="{ Component }">
            <transition name="fade">
                <component :is="Component" />
            </transition>
        </router-view> -->

        <router-view></router-view>
    </div>

    <div class="row">
        <Footer />
    </div>
</template>

<script>
import NavBar from "./components/layout/NavBar.vue";
import SideBar from "./components/layout/SideBar.vue";
import Footer from "./components/layout/Footer.vue";

export default {
    name: "App",
    components: {
        NavBar,
        SideBar,
        Footer,
    },
};
</script>

<style>
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.5s;
}
.fade-enter,
.fade-leave-active {
    opacity: 0;
}
</style>
