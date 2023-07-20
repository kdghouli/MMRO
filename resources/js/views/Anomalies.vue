
<template>

<div id="row-clicked"></div>
  <EasyDataTable v-model:items-selected="itemsSelected" @click-row="showRow" show-index buttons-pagination :headers="headers" :items="items"  alternating border-cell
    :sort-by="sortBy" :sort-type="sortType" table-class-name="customize-table"  >
    <template #header-matricule="header">
        <div class="customize-header">
          <img src="../../../public/images/birdo.jpg" width="20"  class="header-icon">
          {{ header.text }}
        </div>
      </template>
      <template #item-categorie.name="{ teamName, teamUrl }">
        <img src="../../../public/images/birdo.jpg" width="20" >

      </template>
      <template #expand="item">
          <div style="padding: 6px" v-for=" comi in (item.comment)"> <img :src="`images/1x/statu_${comi.statu_id}.png`" width="28" alt="" class="me-2">{{ comi.comment }}</div>

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
                    { text: "MATRICULE", value: "matricule", width: 150 },
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


<style>

.customize-table {
    --easy-table-border: 1px solid #445269;
    --easy-table-row-border: 1px solid #445269;

    --easy-table-header-font-size: 14px;
    --easy-table-header-height: 50px;
    --easy-table-header-font-color: #c1cad4;
    --easy-table-header-background-color: #2d3a4f;

    --easy-table-header-item-padding: 10px 15px;

    --easy-table-body-even-row-font-color: #fff;
    --easy-table-body-even-row-background-color: #4c5d7a;

    --easy-table-body-row-font-color: #c0c7d2;
    --easy-table-body-row-background-color: #2d3a4f;
    --easy-table-body-row-height: 50px;
    --easy-table-body-row-font-size: 14px;

    --easy-table-body-row-hover-font-color: #2d3a4f;
    --easy-table-body-row-hover-background-color: #eee;

    --easy-table-body-item-padding: 10px 15px;

    --easy-table-footer-background-color: #2d3a4f;
    --easy-table-footer-font-color: #c0c7d2;
    --easy-table-footer-font-size: 14px;
    --easy-table-footer-padding: 0px 10px;
    --easy-table-footer-height: 50px;

    --easy-table-rows-per-page-selector-width: 70px;
    --easy-table-rows-per-page-selector-option-padding: 10px;
    --easy-table-rows-per-page-selector-z-index: 1;


    --easy-table-scrollbar-track-color: #2d3a4f;
    --easy-table-scrollbar-color: #2d3a4f;
    --easy-table-scrollbar-thumb-color: #4c5d7a;;
    --easy-table-scrollbar-corner-color: #2d3a4f;

    --easy-table-loading-mask-background-color: #2d3a4f;
  }
  </style>