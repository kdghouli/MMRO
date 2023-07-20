<template>
  <div>

  <!-- search -->
  <div class="bg-warning m-1" v-if=base.filteredData>
  <ul class="list-group list-group-flush ">

  <li v-for="search in base.filteredData" :key="index" class="list-group-item list-group-item-action d-flex justify-content-between align-items-start"  >
    <div class="ms-2 me-auto">
      <div class="fw-bold h5"><router-link
            class="text-decoration-none text-warning"
            :to="{ name: 'OneVhlView', params: { id: search.id } }"
            >{{ search.matricule }}
          </router-link></div>
      {{search.categorie.name}} à {{ search.agence.name }} :----> {{ search.utilisateur }}
    </div>
    <span class="badge bg-warning rounded-pill">{{ search.intitule.name}}</span>
  </li>
</ul>

  </div>


 <!-- selected -->

    <div class="row mt-4 justify-content-center">
      <h3 class="col-md-3 offset-md-1 fw-bolder">Liste de Parc :</h3>
      <div class="col-4 ">
        <select class="form-select" v-model="Selected" @click="filterMatricule">
          <option value="0" selected>Tous</option>
          <option v-for="agence in agencaList" :key="agence" :value="agence[0]">
            {{ agence[1] }}
          </option>
        </select>
      </div>
    </div>

    <!-- Camions -->

    <listCamions :camionsMat="camionsMat"> </listCamions>


    <hr />

    <!-- Voitures -->
    <listVoitures :voituresMat="voituresMat"> </listVoitures>

    <hr />

    <!-- Chariots -->

    <listManutentions :chariotsMat="chariotsMat"></listManutentions>

    <!-- Scooters -->
    <listScooters :scootersMat="scootersMat"></listScooters>


 <!-- Autre -->

 <p class="py-2">
      Nombre des
      <span class="fw-bolder"
        ><img class="me-1" src="" alt="" style="width: 30px" /> Autres engins : </span
      ><span class="badge rounded-pill bg-success ms-1">{{ autreMat.length }}</span>
    </p>

    <div class="row row-cols-lg-3 row-cols-md-2 mb-2">
      <ul v-for="autre in autreMat" class="list-group" :key="autre">
        <li
          class="list-group-item list-group-item-action d-flex justify-content-between align-items-center list-group-item-success mb-1 shadow-sm"
          :class="{
            ['bg-danger fw-bold text-white animate__animated animate__heartBeat animate__infinite']:
            autre.comment.length,
          }"
        >
          <img class="me-1" src="" alt="" style="width: 22px" />
          <router-link
            class="text-decoration-none"
            :to="{
              name: 'OneVhlView',
              params: { id: autre.id },
            }"
            >{{ autre.matricule }}</router-link
          >
          <span
            class="fw-lighter ms-4 me-auto align-bottom text-truncate"
            style="font-size: 12px"
            >{{ autre.utilisateur }}</span
          ><span class="badge bg-danger rounded-pill" v-if="autre.comment.length">{{
            autre.comment.length
          }}</span>
        </li>
      </ul>
    </div>

    <!-- ------modal -->

     <CreationVhlModal :agencaList="agencaList" :intituleListe="intituleListe" :statusList="statusList"/>
    <!-- <div
      class="modal fade"
      id="staticBackdrop"
      data-bs-backdrop="static"
      data-bs-keyboard="false"
      tabindex="-1"
      aria-labelledby="staticBackdropLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title text-success fw-bolder" id="staticBackdropLabel">
              Création Véhicule sur la base
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body">
            <form @submit.prevent="createVhl()">
              <div class="row">
                <div class="col-6 mb-2">
                  <label for="matricule" class="form-label fw-bolder">Matricule</label>
                  <input type="text" class="form-control" v-model="matriculeIn" />
                </div>
                <div class="col-6 mb-2">
                  <label for="marque" class="form-label fw-bolder">Marque</label>
                  <input type="text" class="form-control" v-model="marqueIn" />
                </div>
              </div>
              <div class="row">
                <div class="col-4 mb-2">
                  <label for="categorie" class="form-label fw-bolder">Catégorie</label>
                  <select class="form-select fs-5" name="" id="" v-model="categorieIn">
                    <option value="1">Camion</option>
                    <option value="2">Voiture</option>
                    <option value="3">Scooter</option>
                    <option value="4">Chariot</option>
                    <option value="5">Autre</option>
                  </select>
                </div>
                <div class="col-8 mb-2">
                  <label for="agence" class="form-label fw-bolder">Agence</label>

                  <select
                    class="form-select fs-5"
                    aria-label="Default select example"
                    v-model="agenceIn"
                  >
                    <option v-for="agence in agencaList" :key="agence" :value="agence[0]">
                      {{ agence[1] }}
                    </option>
                  </select>
                </div>
              </div>

              <div class="row">
                <div class="col-4 mb-2">
                  <label for="date_mc" class="form-label fw-bolder">Date MC</label>
                  <input type="date" class="form-control" v-model="dateIn" />
                </div>
                <div class="col-8 mb-2">
                  <label for="intitule" class="form-label fw-bolder">Propriétaire</label>
                  <select
                    class="form-select fs-5"
                    aria-label="Default select example"
                    v-model="intituleIn"
                  >
                    <option
                      v-for="intitule in intituleListe"
                      :key="intitule"
                      :value="intitule[0]"
                    >
                      {{ intitule[1] }}
                    </option>
                  </select>
                </div>
              </div>

              <div class="col mb-2">
                <label for="statu" class="form-label fw-bolder">Etat Acuel</label>
                <select
                  class="form-select fs-5"
                  aria-label="Default select example"
                  v-model="statuIn"
                >
                  <option v-for="statu in statusList" :key="statu" :value="statu[0]">
                    {{ statu[1] }}
                  </option>
                </select>
              </div>
              <div class="col mb-4">
                <label for="utilisateur" class="form-label fw-bolder">Utilisateur</label>
                <input type="text" class="form-control" v-model="utilisateurIn" />
              </div>

              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                  Fermer
                </button>
                <button type="submit" class="btn btn-primary" data-bs-dismiss="modal">
                  Enregistrer
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div> -->

    <!-- fin Modal -->
  </div>
