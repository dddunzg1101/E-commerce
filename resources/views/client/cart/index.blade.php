@extends('client.template.master')
@section('content')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="bread"><span><a href="index.html">Trang chủ</a></span> / <span>Giỏ hàng</span></p>
                </div>
            </div>
        </div>
    </div>


    <div class="colorlib-product">
        <div class="container">
            @if (Session::has('alert'))
            <div class="row row-pb-lg">
                <div class="alert alert-primary" role="alert">
                    {{ Session::get('alert') }}
                </div>
            </div>
            @endif
            <div class="row row-pb-lg">
                <div class="col-md-10 offset-md-1">
                    <div class="process-wrap">
                        <div class="process text-center active">
                            <p><span>01</span></p>
                            <h3>Giỏ hàng</h3>
                        </div>
                        <div class="process text-center">
                            <p><span>02</span></p>
                            <h3>Thanh toán</h3>
                        </div>
                        <div class="process text-center">
                            <p><span>03</span></p>
                            <h3>Hoàn tất đơn hàng</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row row-pb-lg">
                <div class="col-md-12">
                    <div class="product-name d-flex">
                        <div class="one-forth text-left px-4">
                            <span>Chi tiết đơn hàng</span>
                        </div>
                        <div class="one-eight text-center">
                            <span>Giá</span>
                        </div>
                        <div class="one-eight text-center">
                            <span>Số lượng</span>
                        </div>
                        <div class="one-eight text-center">
                            {{-- <span>Số lượng</span> --}}
                        </div>
                        <div class="one-eight text-center">
                            <span>Tổng</span>
                        </div>
                        <div class="one-eight text-center px-4">
                            <span>Xóa</span>
                        </div>
                    </div>
                    {{-- Cart::content()->groupBy('options.store') as $key => $value --}}
                    {{-- {{ dd(Cart::content()->groupBy('options.store')) }} --}}
                    @foreach ($cart->groupBy('options.store') as $key => $value)
                        <div class="product-cart d-flex">
                            <b>Tên cửa hàng: </b>
                            {{ DB::table('cuahang')->where('ch_id', $key)->first()->ch_ten }}
                        </div>
                        @foreach ($value as $item)

                        {{-- {{ $item->options->store }} --}}
                        <div class="product-cart d-flex">
                            <div class="one-forth">
                                <div class="product-img" style="background-image: url(images/item-6.jpg);">
                                </div>
                                <div class="display-tc">
                                    <h3>{{ $item->name }}</h3>
                                </div>
                            </div>
                            <div class="one-eight text-center">
                                <div class="display-tc">
                                    <span class="price">{{ number_format($item->price) }}</span>
                                </div>
                            </div>
                            <form action="{{ route('cart.update.qty', ['rowId' => $item->rowId]) }}">
                                <div class="one-eight text-center">
                                    <div class="display-tc">
                                        <input type="number" value="{{ $item->qty }}" id="quantity" name="quantity"
                                            class="form-control input-number text-center" value="1" min="1" max="100">
                                    </div>
                                    <div class="display-tc">
                                        <button type="submit" class="btn btn-primary">Cập nhật</button>
                                    </div>
                                </div>
                            </form>
                            <div class="one-eight text-center">
                                <div class="display-tc">
                                    <span class="price">{{ number_format($item->subtotal) }}</span>
                                </div>
                            </div>
                            <div class="one-eight text-center">
                                <div class="display-tc">
                                    <a href="{{ route('cart.remove.item', ['rowId' => $item->rowId]) }}"
                                        class="closed"></a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    @endforeach
                </div>
            </div>
            <div class="row row-pb-lg">
                <div class="col-md-12">
                    <div class="total-wrap">
                        <div class="row">
                            <div class="col-sm-8"></div>
                            <div class="col-sm-4 text-center">
                                <div class="total">
                                    {{-- <div class="sub">
                                    <p><span>Tạm tính:</span> <span>{{ Cart::priceTotal() }}</span></p>
                                    <p><span>Phí vận chuyển:</span> <span>30.000</span></p>
                                </div> --}}
                                    <div class="grand-total">
                                        <p><span><strong>Tổng tiền:</strong></span> <span>{{ Cart::priceTotal() }}</span>
                                        </p>
                                    </div>
                                    <div class="col-sm-3">
                                         @if(Cart::priceTotal(0,0)!="00.0") 
                                        <a href="{{ route('cart.checkout') }}"    class="btn btn-primary">Thanh toán</a>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
