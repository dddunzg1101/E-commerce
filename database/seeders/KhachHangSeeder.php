<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
use Hash;
class KhachHangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $arr = [
            [
                'kh_hoten' => 'Lê Ngọc Đức',
                'kh_diachi' => 'Cần Thơ',
                'username' => 'lnd2409',
                'password' => Hash::make(123),
                'kh_email' => 'lnd240998@gmail.com'
            ]
        ];
        DB::table('khachhang')->insert($arr);
    }
}
