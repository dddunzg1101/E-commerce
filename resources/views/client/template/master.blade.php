<!DOCTYPE HTML>
<html>
	<head>
	<title>OTD Shopping</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	@include('client.template.css')

	</head>
	<style>
		ul#custom-sanpham {
			width: 500px;
			flex-wrap: wrap;
			display:flex !important;
		}

		ul#custom-sanpham > li {
		
			width: 50%;
		}
		.colorlib-nav ul li.has-dropdown .dropdown{
			top:0 !important;
		}
	</style>

	<body>

	{{-- <div class="colorlib-loader"></div> --}}

	<div id="page">
		@include('client.template.header')

        @yield('content')

		@include('client.template.footer')
		@include('client.template.js')
        @stack('product-detail')
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>

	</body>
</html>

