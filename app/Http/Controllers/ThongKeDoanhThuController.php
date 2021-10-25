<?php

namespace App\Http\Controllers;

use App\Models\Chitiethoadon;
use App\Models\Danhmuc;
use App\Models\Hoadon;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ThongKeDoanhThuController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $month=range(0, 12);
        $request->year??$request->year=Carbon::now()->year;
        $request->year??$request->dm_id=0;
        if($request->dm_id==0){

            foreach ($month as $key => $value) {
                $temp[$value]=Hoadon::where( DB::raw('YEAR(hd_ngaylap)'), $request->year )
                ->where( DB::raw('MONTH(hd_ngaylap)'), '=', $value )
                ->where( 'ch_id', Auth::guard('khachhang')->user()->cuahang->ch_id );
    
                $temp[$value]=$temp[$value]->get();
                $data[$value]=$temp[$value]->sum('hd_tongtien');
               $sl[$value]=$temp[$value]->map(function ($item, $key) use($request){
               return Chitiethoadon::
               where('hd_id',$item->hd_id)
               ->sum('cthd_soluong');
               });
               $sl[$value]=$sl[$value]->sum();

            }

        }else{
            foreach ($month as $key => $value) {
                $temp[$value]=Hoadon::with('chitiethoadon')->where( DB::raw('YEAR(hd_ngaylap)'), $request->year )
                ->where( DB::raw('MONTH(hd_ngaylap)'), '=', $value )
                ->where( 'ch_id', Auth::guard('khachhang')->user()->cuahang->ch_id );
    
                $request->dm_id!=0 && $temp[$value]=$temp[$value]->
                whereHas('sanpham',function ($query) use ($request) {
                    $query->where('dm_id',$request->dm_id);
                });
    
                $temp[$value]=$temp[$value]->get();
                $data[$value]=$temp[$value]->sum('hd_tongtien');
                // dem so luong sp theo danh muc theo thang
                $sl[$value]=$temp[$value]->map(function ($item, $key) use($request){
                    return Chitiethoadon::
                    where('hd_id',$item->hd_id)->
                    whereHas('sanpham', function($q)  use($request) {
                        $q->where('dm_id', $request->dm_id);
                    })
                    ->sum('cthd_soluong');
                });
                $sl[$value]=$sl[$value]->sum();
            }
        }

        $min=Hoadon::selectRaw( DB::raw('MIN(hd_ngaylap) AS min'))->first();
        $range=['min'=>date('Y', strtotime($min->min)),'max'=>date('Y')];
        $danhmuc=Danhmuc::where( 'ch_id', Auth::guard('khachhang')->user()->cuahang->ch_id )->get();
        return view('admin.thongkedoanhthu.index',compact('data','range','request','danhmuc','sl'));
    }

}
