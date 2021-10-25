@extends('client.template.master')
@section('content')
<div class="colorlib-product">
   
    <div class="container"> 
        @if ($data->isEmpty())
            <div class="row">
                <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
                    <h2>Không có sản phẩm phù hợp</h2>
                </div>
            </div>             
         @else
            <div class="row">
                <div class="col-sm-8 offset-sm-2 text-center colorlib-heading">
                    <h2>Sản phẩm</h2>
                </div>
            </div>
            <div class="row row-pb-md">
                @foreach ($data as $item)
                <div class="col-lg-3 mb-4 text-center">
                    <div class="product-entry border">
                        <a href="{{route('item.detail',$item->sp_id)}}" class="{{$item->sp_ten}}">
                            <img src="{{asset($item->mothinhanh->ha_duongdan??'')}}" class="img-fluid" alt="{{$item->sp_ten}}">
                        </a>
                        <div class="desc">
                            <h2><a href="{{route('item.detail',$item->sp_id)}}">{{$item->sp_ten}}</a></h2>
                            <span class="price">{{number_format($item->sp_giaban)}} đ</span>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                {{ $data->links('client.sanpham.customtemplate') }}
                </div>
            </div> 
            @endif
    </div>
</div>
@endsection
@push('scripts')
@if(Session::has('messPayment'))
    <script>
        alert('Thanh toán thành công');
    </script>
@endif
@if(Session::has('messPaymentEror'))
    <script>
        alert('Thanh toán thất bại');
    </script>
@endif

@endpush