@extends('client.template.master')
@section('content')
    <div class="colorlib-product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="cart-detail">
                                <h2>Thông tin cá nhân</h2>
                                <ul>
                                    <li><b>Họ tên: </b>{{ Auth::guard('khachhang')->user()->kh_hoten }} 
                                    </li>
                                    <li><b>Email:  </b> 
                                        {{ Auth::guard('khachhang')->user()->kh_email }}
                                    </li>
                                    <li><b>Địa chỉ:  </b>{{ Auth::guard('khachhang')->user()->kh_diachi }}</li>
                                </ul>
                            </div>
                        </div>

                        <div class="w-100"></div>

                        <div class="col-md-12">
                            <div class="cart-detail">
                                <h2>Thông tin cửa hàng</h2>
                                @if ($storeInfo == null)
                                    <div class="form-group">
                                        <div class="col-md-12">
                                            <div class="radio">
                                                Bạn chưa có thông tin cửa hàng
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12 text-center">
                                        <p><a href="{{ route('auth.store.register') }}" class="btn btn-primary">Tạo cửa hàng</a></p>
                                    </div>
                                @else
                                <div class="col-md-12 text-center">
                                    <p><a href="{{ route('store.info') }}" class="btn btn-primary">Thông tin cửa hàng</a></p>
                                </div>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="row">

                    </div>
                </div>
                <div class="col-lg-8">
                    {{-- <form method="post" class="colorlib-form">
                        <h2>Billing Details</h2>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="country">Select Country</label>
                                    <div class="form-field">
                                        <i class="icon icon-arrow-down3"></i>
                                        <select name="people" id="people" class="form-control">
                                            <option value="#">Select country</option>
                                            <option value="#">Alaska</option>
                                            <option value="#">China</option>
                                            <option value="#">Japan</option>
                                            <option value="#">Korea</option>
                                            <option value="#">Philippines</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="fname">First Name</label>
                                    <input type="text" id="fname" class="form-control" placeholder="Your firstname">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lname">Last Name</label>
                                    <input type="text" id="lname" class="form-control" placeholder="Your lastname">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="companyname">Company Name</label>
                                    <input type="text" id="companyname" class="form-control" placeholder="Company Name">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="fname">Address</label>
                                    <input type="text" id="address" class="form-control" placeholder="Enter Your Address">
                                </div>
                                <div class="form-group">
                                    <input type="text" id="address2" class="form-control" placeholder="Second Address">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="companyname">Town/City</label>
                                    <input type="text" id="towncity" class="form-control" placeholder="Town or City">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="stateprovince">State/Province</label>
                                    <input type="text" id="fname" class="form-control" placeholder="State Province">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="lname">Zip/Postal Code</label>
                                    <input type="text" id="zippostalcode" class="form-control" placeholder="Zip / Postal">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="email">E-mail Address</label>
                                    <input type="text" id="email" class="form-control" placeholder="State Province">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="Phone">Phone Number</label>
                                    <input type="text" id="zippostalcode" class="form-control" placeholder="">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="radio">
                                        <label><input type="radio" name="optradio"> Create an Account? </label>
                                        <label><input type="radio" name="optradio"> Ship to different address</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form> --}}
                </div>
            </div>
        </div>
    </div>
@endsection
