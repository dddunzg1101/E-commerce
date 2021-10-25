<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use DB;
use Session;
class ShoppingCartController extends Controller
{
    public function index() {
        $cart = Cart::content();
        return view('client.cart.index', compact('cart'));
    }

    public function checkout() {
        $cart = Cart::content();
        // dd($cart);
        if($cart->groupBy('options.store')->count() > 1) {
            Session::flash('alert', 'Sản phẩm của bạn mua đến từ nhiều cửa hàng khác nhau. Vui lòng xóa bớt sản phẩm');
            return redirect()->back();
        }
        return view('client.cart.checkout', compact('cart', $cart));
    }

    public function addProductToCart(Request $request, $idProduct) {
        $product = DB::table('sanpham')->where('sp_id', $idProduct)->first();
        Cart::add($product->sp_id, $product->sp_ten, $request->quantity,$product->sp_giaban,0, ['store' => $product->ch_id]);
        // // dd(Cart::content()->groupBy('options.store'));
        // $int = 0;

        // foreach (Cart::content()->groupBy('options.store') as $key => $value) {
        //     # code...
        //     echo $key;
        //     echo '<br>';
        //     // echo $value;
        //     foreach ($value as $key2 => $value2) {
        //         # code...
        //         $int += $value2->price * $value2->qty;
        //         echo '<br>';
        //     }
        //     echo $int;
        //     // $map = array_map($value->options->store, $value);
        //     // DB::table('hoadon')->insert(
        //     //     [
        //     //         'hd_ma' => rand(10000, 99999),
        //     //         'hd_tongtien' => sum('')
        //     //     ]
        //     // );
        // }
        return redirect()->back();
    }

    public function updateQuantityCart() {

    }

    public function clearProductInCart() {

    }

    public function removeCart($rowId) {
        // Cart::destroy();
        Cart::remove($rowId);
        return redirect()->back();
    }

    public function updateQty($rowId, Request $request) {
        Cart::update($rowId, ['qty' => $request->quantity]);
        return redirect()->back();
    }

}
