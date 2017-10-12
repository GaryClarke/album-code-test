<?php

namespace App\Console\Commands;

use App\Album;
use Illuminate\Console\Command;

class PopulateAlbums extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = "populate:albums {amount=100}";

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Populate the albums table with a given number of albums';

    /**
     * PopulateAlbums constructor.
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        factory(Album::class, 100)->create();
    }
}
