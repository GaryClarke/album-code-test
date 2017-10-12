<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAlbumGenreTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('album_genre', function (Blueprint $table) {

            $table->unsignedInteger('album_id');
            $table->unsignedInteger('genre_id');

            $table->foreign('album_id')
                ->references('id')
                ->on('albums')
                ->onDelete('cascade');

            $table->foreign('genre_id')
                ->references('id')
                ->on('genres')
                ->onDelete('cascade');

            $table->primary(['album_id', 'genre_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('album_genre');
    }
}
