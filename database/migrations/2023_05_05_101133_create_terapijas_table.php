<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('terapijas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('pacijent_id')->unsigned();
            $table->string('naziv_leka');
            $table->string('nacin_primene');
            $table->string('status');
            $table->dateTime('datum_preuzimanja')->nullable();
            $table->timestamps();

            $table->foreign('pacijent_id')->references('id')->on('pacijents');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('terapijas');
    }
};
