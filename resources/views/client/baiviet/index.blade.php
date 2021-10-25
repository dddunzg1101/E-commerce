@extends('client.template.master')
@section('content')
<div class="colorlib-about">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-sm-6 mb-3">
						<div class="video colorlib-video" style="background-image: url('{{asset('/frontend/client/images/about.jpg')}}');">
							<a href="https://www.youtube.com/watch?v=Xd7j0mJ1OSo" class="popup-vimeo"><i class="icon-play3"></i></a>
							<div class="overlay"></div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="about-wrap">
							<h2>OTD Shopping là trang thương mại điện tử hàng đầu Việt Nam</h2>
							<p>Doan Duc Dung</p>
						</div>
					</div>
				</div>
			</div>
		</div>

@endsection
