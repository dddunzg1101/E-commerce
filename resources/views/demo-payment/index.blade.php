<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Title</title>
    <style>
        .payment {
            max-width: 289px;
            margin: auto;
            margin-top: 40%;
        }

        form#sendPayment {
            width: 100%;
            display: flex;
        }

        button.btn.btn-success {
            width: 160px;
}
    </style>
</head>

<body>

    <div class="container">
       <div class="row">
           <div class="col-md-12">
               <div class="payment">
                   <form method="post" action="{{ route('submit.form') }}" id="sendPayment">
                       @csrf
                       <div class="input-group">
                           <input class="form-control" type="text" name="price">
                       </div>
                       <button class="btn btn-success" type="submit" >Thanh Toán</button>
                   </form>
               </div>
           </div>
       </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.min.js"></script>
</body>

</html>
