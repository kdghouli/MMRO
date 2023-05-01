<template>
  <h1> Camions</h1>

<div  v-for="(visite, index) in visites" :key="index">{{ visite.image }}

<img  :src="`/storage/${visite.image}`"  class="img-fluid" >
</div>


</template>

<script>

export default {

    data(){
        return{
            visites:{}
        }
    },

    methods:{


        async fetchVisites() {

try {
    console.log('"fetchVisites - BasesPinia"')
    const resp = await axios.get("/api/visite")
    this.visites = resp.data;
    console.log(this.visites)
} catch (error) {
    console.log(error)

}
}
    },
    mounted() {
        this.fetchVisites()
    },

};
</script>
