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
        Schema::create('tasks', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('description');
            $table->integer('order')->default(0);
            $table->foreignId('project_id')->constrained()->onDelete('cascade');
            $table->date('start_date')->nullable();
            $table->date('due_date')->nullable();
            $table->string('estimate_time')->nullable();
            $table->integer('status')->nullable();
            $table->integer('created_by')->nullable();
            // $table->date('created_at')->nullable();
            $table->integer('updated_by')->nullable();
            // $table->date('updated_at')->nullable();
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
        Schema::dropIfExists('tasks');
    }
};
