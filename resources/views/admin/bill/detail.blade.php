@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
    Chi tiết hóa đơn
@endsection

{{-- set title page --}}
@section('title-page')
    Chi tiết hóa đơn
@endsection

{{-- set title direct --}}
@section('title-direct')
    Chi tiết hóa đơn
@endsection

{{-- set content --}}
@section('content')
    {{-- thông báo --}}
    @include('admin.common.alert')
    <div class="row">
        <div class="col-md-12">
            <h3>Mã hóa đơn: {{ $hoaDon->hd_ma }}</h3>
            <h4>Ngày lập: {{ $hoaDon->hd_ngaylap }}</h4>
            <h4>Tổng tiền: {{ number_format($hoaDon->hd_tongtien) }}</h4>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3>Thông tin khách hàng</h3>
            <p>Tên khách hàng: {{ $hoaDon->hd_ten }}</p>
            <p>Số điện thoại: {{ $hoaDon->hd_sdt }}</p>
            <p>Địa chỉ: {{ $hoaDon->hd_diachi }}</p>
        </div>
    </div>
    <!-- Button trigger modal -->

    <!-- Modal -->
    <div class="row">
        <div class="col-md-12">
            <h4>Thông tin sản phẩm</h4>
            <table class="table table-light">
                <thead class="thead-light">
                    <tr>
                        <th>#</th>
                        <th>Tên sản phẩm</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Giá tiền</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($chiTiet as $key => $item)
                        <tr>
                            <td>{{ $key + 1 }}</td>
                            <td>{{ $item->sp_ten }}</td>
                            <td>{{ number_format($item->cthd_dongia) }}</td>
                            <td>{{ $item->cthd_soluong }}</td>
                            <td>{{ number_format($item->cthd_soluong * $item->cthd_dongia) }}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- ./col -->
    </div>
@endsection
