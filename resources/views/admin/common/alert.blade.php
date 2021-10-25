@if (Session::has('success'))
    <div class="col-md-12">
        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <h5><i class="icon fas fa-check"></i> Thông báo!</h5>
            {{ Session::get('success') }}
        </div>
    </div>
@elseif (Session::has('error'))
    <div class="alert alert-danger alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
        <h5><i class="icon fas fa-ban"></i> Thông báo!</h5>
        {{ Session::get('error') }}
    </div>
@endif
