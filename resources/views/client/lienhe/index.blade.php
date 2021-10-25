@extends('client.template.master')
@section('content')

		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h3>Thông tin liên hệ</h3>
						<div class="row contact-info-wrap">
							<div class="col-md-3">
								<p><span><i class="icon-location"></i></span>Cầu Giầy, Hà Nội</p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-phone3"></i></span> <a href="tel://1234567920">+84 772 377 669</a></p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-paperplane"></i></span> <a href="mailto:info@yoursite.com">infor@otdshopping.com</a></p>
							</div>
							<div class="col-md-3">
								<p><span><i class="icon-globe"></i></span> <a href="#">OTDShopping.com</a></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="contact-wrap">
							<h3>Liên hệ ngay</h3>
							<form action="#" class="contact-form">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="fname">Họ tên</label>
											<input type="text" id="fname" class="form-control" placeholder="Tên của bạn">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="email">Email</label>
											<input type="text" id="email" class="form-control" placeholder="Email">
										</div>
									</div>
									<div class="w-100"></div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="message">Nội dung</label>
											<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Nội dung"></textarea>
										</div>
									</div>
									<div class="w-100"></div>
									<div class="col-sm-12">
										<div class="form-group">
											<input type="submit" value="Gửi" class="btn btn-primary">
										</div>
									</div>
								</div>
							</form>		
						</div>
					</div>
					<div class="col-md-6">
						<div id="map" class="colorlib-map"></div>		
					</div>
				</div>
			</div>
		</div>
@endsection
@push('scripts')
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD57PRHJQSQ5XQOuNtAWpRBOP-UCX5pSzA&sensor=false"></script>
	 <script>
		 var directionsDisplay;
			var directionsService = new google.maps.DirectionsService();

			function InitializeMap() {
				directionsDisplay = new google.maps.DirectionsRenderer();
				var latlng = new google.maps.LatLng(-34.397, 150.644);
				var myOptions =
				{
					zoom: 8,
					center: latlng,
					mapTypeId: google.maps.MapTypeId.ROADMAP
				};
				var map = new google.maps.Map(document.getElementById("map"), myOptions);

				directionsDisplay.setMap(map);
				directionsDisplay.setPanel(document.getElementById('directionpanel'));

				var control = document.getElementById('control');
				control.style.display = 'block';
			}

			function calcRoute() {
				var start = document.getElementById('startvalue').value;
				var end = document.getElementById('endvalue').value;
				var request = {
					origin: start,
					destination: end,
					travelMode: google.maps.DirectionsTravelMode.DRIVING
				};
				directionsService.route(request, function (response, status) {
					if (status == google.maps.DirectionsStatus.OK) {
						directionsDisplay.setDirections(response);
					}
				});
			}

			function Button1_onclick() {
				calcRoute();
			}

			window.onload = InitializeMap;
	 </script>
@endpush
