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
  <div class="modal fade" id="create" tabindex="-1" role="dialog" aria-labelledby="createLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="createLabel">Thêm sản phẩm</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{route('store.storeProduct')}}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-4">Danh mục</div>
                    <div class="col-md-8">
                        <select name="dm_id" id="dm_id"  class="form-control">
                        @foreach ($danhmuc as $dm)
                            <option value="{{$dm->dm_id}}">{{$dm->dm_ten}}</option>
                        @endforeach
                        </select>
                    </div>
                    <div class="col-md-4">Tên</div>
                    <div class="col-md-8"><input type="text" class="form-control" name="sp_ten" required maxlength="50"></div>
                    <div class="col-md-4">Hình ảnh</div>
                    <div class="col-md-8"><input type="file" multiple class="form-control" name="hinhanh[]" required></div>
                    <div class="col-md-4">Số lượng</div>
                    <div class="col-md-8"><input type="number" class="form-control" name="sp_soluong" required min="0" onKeyUp="if(this.value<0){this.value='0';}"></div>
                    <div class="col-md-4">Mô tả</div>
                    <div class="col-md-8"><textarea name="sp_mota" cols="30" rows="10" class="form-control"></textarea></div>
                    <div class="col-md-4">Giá bán</div>
                    <div class="col-md-8"><input type="number"  class="form-control" name="sp_giaban" required min="0" onKeyUp="if(this.value<0){this.value='0';}"></div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                <button type="submit" class="btn btn-primary">Lưu</button>
            </div>
        </form>
      </div>
    </div>
  </div>
    <br>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-light">
                <thead class="thead-light">
                    <tr>
                        <th>#</th>
                        <th>Tên loại</th>
                        <th>Tên sản phẩm</th>
                        <th>Tổng số lượng</th>
                        <th>Số lượng đã bán</th>
                        <th>Số lượng còn lại</th>
                        <th>Giá bán</th>
                        <th>Trạng thái</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $key=>$item)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>{{$item->danhmuc->dm_ten}}</td>
                        <td>{{$item->sp_ten}}</td>
                        <td>{{$item->sp_soluong}}</td>
                        <td>{{$item->SLDaBan}}</td>
                        <td>{{$item->SLConLai}}</td>
                        <td>{{number_format($item->sp_giaban)}}</td>
                        <td>
                        <form action="{{route('store.updateProduct',$item->sp_id)}}" method="post">
                            @csrf
                            Hiện SP  <label class="ui-switch success m-t-xs m-r">
                                <input type="checkbox" name="sp_trangthai" data-toggle="toggle" data-onstyle="success" class="cb-check-lesson has-value" @if ($item->sp_trangthai==0)
                                    checked
                                @endif onChange="this.form.submit()">
                                <i></i>
                            </label>
                        </form>
                        </td>
                        <td>
                            <form action="{{route('store.deleteProduct',$item)}}" method="post">
                                @csrf
                                <a href="#" class="btn btn-warning" data-toggle="modal" data-target="#update{{$item->sp_id}}">Chỉnh sửa</a>
                                <a href="{{ route('store.detailProduct',$item->sp_id) }}" class="btn btn-warning">Xem chi tiết</a>
                                <button type="submit" class="btn btn-danger del">Xóa</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            @foreach ($data as $item)
                <!-- Modal -->
                <div class="modal fade" id="update{{$item->sp_id}}" tabindex="-1" role="dialog" aria-labelledby="createLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h5 class="modal-title" id="createLabel">Thêm sản phẩm</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <form action="{{route('store.updateProduct',$item->sp_id)}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-4">Danh mục</div>
                                    <div class="col-md-8">
                                       <select name="dm_id" id="dm_id" class="form-control">
                                    @foreach ($danhmuc as $dm)
                                        <option value="{{$dm->dm_id}}" @if ($dm->dm_id==$item->dm_id)
                                            selected
                                        @endif>{{$dm->dm_ten}}</option>
                                    @endforeach
                                </select>
                                    </div>
                                    <div class="col-md-4">Tên</div>
                                    <div class="col-md-8"><input type="text" class="form-control" name="sp_ten" required maxlength="50" value="{{$item->sp_ten}}"></div>
                                    <div class="col-md-4">Hình ảnh</div>
                                    <div class="col-md-8"><input type="file" class="form-control" multiple  name="hinhanh[]"></div>
                                    <div class="col-md-4">Số lượng</div>
                                    <div class="col-md-8"><input type="number" class="form-control" name="sp_soluong" required  value="{{$item->sp_soluong}}" min="0" onKeyUp="if(this.value<0){this.value='0';}"></div>
                                    <div class="col-md-4">Mô tả</div>
                                    <div class="col-md-8"><textarea name="sp_mota" cols="30" rows="10" class="form-control"> {{$item->sp_mota}}</textarea></div>
                                    <div class="col-md-4">Giá bán</div>
                                    <div class="col-md-8"><input type="number" class="form-control" name="sp_giaban" required  value="{{$item->sp_giaban}}" min="0" onKeyUp="if(this.value<0){this.value='0';}"></div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                                <button type="submit" class="btn btn-primary">Lưu</button>
                            </div>
                        </form>
                    </div>
                    </div>
                </div>
            @endforeach
            {{-- <div class="container">
                {{ $gopY->links() }}
            </div> --}}
            {{-- <div class="box-footer clearfix">
                <ul class="pagination no-margin pull-right">
                    {{ $movieType->links() }}
                </ul>
            </div> --}}
        </div>
        <!-- ./col -->
    </div>
@endsection
@push('scripts')
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>

@endpush
