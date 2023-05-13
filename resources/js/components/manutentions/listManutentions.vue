<template >
 <p class="pt-2">
      Nombre des
      <span class="fw-bolder"
        ><img class="me-1" src="" alt="" style="width: 30px" /> Chariots
      </span>
      <span class="badge rounded-pill bg-warning ms-1">{{ chariotsMat.length }} </span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2">
      <ul v-for="chariot in chariotsMat" class="list-group" :key="chariot">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-warning mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__headShake animate__infinite']:
              chariot.comment.length,
          }"
        >
          <img class="me-1" src="" alt="" style="width: 22px" />
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: chariot.matricule },
            }"
            >{{ chariot.matricule }}</router-link
          >
          <span
            class="fw-lighter ms-4 me-auto align-bottom text-truncate"
            style="font-size: 11px"
            >{{ chariot.marque }}</span
          ><span class="badge bg-warning rounded-pill" v-if="chariot.comment.length">{{
            chariot.comment.length
          }}</span>
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
