<template >
<p class="pt-2">
      Nombre des <span class="fw-bolder"><i class="bi bi-car-front-fill text-primary"></i> Voitures: </span>
      <span class="badge rounded-pill bg-primary ms-1">{{ voituresMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2 about_box">
      <ul v-for="voiture in voituresMat" class="list-group" :key="voiture">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-start  list-group-item-primary mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white']:
            voiture.statu_id!==1,
          }"
        >
          <i class="bi bi-car-front-fill text-dark me-2"></i>
          <router-link
            class="link-opacity-50-hover text-decoration-none fw-bold me-2"
            :to="{
              name: 'OneVhlView',
              params: { id: voiture.id },
            }"
            >{{ voiture.matricule }}</router-link
          >


<div id="about_small" >
  {{ voiture.utilisateur }}
</div>
<div id="about_big">
  {{ voiture.marque.toUpperCase() }}
</div>




         <img v-if="voiture.statu_id==2" src="images/1x/statu_2.png" style="width: 30px; z-index: 10;" class=" ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="voiture.statu_id==3" src="images/1x/statu_3.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slower animate__infinite" alt="">
         <img v-else-if="voiture.statu_id==4" src="images/1x/statu_4.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="voiture.statu_id==5" src="images/1x/statu_5.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__fadeIn animate__fast animate__infinite" alt="">
        </li>
      </ul>
    </div>

</template>



<script>
export default {
    props:['voituresMat'],
}
</script>


<style>
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
  color: rgba(255, 255, 255, 0.2);
  overflow: hidden;
  font-weight:bold;
  bottom: -33%;
  right: 2px;

  position: absolute;
}
</style>
