<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Person extends Model
{
    protected $table = 'people';

    protected $fillable = ['relationship'];

    public $timestamps = false;

    /**
     * A user can own different albums
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function albums()
    {
        return $this->belongsToMany(Album::class)->withPivot(['amount', 'purchased_at']);
    }
}
