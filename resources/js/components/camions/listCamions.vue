<template >
  <!-- Camions -->

  <p class="pt-2">
      Nombre des &MediumSpace;
      <span class="fw-bolder"
        ><span><i class="bi bi-truck"></i></span> Camions: </span
      ><span class="badge rounded-pill bg-success ms-1">
        {{ camionsMat.length }}
      </span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2" data-bs-theme="light">
      <ul v-for="camion in camionsMat" class="list-group" :key="camion">
        <li
          class="list-group-item list-group-item-action list-group-item-success d-flex justify-content-between align-items-center mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-light ']:
              camion.statu_id!==1,
          }"
        >
          <i class="bi bi-truck text-dark me-2"></i>
          <router-link
            class="link-opacity-50-hover text-decoration-none fw-bold "
            :class="{
            ['link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover ']:
              camion.statu_id!==1,
          }"
            :to="{ name: 'OneVhlView', params: { id: camion.id } }"
            >{{ camion.matricule }}
          </router-link>
          <span class="fw-lighter ms-4 me-auto align-bottom">{{
            camion.intitule.name?camion.intitule.name:"ok"
          }}</span>

          <div id="about_small" >
  {{ camion.agence.name }}
</div>
<div id="about_big">
  {{ camion.marque.toUpperCase() }}
</div>
          <img v-if="camion.statu_id==2" src="images/1x/statu_2.png" style="width: 30px; z-index: 10;" class=" ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="camion.statu_id==3" src="images/1x/statu_3.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slower animate__infinite" alt="">
         <img v-else-if="camion.statu_id==4" src="images/1x/statu_4.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="camion.statu_id==5" src="images/1x/statu_5.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__fadeIn animate__fast animate__infinite" alt="">
        </li>

      </ul>
    </div>


</template>





<script>
export default {
    props:['camionsMat'],

}
</script>



<style scoped>
.about_box {
  z-index: 5;

  position: relative;

  overflow: hidden;
}

#about_small {
  z-index: 2;
  position: relative;
  top: 0;
  left: 0;

}

#about_big {
  z-index: 3;
  font-family: Arial;
  font-size: 32px;
  color: rgba(250, 250, 250, 0.247);
  overflow: hidden;
  font-weight:bold;
  bottom: -28%;
  right: 2px;

  position: absolute;
}
</style>
