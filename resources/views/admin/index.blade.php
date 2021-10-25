@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
    Bảng điều khiển
@endsection

{{-- set title page --}}
@section('title-page')
    Bảng điều khiển
@endsection

{{-- set title direct --}}
@section('title-direct')
    Bảng điều khiển
@endsection

{{-- set content --}}
@section('content')
<link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet">
    {{-- Nội dung --}}
    <form action="{{route('store.update',$cuaHang->ch_id)}}" method="post">
        @csrf
        Tạm nghỉ bán  <label class="ui-switch warning m-t-xs m-r">
            <input type="checkbox" name="ch_trangthai" data-toggle="toggle" data-onstyle="warning" class="cb-check-lesson has-value" @if ($cuaHang->ch_trangthai==0)
                checked
            @endif onChange="this.form.submit()">
            <i></i>
        </label>
    </form>
@endsection
@push('scripts')
<script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>

@endpush
