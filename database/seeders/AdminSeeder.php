<?php

namespace Database\Seeders;
use App\Models\User;

use Illuminate\Database\Seeder;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Kenn Secusana',
            'email' => 'kennbassist@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('kenn12345'),
            'admin' => 1,
            'approved_at' => now(),
            'contact_no' => '09361652609',
            'advisory' => 'Grade 11 - Wisdom',
            'role' => 'editor'
        ]);
    }
}
