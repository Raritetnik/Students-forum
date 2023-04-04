<?php

namespace Database\Factories;

use App\Models\Ville;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factor
 */
class EtudiantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'adresse' => $this->faker->streetAddress(),
            'email' => fake()->unique()->safeEmail(),
            'email_verified_at' => now(),
            'phone' => $this->faker->phoneNumber(),
            'date_naissance' => $this->faker->date(),
            'ville_id' => Ville::factory(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
