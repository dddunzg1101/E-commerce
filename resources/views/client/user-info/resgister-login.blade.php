@extends('client.template.master')
@section('content')
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="bread"><span><a href="index.html">Trang chủ</a></span> / <span>Đăng nhập & Đăng ký</span></p>
            </div>
        </div>
    </div>
</div>


<div id="colorlib-contact">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                @if(Session::has('messLogin'))
               <p class="alert alert-danger">{{ Session::get('messLogin') }}</p>
               @endif
                <div class="contact-wrap">
                    <h3>Đăng nhập</h3>
                    <form action="{{ route('auth.handle.login') }}" method="POST" class="contact-form">
                        @csrf
                        <div class="row">
                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="email">Tên đăng nhập</label>
                                    <input type="text" id="email" class="form-control" name="tenDangNhap" placeholder="Your email address">
                                </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="subject">Mật khẩu</label>
                                    <input type="password" id="subject" class="form-control" name="matKhau" placeholder="Your subject of this message">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <input type="submit" value="Đăng nhập" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                @if(Session::has('messDangKy'))
                    <p class="alert alert-info">{{ Session::get('messDangKy') }}</p>
                    @endif
                <div class="contact-wrap">
                    <h3>Đăng ký</h3>
                    <form action="{{ route('auth.handle.register') }}" method="POST" class="contact-form">
                        @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="fname">Họ tên</label>
                                    <input type="text" required name="hoTen" id="fname" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="lname">Email</label>
                                    <input type="email" required name="email" id="lname" class="form-control">
                                </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="email">Tên đăng nhập</label>
                                    <input type="text" required name="tenDangNhap" id="email" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="email">Mật khẩu</label>
                                    <input type="password" required name="matKhau" id="email" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="email">Nhập lại mật khẩu</label>
                                    <input type="password" required name="reMatKhau" id="email" class="form-control">
                                </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="message">Địa chỉ</label>
                                    <textarea required name="diaChi" id="message" cols="30" rows="10" class="form-control"></textarea>
                                </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <input type="submit" value="Đăng ký" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
