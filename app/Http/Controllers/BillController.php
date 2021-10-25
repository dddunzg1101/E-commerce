<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use Carbon\Carbon;
class BillController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cuaHang = DB::table('cuahang')->where('kh_id', Auth::guard('khachhang')->user()->kh_id)->first();
        $hoaDon = DB::table('hoadon')->where('ch_id', $cuaHang->ch_id)->get();
        return view('admin.bill.index', compact('hoaDon', $hoaDon));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $hoaDon = DB::table('hoadon')->where('hd_id', $id)->first();
        $chiTiet = DB::table('chitiethoadon')->join('sanpham','sanpham.sp_id','chitiethoadon.sp_id')->where('hd_id', $id)->get();
        // dd($chiTiet);
        return view('admin.bill.detail', compact('chiTiet','hoaDon'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
