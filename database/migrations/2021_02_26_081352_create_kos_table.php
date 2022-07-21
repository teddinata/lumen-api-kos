<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kos', function (Blueprint $table) {
            $table->id();

            $table->string('name')->nullable();
            $table->string('city')->nullable();
            $table->string('country')->nullable();
            $table->integer('rating')->nullable();
            $table->string('price')->nullable();
            $table->text('photo')->nullable();
            $table->text('image')->nullable();
            $table->string('address')->nullable();
            $table->string('phone')->nullable();
            $table->string('map_url')->nullable();
            $table->integer('kamar_tersedia')->nullable();
            $table->integer('jumlah_kamar')->nullable();
            $table->string('wifi')->nullable();

            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kos');
    }
}
