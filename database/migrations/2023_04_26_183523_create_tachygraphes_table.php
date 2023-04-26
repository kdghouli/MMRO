<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTachygraphesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tachygraphes', function (Blueprint $table) {
            $table->id();
            $table->date('tchygraphe');
            $table->text('Observation');
            $table->timestamps();
            $table->foreignId('vhl_id')->nullable()
            ->constrained()->cascadeOnDelete()->cascadeOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tachygraphes');
    }
}
