<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\UrlGenerator;
use Auth;
use DB;
use Hash;
use Session;
class AuthController extends Controller
{

    public function checkStore() {
        $id = Auth::guard('khachhang')->user()->kh_id;
        $check = DB::table('cuahang')->where('kh_id', $id)->first();
        if($check > 0) {
            return view('admin.index');
        }
        return redirect()->back();
    }

    public function register() {
        if(Auth::guard('khachhang')->check()) {
            return redirect()->route('auth.info.customer');
        }
        $preURL = url()->previous();
        $url = str_replace(url('/'),"",url()->previous());
        // dd($url);
        $preURL = Session::flash("preURL", $url);
        return view('client.user-info.resgister-login');
    }

    public function handleRegister(Request $request) {
        $hoTen = $request->hoTen;
        $email = $request->email;
        $tenDangNhap = $request->tenDangNhap;
        $matKhau = $request->matKhau;
        $reMatKhau = $request->reMatKhau;
        $diaChi = $request->diaChi;

        $insertUser = DB::table('khachhang')->insert(
            [
                'kh_hoten' => $hoTen,
                'kh_diachi' => $diaChi,
                'username' => $tenDangNhap,
                'password' => Hash::make($matKhau),
                'kh_email' => $email
            ]
        );
        Session::flash('messDangKy', 'Đăng kí tài khoản thành công!');
        return redirect()->back();
    }

    public function handleLogin(Request $request) {
        $tenDangNhap = $request->tenDangNhap;
        $matKhau = $request->matKhau;
        $arrLogin = [
            'username' => $tenDangNhap,
            'password' => $matKhau];
        if (Auth::guard('khachhang')->attempt($arrLogin)) {
            $preURL = Session::get("preURL");
            if($preURL == "/thanh-toan") {
                Session::forget("preURL");
                return redirect()->route('cart.checkout');
            }
            # code...
            return redirect()->back();
        }else {
            Session::flash('messLogin', 'Đăng nhập không thành công!');
            return redirect()->back();
        }

    }

    public function infoCustomer() {

        $id = Auth::guard('khachhang')->id();

        $storeInfo = DB::table('cuahang')->where('kh_id', $id)->first();
        // dd($storeInfo);
        return view('client.user-info.infomation', compact('storeInfo'));
    }

    public function storeRegister() {
        $id = Auth::guard('khachhang')->id();

        $storeInfo = DB::table('cuahang')->where('kh_id', $id)->first();
        // dd($storeInfo);
     
        return view('client.user-info.store-register', compact('storeInfo'));
    }

    public function logout() {
        Auth::guard('khachhang')->logout();
        return redirect()->back();
    }
}
