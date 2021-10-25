<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChitiethoadonTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chitiethoadon', function (Blueprint $table) {
            $table->integer('sp_id');
            $table->integer('hd_id');
            $table->float('cthd_dongia', 10, 0)->nullable();
            $table->integer('cthd_soluong')->nullable();
            $table->primary(['sp_id', 'hd_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chitiethoadon');
    }
}
