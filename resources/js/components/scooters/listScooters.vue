<template >
    <p class="py-2">
        Nombre des
        <span class="fw-bolder"><img class="me-1" src="images/scooter.png" alt="" style="width: 30px" /> Scooters : </span><span
            class="badge rounded-pill bg-danger ms-1">{{ scootersMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2 mb-2">
        <ul v-for="scooter in scootersMat" class="list-group" :key="scooter">
            <li class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-danger mb-1 shadow-sm"
            :class="{
            ['bg-danger fw-bold text-light ']:
              scooter.statu_id!==1
          }">
                <img class="me-3" src="images/scooter.png" alt="" style="width: 22px" />
                <router-link class="text-decoration-none" :to="{
                    name: 'OneVhlView',
                    params: { id: scooter.id },
                }">{{ scooter.matricule }}</router-link>
                <span class="fw-lighter ms-4 me-auto align-bottom text-truncate" style="font-size: 14px">{{
                    scooter.utilisateur }}</span>
                <div id="about_small">
                    {{ scooter.agence.name }}
                </div>
                <div id="about_big">
                    {{ scooter.date_mc }}
                </div>
                <img v-if="scooter.statu_id==2" src="images/1x/statu_2.png" style="width: 30px; z-index: 10;" class=" ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="scooter.statu_id==3" src="images/1x/statu_3.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slower animate__infinite" alt="">
         <img v-else-if="scooter.statu_id==4" src="images/1x/statu_4.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__headShake animate__slow animate__infinite" alt="">
         <img v-else-if="scooter.statu_id==5" src="images/1x/statu_5.png" style="width: 30px; z-index: 10;" class="ms-auto animate__animated animate__fadeIn animate__fast animate__infinite" alt="">
            </li>
        </ul>
    </div>
</template>


<script>
export default {

    props: ['scootersMat']

}
</script>
