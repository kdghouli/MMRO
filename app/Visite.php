<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Visite extends Model

{


protected $fillable =["visite","image","observation","vhl_id"];



    public function vhl(){
        return $this->hasOne(Vhl::class);
}}
