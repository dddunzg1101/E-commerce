@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
    Sản phẩm
@endsection

{{-- set title page --}}
@section('title-page')
    Sản phẩm
@endsection

{{-- set title direct --}}
@section('title-direct')
    Sản phẩm
@endsection

{{-- set content --}}
@section('content')
    {{-- thông báo --}}
    @include('admin.common.alert')
    <div class="row">
        <div class="col-md-12">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#create">
                Thêm mới
            </button>
        </div>
    </div>
    <!-- Button trigger modal -->

    <!-- Modal -->
    <div class="row">
        <div class="col-md-12">
            <table class="table table-light">
                <thead class="thead-light">
                    <tr>
                        <th>#</th>
                        <th>Mã hóa đơn</th>
                        <th>Tổng tiền</th>
                        <th>Ngày lập</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($hoaDon as $key => $item)
                        <tr>
                            <td>{{ $key + 1 }}</td>
                            <td>{{ $item->hd_ma }}</td>
                            <td>{{ number_format($item->hd_tongtien) }}</td>
                            <td>{{ $item->hd_ngaylap }}</td>
                            <td>
                                @if ( $item->hd_trangthai == 1)
                                    <span style="color:green"> Thành công</span>
                                @endif
                            </td>
                            <td>
                                <a href="{{ route('store.hoadon.chitiet', ['id'=>$item->hd_id]) }}" class="btn btn-warning">Chi tiết</a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- ./col -->
    </div>
@endsection
