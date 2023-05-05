<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pacijent>
 */
class PacijentFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'ime'=>$this->faker->firstName(),
            'ime_roditelja'=>$this->faker->firstName(),
            'prezime'=>$this->faker->lastName(),
            'jmbg'=>$this->faker->regexify('[0-9]{13}'),
            'telefon'=>$this->faker->phoneNumber()
        ];
    }
}
