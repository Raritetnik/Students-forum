<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('lang_posts', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('lang', 5);
            $table->string('title', 100)->nullable();
            $table->text('message')->nullable();
            $table->foreignId('post_id')->constrained();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lang_posts');
    }
};
