<template>

    <h3>Visite technique {{ vhl_id }}</h3>

    <form @submit.prevent="createVisite()" enctype="multipart/form-data">
        <input type="hidden" name="" v-model="vhl_id" />
        <div class="mb-3">
            <label for="" class="form-label">Date prochain visite technique :</label>
            <input type="date" class="m-2" v-model="visite" />

            <input type="file" class="form-control" name="" id="" placeholder="" aria-describedby="fileHelpId" @change="previewFiles" />
            <div class="mb-3">
                <label class="pb-1 form-label fw-bolder" for="commentaire">Observation</label>
                <textarea class="form-control" placeholder="Laissez-nous un commentaire !" id="commentaire"
                    style="height: 50px" v-model="observation"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Enregistrer</button>
        </div>
    </form>
</template>
<script>
export default {
    props:[vhl_id],
date(){
    return {

        visite:"",
        observation:"",
        image:""
    }

},
methods: {
   previewFiles(event) {
      console.log(event.target.files);
   }}




};
</script>
<style></style>
