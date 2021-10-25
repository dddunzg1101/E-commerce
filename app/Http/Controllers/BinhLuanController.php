<?php

namespace App\Http\Controllers;

use App\Models\Binhluan;
use App\Models\Sanpham;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BinhLuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bl=Binhluan::whereHas('sanpham.cuahang',function ($query) {
            $query->where('kh_id',Auth::guard('khachhang')->id());
        })
        ->where('bl_status',0)->get();
       return view('admin.quanlibinhluan.index',compact('bl'));
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,Sanpham $sanPham)
    {
        $request->merge([
            'sp_id'=>$sanPham->sp_id,
            'kh_id'=>Auth::guard('khachhang')->id(),
        ]);
        if($request->bl_id_rep){
            Binhluan::where('bl_id',$request->bl_id_rep)->update(['bl_status'=>1]);
            $request->merge([
                'bl_status'=>1,
            ]);
        }
        Binhluan::create($request->all());
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
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
