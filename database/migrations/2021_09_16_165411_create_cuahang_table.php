<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCuahangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cuahang', function (Blueprint $table) {
            $table->id('ch_id');
            $table->string('ch_ten', 50)->nullable();
            $table->string('ch_diachi', 60)->nullable();
            $table->text('ch_gioithieu')->nullable();
            $table->bigInteger('kh_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cuahang');
    }
}
