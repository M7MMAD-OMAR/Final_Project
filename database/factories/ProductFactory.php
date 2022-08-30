<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'product_name' => $this->faker->colorName(),
            'category_id' => $this->faker->randomElement(range(1,20)),
            'product_price' => $this->faker->randomElement(range(20, 900)),
            'product_image' => $this->faker->image,
            'glimpse' => $this->faker->text(100),
            'note' => $this->faker->text(30),
            'description' => $this->faker->text,
        ];
    }
}
