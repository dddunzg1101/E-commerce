<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
        <img src="{{ asset('frontend/admin') }}/dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
            class="brand-image img-circle elevation-3" style="opacity: .8">
        {{-- <span class="brand-text font-weight-light">{{Auth::guard('khachhang')->user()->cuahang->ch_ten??''}}</span> --}}
        <span class="brand-text font-weight-light">OTD Shopping</span>
        </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{ asset('frontend/admin') }}/dist/img/user2-160x160.jpg"
                    class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">{{ Auth::guard('khachhang')->user()->kh_hoten }}</a>
                <br>
                <a href="{{ route('auth.info.customer') }}" class="d-block" style="color:red;">Quay lại</a>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="false">

                <li class="nav-item">
                    <a href="#" class="nav-link
                    @if (Request::path() == 'quan-tri')
                        active
                    @endif
                    ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Tổng quan</p>
                    </a>
                </li>

                <li class="nav-header">Quản lý quy trình</li>
                <li class="nav-item">
                    <a href="{{ route('store.hoadon') }}" class="nav-link
                    @if (Request::segment(2) == 'hoa-don')
                        active
                    @endif
                    ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Đơn hàng</p>
                    </a>
                </li>

                <li class="nav-header">Quản lý cửa hàng</li>
                <li class="nav-item">
                    <a href="{{route('store.getListProductType')}}" class="nav-link
                    @if (Request::segment(2) == 'danh-muc')
                        active
                    @endif
                    ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Loại sản phẩm</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('store.getListProduct')}}" class="nav-link
                    @if (Request::segment(2) == 'san-pham')
                        active
                    @endif
                    ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Sản phẩm</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('store.tkdoanhthu') }}" class="nav-link
                    @if (Request::segment(2) == 'thong-ke-doanh-thu')
                        active
                    @endif
                    ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Thống kê doanh thu</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('store.binhluan') }}" class="nav-link
                    @if (Request::segment(2) == '/binh-luan')
                        active
                    @endif
                    ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Quản lí binh luận</p>
                    </a>
                </li>
                <li class="nav-header">
                    <a href=" {{route('item.index')}} "> Trở về trang chủ </a>
                </li>
                <li class="nav-header">Dữ liệu chính</li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
