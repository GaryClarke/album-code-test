<?php

use App\Person;

Route::get('/', function ()
{
    return view('welcome');
});


#Total number of albums purchased in each year and money spent on them. Should be orderable by year and amount.
//SELECT YEAR(purchased_at) as year, COUNT(*) as album_count, SUM(amount) as spend
//FROM album_person
//GROUP BY year
//ORDER BY spend (year)
Route::get('albums/{order}', function ($order)
{
    if (request()->json())
    {
        $albumsByYearSpend = DB::table('album_person')
            ->select(DB::raw("YEAR(purchased_at) as year"), DB::raw("COUNT(*) as album_count"), DB::raw("SUM(amount) as spend"))
            ->groupBy('year')
            ->orderBy($order)
            ->get();

        return response()->json($albumsByYearSpend, 200);
    }

    abort(403, 'Sorry not sorry');
});


# Number of albums in each genres. Should be orderable descending or ascending.
//SELECT g.name, COUNT(a.genre_id) as total_albums
//FROM genres g
//JOIN album_genre a ON (g.id = a.genre_id)
//GROUP BY g.id
//ORDER BY total_albums DESC (ASC)
Route::get('genres/{order}', function ($order)
{
    if (request()->json())
    {
        $albumsByGenre = DB::table('genres')
            ->join('album_genre', 'genres.id', 'album_genre.genre_id')
            ->select('genres.*', DB::raw("count(album_genre.album_id) as total_albums"))
            ->groupBy('genres.id')
            ->orderBy('total_albums', $order)
            ->get();

        return response()->json($albumsByGenre, 200);
    }

    abort(403, 'Sorry not sorry');
});


#Filter the albums by family members, showing their favourite and least favourite genres and their spending.
Route::get('people/{person}/albums', function (Person $person)
{
    if (request()->json())
    {
        $albums = $person->albums;

        $totalSpend = $albums->sum('pivot.amount');

        $albumIds = $albums->pluck('id')->toArray();

        $genres = DB::table('album_genre')
            ->whereIn('album_id', $albumIds)
            ->join('genres', 'album_genre.genre_id', 'genres.id')
            ->select('genres.name', DB::raw("count(genres.id) as popularity"))
            ->groupBy('genres.id')
            ->orderBy('popularity', 'desc')
            ->get();

        return response()->json([
            'relationship' => $person->relationship,
            'total_spend'  => $totalSpend,
            'fave'         => $genres->first(),
            'least_fave'   => $genres->last()
        ], 200);
    }

    abort(403, 'Sorry not sorry');
});
