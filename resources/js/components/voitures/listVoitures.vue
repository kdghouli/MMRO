<template >
<p class="pt-2">
      Nombre des <span class="fw-bolder"> Voitures: </span
      ><span class="badge rounded-pill bg-primary ms-1">{{ voituresMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="voiture in voituresMat" class="list-group" :key="voiture">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-primary mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__headShake animate__infinite']:
              voiture.comment.length,
          }"
        >
          <i class="bi bi-car-front-fill text-primary fs-5 me-1"></i>
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: voiture.id },
            }"
            >{{ voiture.matricule }}</router-link
          >
          <span class="fw-lighter ms-2" style="font-size: 11px"
            >{{ voiture.type }}&nbsp;&nbsp;&nbsp;&nbsp;{{ voiture.utilisateur }}</span
          >
          <span class="badge bg-primary rounded-pill" v-if="voiture.comment.length">{{
            voiture.comment.length
          }}</span>
        </li>
      </ul>
    </div>

</template>



<script>
export default {
    props:['voituresMat'],
}
</script>
