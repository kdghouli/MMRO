<template >
  <!-- Camions -->

  <p class="pt-2">
      Nombre des
      <span class="fw-bolder"
        ><span><i class="bi bi-truck text-success fs-4"></i></span> Camions: </span
      ><span class="badge rounded-pill bg-success ms-1">
        {{ camionsMat.length }}
      </span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="camion in camionsMat" class="list-group" :key="camion">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-success mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-light h5 ']:
              camion.statu_id!==1,
          }"
        >
          <i class="bi bi-truck fs-5 me-1"></i>
          <router-link
            class="link-opacity-50-hover text-decoration-none  fw-bold "
            :class="{
            ['link-light link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover ']:
              camion.statu_id!==1,
          }"
            :to="{ name: 'OneVhlView', params: { id: camion.id } }"
            >{{ camion.matricule }}
          </router-link>
          <span class="fw-lighter ms-4 me-auto align-bottom">{{
            camion.intitule.nom?camion.intitule.nom:"ok"
          }}</span>
         <img v-if="camion.statu_id==2" src="images/1x/statu_2.png" style="width: 32px;" class="animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="camion.statu_id==3" src="images/1x/statu_3.png" style="width: 32px;" class="animate__animated animate__headShake animate__slower animate__infinite" alt="">
         <img v-else-if="camion.statu_id==4" src="images/1x/statu_4.png" style="width: 32px;" class="animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="camion.statu_id==5" src="images/1x/statu_5.png" style="width: 32px;" class="animate__animated animate__fadeIn animate__fast animate__infinite" alt="">

        </li>

      </ul>
    </div>


</template>





<script>
export default {
    props:['camionsMat'],

}
</script>

