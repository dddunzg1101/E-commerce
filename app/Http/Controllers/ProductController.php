<?php

namespace App\Http\Controllers;

use App\Models\Binhluan;
use App\Models\Chitiethoadon;
use App\Models\Danhmuc;
use App\Models\Sanpham;
use App\Services\HinhAnhService;
use Auth;
use DB;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function getListProductType(Request $request)
    {
        $data=Danhmuc::whereHas('cuahang',function ($query) {
            $query->where('kh_id',Auth::guard('khachhang')->user()->kh_id);
        })->get();
        return view('admin.product-type.index',compact('data'));
    }

    public function storeProductType(Request $request)
    {
    
        $ch_id = DB::table('cuahang')->where('kh_id', Auth::guard('khachhang')->id())->select('ch_id')->first();
        $request->merge([
            'ch_id'=>$ch_id->ch_id
        ]);
        Danhmuc::create($request->all());

        return redirect()->route('store.getListProductType');
    }

    public function updateProductType(Request $request,Danhmuc $danhMuc)
    {

        $danhMuc->update($request->all());
        return redirect()->route('store.getListProductType');

    }

    public function deleteProductType(Request $request,Danhmuc $danhMuc)
    {
        $sp=Sanpham::where('dm_id',$danhMuc->dm_id)->first();
        $sp??$danhMuc->delete();
        return redirect()->route('store.getListProductType');

    }

    // sp
    public function getListProduct(Request $request)
    {
        $data=Sanpham::whereHas('cuahang',function ($query) {
            $query->where('kh_id',Auth::guard('khachhang')->user()->kh_id);
        })->get();
        $danhmuc=Danhmuc::whereHas('cuahang',function ($query) {
            $query->where('kh_id',Auth::guard('khachhang')->user()->kh_id);
        })->get();


        return view('admin.product.index',compact('data','danhmuc'));
    }

    public function storeProduct(Request $request,HinhAnhService $hinhAnhService)
    {
    
        $ch_id = DB::table('cuahang')->where('kh_id', Auth::guard('khachhang')->id())->select('ch_id')->first();
        $request->merge([
            'ch_id'=>$ch_id->ch_id
        ]);
        $sp=Sanpham::create($request->all());
        $hinhAnhService->uploadImage($sp,$request);

        return redirect()->route('store.getListProduct');
    }

    public function updateProduct(Request $request,Sanpham $sanPham,HinhAnhService $hinhAnhService)
    {
        $request->sp_trangthai=="on" ? $request->merge([ 'sp_trangthai'=>0 ]) :$request->merge([ 'sp_trangthai'=>1 ]);
        
        $sanPham->update($request->all());
        $hinhAnhService->uploadImage($sanPham,$request);
        return redirect()->route('store.getListProduct');

    }

    public function deleteProduct(Request $request,Sanpham $sanPham)
    {
        $check=Chitiethoadon::where('sp_id',$sanPham->sp_id)->first();
        $check??$sanPham->delete();
        return redirect()->route('store.getListProduct');

    }
    public function detailProduct(Sanpham $sanPham)
    {
        $binhluan=Binhluan::where('sp_id',$sanPham->sp_id)->get();

        return view('admin.product.chi-tiet-sp',compact('sanPham','binhluan'));

    }

    public function getNews()
    {
        return view('client.baiviet.index');
    }
    public function getContact()
    {
        return view('client.lienhe.index');
    }

    public function getProductAsType($id)
    {
    //    $data=Sanpham::with('mothinhanh')->where('dm_id',$id)->limit(19)->get();
       $data=Sanpham::with('mothinhanh')->where('dm_id',$id)->paginate(8);
       return view('client.sanpham.index',compact('data'));
    }

}
