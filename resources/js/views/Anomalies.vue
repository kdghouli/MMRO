
<template>
<h5>{{items}}</h5>
<div id="row-clicked"></div>
  <EasyDataTable v-model:items-selected="itemsSelected" @click-row="showRow" show-index buttons-pagination :headers="headers" :items="items" alternating border-cell 
    :sort-by="sortBy" :sort-type="sortType"   >
      <template #expand="item">
          <div style="padding: 6px" v-for=" comi in (item.comment)">{{ comi.comment }}</div>
      </template>
  </EasyDataTable>
</template>


<script>
    import { useBasesStore} from "../store/bases.js";
    import { mapState,mapActions } from 'pinia'
export default {

    data(){
        return{
        //store : useBasesStore(),
           // anomalies:useBasesStore().anomalies
           headers:
                [
                    { text: "MATRICULE", value: "matricule",fixed: true, width: 150 },
                    { text: "MARQUE", value: "marque", width: 150},
                    { text: "AGENCE", value: "agence.name",sortable: true },
                    { text: "INTITULE", value: "intitule.name" },
                    { text: "CATEGORIE", value: "categorie.name" },
                    { text: "ETAT", value: "statu.name" },
                    { text: "UTILISATEUR", value: "utilisateur" },

                ],
            //
        }
    },

    computed:{
        ...mapState(useBasesStore,{items: 'anomalies'})

    },

    methods:{

        ...mapActions(useBasesStore, ['fetchAnomalies']),
    },




    mounted(){
        this.fetchAnomalies();
    }

}
</script>
<style lang="">

</style>