<?php

namespace App\Facades;

use Illuminate\Support\Facades\Facade;

class HinhAnhService extends Facade
{
    /**
     * * getFacadeAccessor.
     *
     * @return void
     */
    protected static function getFacadeAccessor()
    {
        return 'hinh-anh-service';
    }
}
