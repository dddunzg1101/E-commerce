@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
    Loại
@endsection

{{-- set title page --}}
@section('title-page')
    Loại
@endsection

{{-- set title direct --}}
@section('title-direct')
    Loại
@endsection

{{-- set content --}}
@section('content')
    {{-- thông báo --}}
    @include('admin.common.alert')
    {{-- Nội dung --}}
    <div class="row">
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Thêm loại</h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form role="form" action="{{ route('movie-type.store') }}" method="POST">
                    @csrf
                    <div class="card-body">
                        <div class="form-group">
                            <label for="typeName">Tên loại</label>
                            <input type="text" class="form-control" id="typeName" name="typeName" placeholder="Nhập tên loại">
                        </div>
                    </div>
                    <!-- /.card-body -->

                    <div class="card-footer">
                        <a href="#" class="btn btn-default">Quay lại</a>
                        <button type="submit" class="btn btn-primary">Thêm mới</button>
                    </div>
                </form>
            </div>
            <!-- /.card -->
        </div>
    </div>
@endsection
