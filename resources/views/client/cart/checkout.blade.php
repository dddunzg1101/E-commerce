@extends('client.template.master')
@section('content')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="bread"><span><a href="index.html">Trang chủ</a></span> / <span>Thanh toán</span></p>
                </div>
            </div>
        </div>
    </div>


    <div class="colorlib-product">
        <div class="container">
            <div class="row row-pb-lg">
                <div class="col-sm-10 offset-md-1">
                    <div class="process-wrap">
                        <div class="process text-center active">
                            <p><span>01</span></p>
                            <h3>Giỏ hàng</h3>
                        </div>
                        <div class="process text-center active">
                            <p><span>02</span></p>
                            <h3>Thanh toán</h3>
                        </div>
                        <div class="process text-center">
                            <p><span>03</span></p>
                            <h3>Hoàn tất đơn hàng</h3>
                        </div>
                    </div>
                </div>
            </div>

            <form action="{{ route('cart.checkout.submit') }}" method="get">
                <div class="row">

                    <div class="col-lg-6">
                        @if (Auth::guard('khachhang')->check())
                            {{-- <form method="post" class="colorlib-form"> --}}
                                <h2>Chi tiết đơn hàng</h2>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="fname">Họ tên</label>
                                            <input type="text" id="fname" class="form-control" value="{{ Auth::guard('khachhang')->user()->kh_hoten }}"
                                            name="tenKhachHang">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="fname">Địa chỉ</label>
                                            <input type="text" id="address" name="diaChi" class="form-control"
                                                value="{{ Auth::guard('khachhang')->user()->kh_diachi }}"
                                            >
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="companyname">Số điện thoại</label>
                                            <input type="number" name="soDienThoai" id="towncity" class="form-control" required>
                                        </div>
                                    </div>
                                </div>
                            {{-- </form> --}}
                        @else
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <p><a href="{{ route('auth.view.register') }}" class="btn btn-primary">Vui lòng đăng nhập</a></p>
                            </div>
                        </div>
                        @endif
                    </div>

                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="cart-detail">
                                    <h2>Thông tin đơn hàng</h2>
                                    <ul>
                                        <li>
                                            {{-- <span>Cửa hàng</span> <span>ABC</span> --}}
                                            <ul>
                                                {{-- {{ dd($cart) }} --}}
                                                @foreach ($cart as $item)
                                                    <li><span>{{ $item->qty }} x {{ $item->name }}</span> <span>{{ $item->price * $item->qty }}</span></li>
                                                @endforeach
                                            </ul>
                                        </li>
                                        <li><span>Tổng đơn hàng</span> <span>{{ Cart::priceTotal(0,0) }}</span></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="w-100"></div>

                            <div class="col-md-12">
                                <div class="cart-detail">
                                    <h2>Phương thức thanh toán</h2>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input type="radio" name="optradio"> Ship cod</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                <label><input type="radio" name="optradio">VN Pay</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                {{-- {{ route('cart.checkout.submit') }} --}}
                                <p><button class="btn btn-primary" type="submit" >Hoàn tất thanh toán</button></p>
                                {{-- <p><a href="" class="btn btn-primary" disable>Hoàn tất thanh toán</a></p> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
