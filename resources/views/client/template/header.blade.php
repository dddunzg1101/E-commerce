<nav class="colorlib-nav" role="navigation">
    <div class="top-menu">
        <div class="container">
            <div class="row">
                <div class="col-sm-7 col-md-9">
                    <div id="colorlib-logo"><a href="{{route('item.index')}}">OTD Shopping</a></div>
                </div>
                <div class="col-sm-5 col-md-3">
                    <form action="{{route('item.search')}}" class="search-wrap" method="get">
                        <div class="form-group">
                            <input type="search" class="form-control search" placeholder="Tìm kiếm" name="search">
                            <button class="btn btn-primary submit-search text-center" type="submit"><i
                                    class="icon-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-left menu-1">
                    <ul>
                        <li class="active"><a href="{{route('item.index')}}">Trang chủ</a></li>
                        <li class="has-dropdown">
                            <a href="">Danh mục sản phẩm</a>
                            <ul class="dropdown " id="custom-sanpham">
                                @foreach ($loaisp as $item)
                                    <li><a href="{{ route('spdanhmuc.index', ['id'=>$item->dm_id]) }}"> {{$item->dm_ten}} </a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li><a href="{{ route('getNews') }}">Bài viết</a></li>
                        <li><a href="{{ route('getContact') }}">Liên hệ</a></li>
                        @if (Auth::guard('khachhang')->check())
                            <li class="cart"><a href="{{ route('auth.logout') }}" style="color: red;"> Đăng xuất</a>
                            <li  class="cart"><a href="{{ route('auth.info.customer') }}">Khách hàng</a></li>
                        @else
                        <li class="cart"><a href="{{ route('auth.view.register') }}"> Đăng nhập / Đăng ký</a>
                        </li>
                        @endif

                        <li class="cart"><a href="{{ route('cart.index') }}"><i class="icon-shopping-cart"></i> Giỏ hàng [{{ Cart::count(); }}]</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="sale">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 offset-sm-2 text-center">
                    <div class="row">
                        <div class="owl-carousel2">
                            <div class="item">
                                <div class="col">
                                    <h3><a href="#">Giảm 50% khi nhập mã: OTD11 cho khách hàng mới</a></h3>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col">
                                    <h3><a href="#">11.11 Sale bùng nổ</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
@if (Request::segment(1) == '')
<aside id="colorlib-hero">
    <div class="flexslider">
        <ul class="slides">
            <li style="background-image: url({{ asset('frontend/client') }}/images/banner1.png);">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                            <div class="slider-text-inner">
                                <div class="desc">
                                    <h1 class="head-1"></h1>
                                    <h2 class="head-2"></h2>
                                    <h2 class="head-3"></h2>
                                    <p class="category"><span></span></p>                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li style="background-image: url({{ asset('frontend/client') }}/images/banner2.png);">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                            <div class="slider-text-inner">
                                <div class="desc">
                                    <h1 class="head-1"></h1>
                                    <h2 class="head-2"></h2>
                                    <h2 class="head-3"><strong class="font-weight-bold"></strong></h2>
                                    <p class="category"><span></span></p>                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li style="background-image: url({{ asset('frontend/client') }}/images/banner3.png);">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6 offset-sm-3 text-center slider-text">
                            <div class="slider-text-inner">
                                <div class="desc">
                                    <h1 class="head-1"></h1>
                                    <h2 class="head-2"></h2>
                                    <h2 class="head-3"><strong class="font-weight-bold"></strong>
                                    </h2>
                                    <p class="category"><span></span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</aside>
@endif
