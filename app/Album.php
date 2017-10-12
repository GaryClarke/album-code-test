<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model {

    protected $fillable = [
        'title',
        'artist',
        'track_count',
        'release_year'
    ];

    public $timestamps = false;

    /**
     * An album belongs to many genres
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function genres()
    {
        return $this->belongsToMany(Genre::class);
    }


    /**
     * An album belongs to many people
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function people()
    {
        return $this->belongsToMany(Person::class);
    }
}
