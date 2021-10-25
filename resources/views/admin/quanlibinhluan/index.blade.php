@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
   Quản lí bình luận
@endsection

{{-- set title page --}}
@section('title-page')
    Quản lí bình luận
@endsection

{{-- set title direct --}}
@section('title-direct')
   Bình luận
@endsection

{{-- set content --}}
@section('content')
    {{-- thông báo --}}
    @include('admin.common.alert')

      <!-- /.row -->
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Nội dung bình luận</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0" style="height: 300px;">
                <table class="table table-head-fixed text-nowrap">
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Khách hàng</th>
                      <th>Sản phẩm</th>
                      <th>Trạng thái</th>
                      <th>Nội dung</th>
                      <th>Thao tác</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($bl as $key=> $item)
                    <tr>
                          
                      <td>{{$key+1}}</td>
                      <td>{{$item->khachhang->kh_hoten}}</td>
                      <td>{{$item->sanpham->sp_ten}}</td>
                      <td><span class="tag tag-success">Mới</span></td>
                      <td>{{$item->bl_noidung}}</td>
                      <td>
                          {{-- Nghĩa chú ý chổ này nha..cái id sp --}}
                          <a href="{{ route('item.detail',$item->sp_id) }}" class="btn btn-warning">Xem chi tiết</a>
                          <a href="#" class="btn btn-danger">Xóa</a>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
@endsection
