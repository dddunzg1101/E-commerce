<?php

namespace App\Http\Controllers;

use App\Models\Cuahang;
use Illuminate\Http\Request;
use Auth;
use DB;
use Session;
class StoreController extends Controller
{
    public function storeRegisterHandle(Request $request) {
        $tenCuaHang = $request->tenCuaHang;
        $diaChi = $request->diaChi;
        $id = Auth::guard('khachhang')->id();
        $insertStore = DB::table('cuahang')->insert([
            'ch_ten' => $tenCuaHang,
            'ch_diachi' => $diaChi,
            'ch_gioiThieu' => '',
            'kh_id' => $id
        ]);
           Session::flash('messCreateStore', 'Đăng kí cửa hàng thành công!');
        return redirect()->back();
    }

    public function storeInfo() {
        $id = Auth::guard('khachhang')->id();
        $cuaHang = DB::table('cuahang')->where('kh_id', $id)->first();
        return view('admin.index', compact('cuaHang'));
    }

    public function update(Request $request,Cuahang $cuahang)
    {
        $request->ch_trangthai=="on" ? $cuahang->update(['ch_trangthai'=>0]) : $cuahang->update(['ch_trangthai'=>1]);

        return back();
    }
}
