<?php

namespace Database\Seeders;

use App\Models\Pacijent;
use App\Models\Terapija;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PacijentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Pacijent::factory(20)->create();
    }
}
