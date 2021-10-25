@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
    Chi tiết sản phẩm
@endsection

{{-- set title page --}}
@section('title-page')
   Chi tiết sản phẩm
@endsection

{{-- set title direct --}}
@section('title-direct')
    Chi tiết sản phẩm
@endsection

{{-- set content --}}
@section('content')
 <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body">
          <div class="row">
            <div class="col-12 col-sm-6">
              <h3 class="d-inline-block d-sm-none">{{$sanPham->sp_ten}}</h3>
              <div class="col-12">
                <img src="{{asset($sanPham->hinhanh[0]->ha_duongdan??'')}}" class="product-image" alt="{{$sanPham->sp_ten}}">
              </div>
              <div class="col-12 product-image-thumbs">
                @foreach ($sanPham->hinhanh as $key=>$item)
                    
                <div class="product-image-thumb @if ($key==0)
                    active
                @endif "><img src="{{asset($item->ha_duongdan??'')}}" alt="{{$sanPham->sp_ten}}"></div>
                @endforeach
               </div>
            </div>
            <div class="col-12 col-sm-6">
              <h3 class="my-3">{{$sanPham->sp_ten}}</h3>
              <p>{{$sanPham->sp_mota}}</p>
              <p>Số lượng: {{$sanPham->sp_soluong}}</p>
              <p>Số lượng còn lại: {{$sanPham->SLConLai}}</p>

              <hr>
            
              <div class="bg-gray py-2 px-3 mt-4">
                <h2 class="mb-0">
                  {{number_format($sanPham->sp_giaban)}} đ
                </h2>
              </div>

            </div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>

@endsection
