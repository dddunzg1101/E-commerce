@extends('client.template.master')
@section('content')

<div class="colorlib-product">
	<div class="container">
		<div class="row row-pb-lg product-detail-wrap">
			<div class="col-sm-8">
				<div class="owl-carousel">
					{{-- @foreach ($sanPham->hinhanh as $hinhanh)
					<div class="item">
						<div class="product-entry border">
							<a href="#" class="prod-img">
								<img src="{{asset($hinhanh->ha_duongdan??'')}}" class="img-fluid">
							</a>
						</div>
					</div>
					@endforeach --}}
				</div>
			</div>
			<div class="col-sm-4">
				<div class="product-desc">
					<h3>{{$sanPham->sp_ten}}</h3>
					<p class="price">
						<span>{{number_format($sanPham->sp_giaban)}} đ</span>
					</p>
					{{-- Không được bỏ chổ này --}}
					<div class="size-wrap">
						<div class="block-26 mb-2">
						</div>
						<div class="block-26 mb-4">
						</div>
						{{-- đây -> lỗi icon đấy--xem lại--}}
					</div>
					<div class="input-group mb-4">
						<span class="input-group-btn">
							<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
								<i class="icon-minus2"></i>
							</button>
						</span>
						<input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
						<span class="input-group-btn ml-1">
							<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
								<i class="icon-plus2"></i>
							</button>
						</span>
					</div>
					{{-- <div class="row">
						<div class="col-sm-12 text-center">
							<p class="addtocart"><a href="{{ route('cart.addtocart',['san_pham_id'=>$sanPham->sp_id]) }}" class="btn btn-primary btn-addtocart"><i class="icon-shopping-cart"></i> Add to Cart</a></p>
						</div>
					</div> --}}
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-md-12 pills">
						<div class="bd-example bd-example-tabs">
							<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

								<li class="nav-item">
									<a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">Mô tả sản phẩm</a>
								</li>
								    {{-- <li class="nav-item">
								      <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Manufacturer</a>
								  </li> --}}
								  <li class="nav-item">
								  	<a class="nav-link" id="pills-review-tab" data-toggle="pill" href="#pills-review" role="tab" aria-controls="pills-review" aria-expanded="true">Bình luận - Đánh giá</a>
								  </li>
								</ul>

								<div class="tab-content" id="pills-tabContent">
									<div class="tab-pane border fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
										{{-- {{$sanPham->sp_mota}} --}}
										Mô tả
									</div>

								    {{-- <div class="tab-pane border fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab">
								      <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
										<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p>
									</div> --}}

									<div class="tab-pane border fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab">
										<div class="row">
											<div class="col-md-8">
												<h3 class="head">{{count($binhluan)}} Bình luận</h3>
												<div class="review">
													@foreach ($binhluan as $item)
													<div class="desc">
														<h4>
															<span class="text-left">{{$item->user->kh_hoten}}</span>
														</h4>
														<p>{{$item->bl_noidung}}</p>
														<span class="text-right"><a href="#" class="reply" id="reply"><i class="icon-reply"></i></a></span>
														<div class="reply-comment" style="display:none">
															<form action="{{route('binhluan.submit',$sanPham->sp_id)}}" method="post">
																@csrf
																<div class="form-group">
																<input type="text"
																class="form-control" name="bl_noidung" aria-describedby="helpId">
																<input class="form-control" type="hidden" name="bl_id_rep" value="{{$item->bl_id}}">
																</div>
																{{-- chọn sự kiện enter khi gửi --}}
															</form>
														</div>
													</div>
													@endforeach
												</div>
											</div>

										</div>
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
	@push('scripts')
		<script>
		$("#reply").click(function (e) {
			e.preventDefault();
			$(".reply-comment").toggle();
		});
	</script>
	@endpush
