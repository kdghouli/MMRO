<template >

<p class="py-2">
      Nombre des
      <span class="fw-bolder"
        ><img class="me-1" src="" alt="" style="width: 30px" /> Scooters : </span
      ><span class="badge rounded-pill bg-danger ms-1">{{ scootersMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2 mb-2">
      <ul v-for="scooter in scootersMat" class="list-group" :key="scooter">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-danger mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__heartBeat animate__infinite']:
              scooter.comment.length,
          }"
        >
          <img class="me-1" src="" alt="" style="width: 22px" />
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: scooter.id },
            }"
            >{{ scooter.matricule }}</router-link
          >
          <span
            class="fw-lighter ms-4 me-auto align-bottom text-truncate"
            style="font-size: 12px"
            >{{ scooter.utilisateur }}</span
          ><span class="badge bg-danger rounded-pill" v-if="scooter.comment.length">{{
            scooter.comment.length
          }}</span>
        </li>
      </ul>
    </div>
</template>


<script>
export default {

    props:['scootersMat']

}
</script>
