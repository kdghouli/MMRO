<template lang="">


    <div
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
                    <h5
                        class="modal-title text-success fw-bolder"
                        id="staticBackdropLabel"
                    >
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
                                <label
                                    for="matricule"
                                    class="form-label fw-bolder"
                                    >Matricule</label
                                >
                                <input
                                    type="text"
                                    class="form-control"
                                    v-model="matriculeIn"
                                />
                            </div>
                            <div class="col-6 mb-2">
                                <label for="marque" class="form-label fw-bolder"
                                    >Marque</label
                                >
                                <input
                                    type="text"
                                    class="form-control"
                                    v-model="marqueIn"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4 mb-2">
                                <label
                                    for="categorie"
                                    class="form-label fw-bolder"
                                    >Catégorie</label
                                >
                                <select
                                    class="form-select fs-5"
                                    name=""
                                    id=""
                                    v-model="categorieIn"
                                >
                                    <option value="1">Camion</option>
                                    <option value="2">Voiture</option>
                                    <option value="3">Scooter</option>
                                    <option value="4">Chariot</option>
                                    <option value="5">Autre</option>
                                </select>
                            </div>
                            <div class="col-8 mb-2">
                                <label for="agence" class="form-label fw-bolder"
                                    >Agence</label
                                >
                                <select
                                    class="form-select fs-5"
                                    aria-label="Default select example"
                                    v-model="agenceIn"
                                >
                                    <option
                                        v-for="agence in agencaList"
                                        :key="agence"
                                        :value="agence[0]"
                                    >
                                        {{ agence[1] }}
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4 mb-2">
                                <label
                                    for="date_mc"
                                    class="form-label fw-bolder"
                                    >Date MC</label
                                >
                                <input
                                    type="date"
                                    class="form-control"
                                    v-model="dateIn"
                                />
                            </div>
                            <div class="col-8 mb-2">
                                <label
                                    for="intitule"
                                    class="form-label fw-bolder"
                                    >Propriétaire</label
                                >
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
                            <label for="statu" class="form-label fw-bolder"
                                >Etat Acuel</label
                            >
                            <select
                                class="form-select fs-5"
                                aria-label="Default select example"
                                v-model="statuIn"
                            >
                                <option
                                    v-for="statu in statusList"
                                    :key="statu"
                                    :value="statu[0]"
                                >
                                    {{ statu[1] }}
                                </option>
                            </select>
                        </div>
                        <div class="col mb-4">
                            <label
                                for="utilisateur"
                                class="form-label fw-bolder"
                                >Utilisateur</label
                            >
                            <input
                                type="text"
                                class="form-control"
                                v-model="utilisateurIn"
                            />
                        </div>
                        <div class="modal-footer">
                            <button
                                type="button"
                                class="btn btn-secondary"
                                data-bs-dismiss="modal"
                            >
                                Fermer
                            </button>
                            <button
                                type="submit"
                                class="btn btn-primary"
                                data-bs-dismiss="modal"
                            >
                                Enregistrer
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</template>

<script>
import { useBasesStore} from "./../../store/bases.js";
export default {
props:['statusList','intituleListe','agencaList'],

    data() {

    return {







      matriculeIn: "",
      marqueIn: "",
      dateIn: "",
      agenceIn: "",
      statuIn: "",
      intituleIn: "",
      categorieIn: "",
      utilisateurIn: "",

    }
  },



    methods: {
        createVhl() {
            console.log("createVhl");
            const vhl = this;
            axios
                .post(
                    "/creata",
                    {
                        matricule: this.matriculeIn,
                        marque: this.marqueIn,
                        date_mc: this.dateIn,
                        agence_id: this.agenceIn,
                        statu_id: this.statuIn,
                        intitule_id: this.intituleIn,
                        categorie_id: this.categorieIn,
                        utilisateur: this.utilisateurIn,
                    },
                    { headers: { "Content-Type": "application/json" } }
                )
                .then((res) => {
                    console.log(res);
                })
                .then(() => {
                    (this.matriculeIn = ""),
                        (this.marqueIn = ""),
                        (this.dateIn = ""),
                        (this.agenceIn = ""),
                        (this.statuIn = ""),
                        (this.intituleIn = ""),
                        (this.categorieIn = ""),
                        (this.utilisateurIn = "");
                })
                .then(() => this.$router.push("/"))
                .catch((err) => console.log(err.message));

            console.log("createVhl - ok");
        },



},
mounted(){

console.log('modal-Creation')
    },
}

;
</script>
