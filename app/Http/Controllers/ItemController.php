<?php

namespace App\Http\Controllers;

use App\Models\Binhluan;
use App\Models\Danhmuc;
use App\Models\Sanpham;
use App\Services\HinhAnhService;
use Auth;
use DB;
use Illuminate\Http\Request;

class ItemController extends Controller
{
    public function index()
    {
        // $data=Sanpham::with('mothinhanh')->limit(19)->get();
        $data=Sanpham::with('mothinhanh')->where('sp_trangthai',0)->paginate(8);
        return view('client.sanpham.index',compact('data'));
    }

    public function detail(Request $request, Sanpham $sanpham)
    {
        $binhluan=Binhluan::where('sp_id',$sanpham->sp_id)->get();
        return view('client.sanpham.detail',compact('sanpham','binhluan'));
    }

    public function search(Request $request)
    {
        $conditionSearch='%'.$request->search.'%';
        $data=Sanpham::with('mothinhanh')->where('sp_ten','LIKE',$conditionSearch)->paginate(8);
        return view('client.sanpham.index',compact('data'));
    }
}
