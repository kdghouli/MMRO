<template>

    <h3>Visite technique {{ vhl_id }}</h3>

    <form @submit="createVisite" enctype="multipart/form-data">
        <input type="hidden" name="" v-model="vhl_id" />
        <div class="mb-3">
            <label for="" class="form-label">Date prochain visite technique :</label>
            <input type="date" class="m-2" v-model="visite" />

            <input type="file" class="form-control"  id="" placeholder=""  @change="onFileChange" />
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

date(){
    return {

        visite:"",
        observation:"",
        image:"",
        vhl_id:""
    }

},
methods: {

    onFileChange(e){

this.image = e.target.files[0];

},



createVisite(e) {
       e.preventDefault();

       let visite = new FormData();
       visite.append('image', this.image);
       visite.append('vhl_id', this.vhl_id);
       visite.append('observation', this.observation);
       visite.append('file', this.image);


    //   let visite = {
    //     vhl_id: this.vhl_id,
    //     visite: this.visite,
    //     observation: this.observation,
    //     image: this.image,
    //   };
      console.log(this.image);
      visite = this;
      axios
        .post("/createVisite/", { ...visite },{
           headers: {
               'content-type': 'multipart/form-data'
            }
        })
        .then((res) => {
          console.log(res);
        })
        .then(() =>
          this.$router.push({
            name: "OneVhlView",
            params: { id: this.vhl_id },
          })
        );






            }
        },






    mounted() {


   this.vhl_id = this.$route.params.id;
  }



};
</script>
<style></style>
