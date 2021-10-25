<?php

namespace App\Providers;

use App\Services\CommonService;
use App\Services\HinhAnhService;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use DB;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton('hinh-anh-service', function ($app) {
            return $app->make(HinhAnhService::class);
        });
        $this->app->singleton('common-service', function ($app) {
            return $app->make(CommonService::class);
        });

        $loaisp = DB::table('danhmuc')->join('cuahang','danhmuc.ch_id','cuahang.ch_id')->where('ch_trangthai',1)->get();
        View::share('loaisp',$loaisp);

    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
