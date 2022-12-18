<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
          [
              'id' => '1',
              'name' => 'admin',
              'guard_name' => '',
              'created_at' => now(),
          ],

        ];
    }
}
