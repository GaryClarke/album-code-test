<?php

namespace Feature;

use App\Album;
use App\Person;
use Tests\TestCase;
use Illuminate\Foundation\Testing\DatabaseTransactions;

class AlbumTest extends TestCase {

    use DatabaseTransactions;

    /** @test */
    function number_of_albums_per_year_is_returned_with_net_spend()
    {
        // ARRANGE
        // 5 people
        $mother = Person::whereRelationship('mother')->first();
        $father = Person::whereRelationship('father')->first();
        $sister = Person::whereRelationship('sister')->first();
        $brother = Person::whereRelationship('brother')->first();
        $self = Person::whereRelationship('self')->first();

        // 5 albums
        $albumA = factory(Album::class)->create();
        $albumB = factory(Album::class)->create();
        $albumC = factory(Album::class)->create();
        $albumD = factory(Album::class)->create();
        $albumE = factory(Album::class)->create();

        // 5 albums purchased
        $purchase1 = $mother->albums()->attach($albumA, [
            'amount'       => 1000,
            'purchased_at' => '2016-01-01 20:00:00'
        ]);

        $purchase2 = $father->albums()->attach($albumB, [
            'amount'       => 1000,
            'purchased_at' => '2016-01-01 20:00:00'
        ]);

        $purchase3 = $sister->albums()->attach($albumC, [
            'amount'       => 1000,
            'purchased_at' => '2015-01-01 20:00:00'
        ]);

        $purchase4 = $brother->albums()->attach($albumD, [
            'amount'       => 1500,
            'purchased_at' => '2015-01-01 20:00:00'
        ]);

        $purchase5 = $self->albums()->attach($albumE, [
            'amount'       => 1500,
            'purchased_at' => '2014-01-01 20:00:00'
        ]);

        // Interim DB check
        $this->assertDatabaseHas('album_person', [
            'person_id'    => $self->id,
            'album_id'     => $albumE->id,
            'amount'       => 1500,
            'purchased_at' => '2014-01-01 20:00:00'
        ]);

        // ACT
        // Get albums by year
        $responseYear = $this->json('GET', '/albums/year');

        // ASSERT
        // Correct data returned in order
        $responseYear->assertJson([
            [
                'year'  => 2014,
                'spend' => 1500
            ],
            [
                'year'  => 2015,
                'spend' => 2500
            ],
            [
                'year'  => 2016,
                'spend' => 2000
            ]
        ]);

        // ACT
        // Get albums by spend
        $responseSpend = $this->json('GET', '/albums/spend');

        // ASSERT
        // Correct data returned in order
        $responseSpend->assertJson([
            [
                'year'  => 2014,
                'spend' => 1500
            ],
            [
                'year'  => 2016,
                'spend' => 2000
            ],
            [
                'year'  => 2015,
                'spend' => 2500
            ],
        ]);
    }
}