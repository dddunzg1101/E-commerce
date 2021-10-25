@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
    Loại sản phẩm
@endsection

{{-- set title page --}}
@section('title-page')
    Loại sản phẩm
@endsection

{{-- set title direct --}}
@section('title-direct')
    Loại sản phẩm
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
          <h5 class="modal-title" id="createLabel">Thêm loại</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{route('store.storeProductType')}}" method="post">
            @csrf
            <div class="modal-body">
                <input type="text" class="form-control" name="dm_ten" required maxlength="30" placeholder="Tên danh mục">
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
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data as $key=>$item)
                    <tr>
                        <td>{{$key+1}}</td>
                        <td>{{$item->dm_ten}}</td>
                        <td>
                            <form action="{{route('store.deleteProductType',$item)}}" method="post">
                                @csrf
                                <a href="#" class="btn btn-warning" data-toggle="modal" data-target="#update{{$item->dm_id}}">Chỉnh sửa</a>
                                <button type="submit" class="btn btn-danger del">Xóa</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
            @foreach ($data as $item)
                <!-- Modal -->
                <div class="modal fade" id="update{{$item->dm_id}}" tabindex="-1" role="dialog" aria-labelledby="createLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                        <h5 class="modal-title" id="createLabel">Thêm loại</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <form action="{{route('store.updateProductType',$item)}}" method="post">
                            @csrf
                            <div class="modal-body">
                                <input type="text" class="form-control" name="dm_ten" required maxlength="30" value="{{$item->dm_ten}}" placeholder="Tên danh mục">
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
