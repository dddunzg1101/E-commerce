<?php

namespace Database\Seeders;

use App\Models\Hoadon;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        for ($i=0; $i < 100; $i++) { 
            $int= mt_rand(1609544820,1639352820);
            Hoadon::insert([
                'hd_ma'=>$int,
                'hd_tongtien'=>rand(1,100)*1000,
                'hd_ngaylap'=>date("Y-m-d",$int),
                'hd_trangthai'=>rand(1,2)
            ]);
        }
    }
}