</template>

<script>

import { useBasesStore} from "../store/bases.js";
import listCamions from "../components/camions/listCamions.vue";
import listVoitures from "../components//voitures/listVoitures.vue"
import listManutentions from "../components//manutentions/listManutentions.vue"
import listScooters from "../components//scooters/listScooters.vue"
import CreationVhlModal from "./CreationVhlModal.vue";

export default {
    components:{listCamions,listVoitures,listManutentions,listScooters,CreationVhlModal},
  data() {
    return {
      base: useBasesStore(),
      agences: useBasesStore().agences,
      camionsMat: {},
      voituresMat: {},
      scootersMat: {},
      chariotsMat: {},
      autreMat:{},
      CommentsDb: useBasesStore().commentaires,
      Selected: 0,
      agenca: {},
      statu_id:"",
      vhl_id:'',

    statusList: '',
    intituleListe: '',
    agencaList: ''


    //   matriculeIn: "",
    //   marqueIn: "",
    //   dateIn: "",
    //   agenceIn: "",
    //   statuIn: "",
    //   intituleIn: "",
    //   categorieIn: "",
    //   utilisateurIn: "",

    };
  },

  methods: {




    // createVhl() {

    //   console.log("createVhl");
    //   const vhl = this;
    //   axios
    //     .post("/creata", {
    //     matricule: this.matriculeIn,
    //     marque: this.marqueIn,
    //     date_mc: this.dateIn,
    //     agence_id: this.agenceIn,
    //     statu_id: this.statuIn,
    //     intitule_id: this.intituleIn,
    //     categorie_id: this.categorieIn,
    //     utilisateur: this.utilisateurIn,
    //      },{headers:{ 'Content-Type': 'application/json'}})
    //     .then((res) => {
    //       console.log(res);
    //     }).then(
    //         ()=>{
    //     this.matriculeIn='',
    //     this.marqueIn='',
    //     this.dateIn='',
    //     this.agenceIn='',
    //     this.statuIn='',
    //     this.intituleIn='',
    //     this.categorieIn='',
    //     this.utilisateurIn=''
    //         }
    //     )
    //     .then(() => this.$router.push("/"))
    //     .catch((err) => console.log(err.message));

    //   console.log("createVhl - ok");

    // },
    // calcComments(ddd) {
    //   const nbComments = this.CommentsDb.filter((sel) => sel.vhl_id == ddd);
    //   return nbComments.length;
    // },
  },

  computed: {
    filterMatricule() {
      console.log("SelectedMatricule");
      if (this.Selected == "0") {
        this.camionsMat = this.base.getCamions;
        this.voituresMat = this.base.getVoitures;
        this.scootersMat = this.base.getScooters;
        this.chariotsMat = this.base.getChariots;
        this.autreMat = this.base.getAutres
      } else {
        (this.camionsMat = this.base.getCamions.filter(
          (x) => x.agence_id == this.Selected
        )),
          (this.voituresMat = this.base.getVoitures.filter(
            (x) => x.agence_id == this.Selected
          )),
          (this.chariotsMat = this.base.getChariots.filter(
            (x) => x.agence_id == this.Selected
          )),
          (this.scootersMat = this.base.getScooters.filter(
            (x) => x.agence_id == this.Selected
          ));
      }
},
     //...mapWritableState(useBasesStore, {searchValue: 'searchIn'}),

// searchValue()
// {
//     return this.base.searchIn

//       // this.CommentsDb = this.db.comments
//     },

    // getListStatus() {
    //   console.log("getListStatus");
    //   this.vhl_id = this.$route.params.id;
    //   const lista = new Map();
    //   this.base.status.forEach((x) => lista.set(x.id, x.etat));
    //   this.statusList = Array.from(lista);
    //   return console.log(this.statusList);
    // },

    // async getListAgences() {
    //   console.log("getListAgences");
    //   const respAg = await axios.get("/api/agences");
    //   this.agenca = respAg.data;
    //   const agences = new Map();
    //   this.agenca.forEach((x) => agences.set(x.id, x.nom));
    //   this.agencaList = Array.from(agences);
    //   return console.log(this.agencaList);
    // },

    },




   async mounted() {
    Swal.fire(
  'Bien sûr!',
  'Vous êtes le bienvenu pour la liberté de visiter. !',
  'success'
)


    await this.base.fetchBase();
    await this.base.fetchComments();
    await this.base.fetchIntitules();
    await this.base.fetchStatus();
    await this.base.fetchAgences();
    

    this.filterMatricule;



   this.statusList= useBasesStore().optionStatus;
   this.intituleListe= useBasesStore().optionIntitules;
    this.agencaList= useBasesStore().optionAgences

  },
};
</script>
<style></style>
