import { defineStore } from "pinia";
// Import axios to make HTTP requests
import axios from "axios";


export const useBasesStore = defineStore("bases", {
    state: () => ({

        base: [],
        camions: [],
        voitures: [],
        scooters: [],
        chariots: [],
        autres:[],
        agences: [],
        commentaires: [],
        status: [],
        intitules:[],
        searchIn:'',
        vhl: {},
        agenca: [],
    }),

    // ######################################################

    getters: {

        getOneVhl(id) {
            return (this.vhl = this.base.find((x) => x.id == id));
        },

        getCamions() {
            return (this.camions = this.base.filter(
                (x) => x.categorie_id == 1
            ));
        },
        getVoitures() {
            return (this.voitures = this.base.filter(
                (x) => x.categorie_id == 2
            ));
        },
        getScooters() {
            return (this.scooters = this.base.filter(
                (x) => x.categorie_id == 3
            ));
        },
        getChariots() {
            return (this.chariots = this.base.filter(
                (x) => x.categorie_id == 4
            ));
        },

        getAutres() {
            return (this.autres = this.base.filter(
                (x) => x.categorie_id == 5
            ));
        },

        // getAgences() {
        //     return (this.agences = this.base.agences);
        // },
        // getStatus() {
        //     return (this.status = this.base.status);
        // },


        // LES OPTIONS SELECT

        optionStatus(state){

     console.log("optionStatus-getListStatus");
      const lista = new Map();
      state.status.forEach((x) => lista.set(x.id, x.name));
      const arr = Array.from(lista);
      console.log({... _.valuesIn(arr)})
      return {...arr}
        },

        optionIntitules(state){

         console.log("optionIntitules-getListeIntitule");

        const lista = new Map();
        state.intitules.forEach((x) => lista.set(x.id, x.name));
        return Array.from(lista);

               },

        optionAgences(state){

         console.log("optionAgences-getListAgence");
         const lista = new Map();
         state.agences.forEach((x) => lista.set(x.id, x.name));
         return Array.from(lista);

                   },


    filteredData(state) {
                    console.log("filteredData")

                    let tempBase=state.base

                    if (state.searchIn != '' && state.searchIn) {
                   return tempBase = tempBase.filter(row => {
                        return row.matricule
            .toUpperCase()
            .includes(state.searchIn.toUpperCase())

                    })
                } },


                // filteredData(){
                //     this.fetchBase()
                //     return Object.keys(this.base).reduce((obj, key) => {
                //         if (key.toLowerCase().includes(this.searchIn.toLowerCase())) {
                //           obj[key] = this.shifts[key]
                //         }
                //         return obj
                //       }, {} )
                //     }
   // Filter out by cooking time
//    if (this.maxCookingTime)
//    tempRecipes = tempRecipes.filter((item) => {
//      return (item.cookingTime <= this.maxCookingTime)
//    })

//  // Sort by alphabetical order
//      tempRecipes = tempRecipes.sort((a, b) => {
//          if (this.sortBy == 'alphabetically') {
//              let fa = a.title.toLowerCase(), fb = b.title.toLowerCase()

//            if (fa < fb) {
//              return -1
//            }
//            if (fa > fb) {
//              return 1
//            }
//            return 0

//            // Sort by cooking time
//          } else if (this.sortBy == 'cookingTime') {
//            return a.cookingTime - b.cookingTime
//      }



        // async searchMatricule(){
        //   try{

        //     this.listCamion = await axios.get(`/vhls?q=${this.searchText}`);

        //     console.log(this.listCamion)
        //   }
        //  catch (err) {
        //   console.log(err);
        // }
        // }
    },

    // ######################################################

    actions: {
        async fetchBase() {
            try {
                console.log("fetchBase - BasesPinia");
                const resp = await axios.get("/api/vhls");
                this.base = resp.data;

                console.log(this.base);
            } catch (error) {
                console.log(error);
            }
        },

        async fetchComments() {

            try {
                console.log('"fetchComments - BasesPinia"')
                const resp = await axios.get("/api/comments")
                this.commentaires = resp.data
            } catch (error) {
                console.log(error)

            }
        },

        async fetchStatus() {

            try {
                console.log('"fetchStatus - BasesPinia"')
                const resp = await axios.get("/api/status")
                this.status = resp.data;
                console.log(this.status)
            } catch (error) {
                console.log(error)

            }
        },

        async fetchIntitules() {

            try {
                console.log('"fetchIntitules - BasesPinia"')
                const resp = await axios.get("/api/intitule")
                this.intitules = resp.data;
                console.log(this.intitules)
            } catch (error) {
                console.log(error)

            }
        },

        async fetchAgences() {

            try {
                console.log('"fetchAgences - BasesPinia"')
                const resp = await axios.get("/api/agences")
                this.agences = resp.data;
                console.log(this.agences)
            } catch (error) {
                console.log(error)

            }
        },




        //    async getAgencesList(){
        //     const agences = new Set();
        //     const respAg = await axios.get("/api/agences");
        //     console.log(respAg);

        //     this.agenca.forEach(x => agences.add(x.agence));
        //     return Array.from(agences);

        // },
        //     agences() {
        //         const agences = new Set();
        //         this.agenca.forEach(x => agences.add(x.agence));
        //         return Array.from(agences);

        //       },

        //       conta(bb) {
        //         return Object.keys(this.camions.filter(x => x.agenceId == bb)).length

        //  },
    },
});
