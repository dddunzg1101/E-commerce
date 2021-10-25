@extends('client.template.master')
@section('content')
    <div class="colorlib-product">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="cart-detail">
                                <h2>Thông tin cá nhân</h2>
                                <ul>
                                    <li><span><b>Họ tên</b> </span>
                                        <span>{{ Auth::guard('khachhang')->user()->kh_hoten }}</span>
                                    </li>
                                    <li><span><b>Email</b> </span>
                                        <span>{{ Auth::guard('khachhang')->user()->kh_email }}</span>
                                    </li>
                                    <li><span><b>Địa chỉ</b></span></li>
                                    <li><span>{{ Auth::guard('khachhang')->user()->kh_diachi }}</span></li>
                                </ul>
                            </div>
                        </div>

                        <div class="w-100"></div>

                        <div class="col-md-12">
                            <div class="cart-detail">
                                <h2>Thông tin cửa hàng</h2>
                                @if ($storeInfo == null)
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                Bạn chưa có thông tin cửa hàng
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 text-center">
                                        <p><a href="{{ route('auth.store.register') }}" class="btn btn-primary">Tạo cửa hàng</a></p>
                                    </div>
                                @else
                                <div class="col-md-12 text-center">
                                    <p><a href="{{ route('store.info') }}" class="btn btn-primary">Thông tin cửa hàng</a></p>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row">

                    </div>
                </div>
                <div class="col-lg-8">
                        @if(Session::has('messCreateStore'))
                <p class="alert alert-info">{{ Session::get('messCreateStore') }}</p>
                @endif
                    <form method="post" class="colorlib-form" action="{{ route('store.handle.register') }}">
                        @csrf
                        <h2>Thông tin đăng ký cửa hàng</h2>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="companyname">Tên cửa hàng</label>
                                    <input type="text" id="companyname" class="form-control" name="tenCuaHang">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="fname">Địa chỉ</label>
                                    <input type="text" id="address" class="form-control" name="diaChi">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <input type="submit" value="Tạo cửa hàng" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
