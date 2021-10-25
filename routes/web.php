<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VNPayController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\StoreController;
use App\Http\Controllers\ShoppingCartController;
use App\Http\Controllers\BinhLuanController;
use App\Http\Controllers\ThongKeDoanhThuController;
use App\Http\Controllers\ThongKeKhachHangController;
use App\Http\Controllers\BillController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});




Route::get('/dang-ky', [AuthController::class,'register'])->name('auth.view.register');
Route::post('/dang-nhap', [AuthController::class, 'handleLogin'])->name('auth.handle.login');
Route::post('/xu-ly-dang-ky', [AuthController::class, 'handleRegister'])->name('auth.handle.register');
//Bài viết
Route::get('/bai-viet', [ProductController::class, 'getNews'])->name('getNews');
//Bài viết
Route::get('/lien-he', [ProductController::class, 'getContact'])->name('getContact');

Route::middleware(['checkAuthCustomer'])->group(function () {
    Route::prefix('thong-tin')->group(function () {
        Route::get('/', [AuthController::class, 'infoCustomer'])->name('auth.info.customer');
        Route::get('/dang-ky-cua-hang', [AuthController::class, 'storeRegister'])->name('auth.store.register');
        Route::post('/xu-ly-dang-ky-cua-hang', [StoreController::class, 'storeRegisterHandle'])->name('store.handle.register');
    });
    Route::prefix('/cua-hang')->name('store.')->group(function () {
        Route::get('/', [StoreController::class, 'storeInfo'])->name('info');
        Route::post('/{cuahang}/cap-nhat-cua-hang', [StoreController::class, 'update'])->name('update');
        Route::get('/danh-muc', [ProductController::class, 'getListProductType'])->name('getListProductType');
        Route::post('/luu-danh-muc', [ProductController::class, 'storeProductType'])->name('storeProductType');
        Route::post('/cap-nhat-danh-muc/{danh_muc}', [ProductController::class, 'updateProductType'])->name('updateProductType');
        Route::post('/xoa-danh-muc/{danh_muc}', [ProductController::class, 'deleteProductType'])->name('deleteProductType');
        // san pham
        Route::get('/san-pham', [ProductController::class, 'getListProduct'])->name('getListProduct');
        Route::post('/luu-san-pham', [ProductController::class, 'storeProduct'])->name('storeProduct');
        Route::post('/cap-nhat-san-pham/{san_pham}', [ProductController::class, 'updateProduct'])->name('updateProduct');
        Route::post('/xoa-san-pham/{san_pham}', [ProductController::class, 'deleteProduct'])->name('deleteProduct');
        Route::get('/chi-tiet-san-pham/{san_pham}', [ProductController::class, 'detailProduct'])->name('detailProduct');

        // Cập nhật trạng thái sản phẩm
        Route::post('/cap-nhat-san-pham/{san_pham}', [ProductController::class, 'updateProduct'])->name('updateProduct');
        
        //Thống kê khách hàng
        Route::get('/thong-ke-khach-hang',[ThongKeKhachHangController::class, 'index'])->name('tkkhachhang');

        //Thống kê doanh thu
        Route::get('/thong-ke-doanh-thu',[ThongKeDoanhThuController::class, 'index'])->name('tkdoanhthu');

        // Bình luận
        Route::get("/binh-luan",[BinhLuanController::class,'index'])->name('binhluan');

        //Hóa đơn
        Route::get("/hoa-don",[BillController::class,'index'])->name('hoadon');
        Route::get('/hoa-don/{id}/chi-tiet', [BillController::class,'show'])->name('hoadon.chitiet');
    });


    // Bình luận
    Route::post("/binh-luan/{san_pham}",[BinhLuanController::class,'store'])->name('binhluan.submit');
    Route::get('/dang-xuat', [AuthController::class, 'logout'])->name('auth.logout');
});


//shopping cart
Route::get('/gio-hang', [ShoppingCartController::class, 'index'])->name('cart.index');
Route::get('/thanh-toan',[ShoppingCartController::class, 'checkout'])->name('cart.checkout');
Route::get('/them-gio-hang/{san_pham_id}',[ShoppingCartController::class, 'addProductToCart'])->name('cart.addtocart');

Route::get('/xac-nhan-thanh-toan',[VNPayController::class,'show'])->name('cart.checkout.submit');
Route::get('/detail-product-return',[VNPayController::class,'store'])->name('return.vnpay');



//handle cart
Route::post('/{idProduct}/them-san-pham', [ShoppingCartController::class, 'addProductToCart'])->name('cart.add.item');
Route::get('/{rowId}/delete', [ShoppingCartController::class, 'removeCart'])->name('cart.remove.item');
Route::get('/{rowId}/update-qty', [ShoppingCartController::class, 'updateQty'])->name('cart.update.qty');
//Hiện thị sản phẩm theo danh mục

Route::get('/san-pham-danh-muc/{id}',[ProductController::class, 'getProductAsType'])->name('spdanhmuc.index');


Route::prefix('/')->name('item.')->group(function () {
    Route::get('/',[ItemController::class, 'index'])->name('index');
    Route::get('/chi-tiet/{sanpham}',[ItemController::class, 'detail'])->name('detail');
    Route::get('/tim-kiem',[ItemController::class, 'search'])->name('search');
});
Route::get('/admin', [AuthController::class, 'checkStore'])->name('check.store');

