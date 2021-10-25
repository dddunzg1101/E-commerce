@extends('admin.template.master')
{{-- set title in website --}}
@section('title')
    Thống kê doanh thu
@endsection

{{-- set title page --}}
@section('title-page')
    Thống kê doanh thu
@endsection

{{-- set title direct --}}
@section('title-direct')
    Thống kê
@endsection

{{-- set content --}}
@section('content')
    {{-- thông báo --}}
    @include('admin.common.alert')
    <div class="row">
      <div class="col-md-4">
        <form action="" method="get">
          <select name="year"  class='form-control' style="display: inline!important;
          width: 45%!important;">
            @for ($i=$range['max'];$i>=$range['min'];$i--)
            <option value='{{$i}}' @if ($i==$request->year) selected @endif>{{$i}}</option>
            @endfor
          </select>
          <select name="dm_id"  class='form-control' style="display: inline!important;
          width: 45%!important;">
            <option value='0' @if (0==$request->dm_id) selected @endif>--Tất cả--</option>
            @foreach ($danhmuc as $item)
            <option value='{{$item->dm_id}}' @if ($item->dm_id==$request->dm_id) selected @endif>{{$item->dm_ten}}</option>
            @endforeach
          </select>
          <button type="submit" class="btn btn-primary">Thống kê</button>
        </form>
      </div>
      <div class="col-md-12">
        <br>
      </div>
      <div class="col-md-12">
          <!-- BAR CHART -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Thống kê doanh thu</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-card-widget="remove"><i class="fas fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <canvas id="myChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
      </div>
    </div>
@endsection
@push('scripts')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  <script>
 var ctx = document.getElementById('myChart');
var myChart = new Chart(ctx, {
    
    data: {
        labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
        datasets: [{
            type: 'bar',
            label: 'Doanh thu',
            yAxisID: 'L',
            data: [{{$data[1]}},{{$data[2]}},{{$data[3]}},{{$data[4]}},{{$data[5]}},{{$data[6]}},{{$data[7]}},{{$data[8]}},{{$data[9]}},{{$data[10]}},{{$data[11]}},{{$data[12]}}],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(220,220,220,0.2)',
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(220,220,220,1)',
            ],
            borderWidth: 1
        },
        {
            type: 'line',
            label: 'Số lượng',
            yAxisID: 'R',
            data: [{{$sl[1]}},{{$sl[2]}},{{$sl[3]}},{{$sl[4]}},{{$sl[5]}},{{$sl[6]}},{{$sl[7]}},{{$sl[8]}},{{$sl[9]}},{{$sl[10]}},{{$sl[11]}},{{$sl[12]}}],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)',
                'rgba(220,220,220,0.2)',
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)',
                'rgba(220,220,220,1)',
            ],
            borderWidth: 1
        }]
    },
    
});
  </script>
@endpush