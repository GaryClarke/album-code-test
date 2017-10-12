<?php

Route::get('/', function ()
{
    return view('welcome');
});

/**
 * Total number of albums purchased in each year and money spent on them. Should be orderable by year and amount.
 */
Route::get('albums/{order}', function ($order)
{

    if (request()->json())
    {
        $albumsByYearSpend = DB::table('album_person')
            ->select(DB::raw("YEAR(purchased_at) as year"), DB::raw("SUM(amount) as spend"))
            ->groupBy(DB::raw("YEAR(purchased_at)"))
            ->orderBy($order)
            ->get();

        return response()->json($albumsByYearSpend, 200);
    }

    abort('Sorry not sorry');

});
