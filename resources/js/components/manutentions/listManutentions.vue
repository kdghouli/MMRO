<template >
 <p class="pt-2">
      Nombre des
      <span class="fw-bolder"
        ><img class="me-1" src="images/forklift.png" alt="" style="width: 34px" /> Chariots
      </span>
      <span class="badge rounded-pill bg-warning ms-1">{{ chariotsMat.length }} </span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="chariot in chariotsMat" class="list-group" :key="chariot">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-warning mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-light ']:
              chariot.statu_id!==1,
          }"
        >
          <img class="me-2" src="images/forklift.png" alt="" style="width: 24px" />
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: chariot.id },
            }"
            >{{ chariot.matricule }}</router-link
          >
          <span
            class="fw-lighter ms-4 me-auto align-bottom text-truncate"
            style="font-size: 11px"
            >{{ chariot.marque }}</span>
            <div id="about_small" >
  {{ chariot.agence.name }}
</div>
<div id="about_big">
  {{ chariot.date_mc }}
</div>
<img v-if="chariot.statu_id==2" src="images/1x/statu_2.png" style="width: 30px; z-index: 10;" class=" ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="chariot.statu_id==3" src="images/1x/statu_3.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slower animate__infinite" alt="">
         <img v-else-if="chariot.statu_id==4" src="images/1x/statu_4.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="chariot.statu_id==5" src="images/1x/statu_5.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__fadeIn animate__fast animate__infinite" alt="">




        </li>
      </ul>
    </div>
    <hr />






</template>


<script>
export default {
props:['chariotsMat']
}
</script>
