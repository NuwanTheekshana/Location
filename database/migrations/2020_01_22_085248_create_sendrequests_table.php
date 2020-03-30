<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSendrequestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sendrequests', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('Branch_Name');
            $table->string('T_number_1');
            $table->string('T_number_2');
            $table->string('M_number');
            $table->string('F_number');
            $table->string('Address');
            $table->string('Location_Code');
            $table->string('Note');
            $table->string('request_by');
            $table->string('Company');
            $table->string('delete_status');
            $table->string('img');
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
        Schema::dropIfExists('sendrequests');
    }
}
