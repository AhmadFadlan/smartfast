<?php

use Illuminate\Database\Seeder;

use Faker\Factory as Faker;

class isiposts extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('id_ID');

        for($i = 1; $i <= 5; $i++){

          // insert data ke table pegawai menggunakan Faker
          DB::table('posts')->insert([
            'author_id' => '3',
            'category_id' => '1',
            'title' => $faker->title,
            'excerpt' => $faker->paragraph,
            'body' => $faker->paragraph,
            'image' => 'posts/post1.jpg',
            'slug' => $faker->name,
            'status' => 'PUBLISHED',
            'created_at' => $faker->datetime,
            'updated_at' => $faker->datetime
          ]);

        }
    }
}
