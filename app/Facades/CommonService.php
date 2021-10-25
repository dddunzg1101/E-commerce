<?php

namespace App\Facades;

use Illuminate\Support\Facades\Facade;

class CommonService extends Facade
{
    /**
     * * getFacadeAccessor.
     *
     * @return void
     */
    protected static function getFacadeAccessor()
    {
        return 'common-service';
    }
}
