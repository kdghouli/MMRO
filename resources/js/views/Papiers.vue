<template>



  <br/>

  <span>search value: </span>
  <input type="text" v-model="searchValue">

     row clicked:<br />
  <div id="row-clicked"></div>
    <EasyDataTable v-model:items-selected="itemsSelected" @click-row="showRow" show-index buttons-pagination :headers="headers" :items="items" alternating border-cell :search-field="searchField"
    :search-value="searchValue"  :sort-by="sortBy" :sort-type="sortType"   >
        <template #expand="item">
            <div style="padding: 8px" v-for=" comi in (item.comment)">{{ comi.comment }}</div>
        </template>
    </EasyDataTable>
</template>

<script>


import { useBasesStore } from "../store/bases.js";
import EasyDataTable from "vue3-easy-data-table"

export default {
    components: {
        EasyDataTable,
    },
    data() {
        return {
            headers:
                [
                    { text: "MATRICULE", value: "matricule",fixed: true, width: 150 },
                    { text: "MARQUE", value: "marque" ,fixed: true, width: 150},
                    { text: "AGENCE", value: "agence.name",sortable: true },
                    { text: "INTITULE", value: "intitule.name" },
                    { text: "CATEGORIE", value: "categorie.name" },
                    { text: "ETAT", value: "statu.name" },
                    { text: "UTILISATEUR", value: "utilisateur" },

                ],
            //items:[],
            base:useBasesStore(),
            searchField:["matricule", "agence.name"],
            searchValue :''


        }
    },
    computed:{
            items(){
                return this.base.base
            },

    },

    methods:{

        showRow(item) {
             document.getElementById('row-clicked').innerHTML = JSON.stringify(item)
    }},


   async mounted() {
        await this.base.fetchBase();






    },
};

</script>


