<?php

namespace Database\Factories;

use App\Models\Pacijent;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Terapija>
 */
class TerapijaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $status=$this->faker->randomElement(['preuzet', 'na cekanju']);

        return [
            'pacijent_id'=>Pacijent::inRandomOrder()->first()->id,
            'naziv_leka'=>$this->faker->company(),
            'nacin_primene'=>$this->faker->sentence(10),
            'status'=>$status,
            'datum_preuzimanja'=> $status == 'preuzet' ? $this->faker->dateTimeThisDecade() : NULL
        ];
    }
}
