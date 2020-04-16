<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Medical</title>
        <link rel="icon" href="{{url('../resources/img/favicon.png')}}">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/bootstrap.min.css')}}">
        <!-- animate CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/animate.css')}}">
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/owl.carousel.min.css')}}">
        <!-- themify CSS -->
        
        <!-- flaticon CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/flaticon.css')}}">
        <!-- magnific popup CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/magnific-popup.css')}}">
        <!-- nice select CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/nice-select.css')}}">
        <!-- swiper CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/slick.css')}}">
        <!-- style CSS -->
        <link rel="stylesheet" href="{{url('../resources/css/style.css')}}">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
        body{
            background:#fafafa;
        }
        .main{
            background:#fff;
            padding:30px;
        }
        .custom-form{
            border:none;
            border-bottom:green 3px solid;
            border-radius:0;
        }
    </style>
    <title>HASIL TEST</title>
  </head>
  <body>
  <div class="container">
        <div class="col-lg-12">
        <nav style="margin:20px;">
            <a class="navbar-brand" href="#"> <img src="{{url('../resources/img/logo.png')}}" alt="logo"> </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
        </nav>
        </div>
    </div>
    <main>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="main">
                    <h3>Hai {{$questioner->name}}!, Your test is complete.</h3>
                    <h3>Total Yes Answer : {{$questioner->total_y}}</h3>
                    <h3>Total No Answer : {{$questioner->total_n}}</h3>
                    <h3>Your potential for contracting Covid-19 virus is {{$questioner->status}} Risk</h3>
                    <a href="{{url('/')}}" class="btn btn-primary col-md-2" >Back</a>
                </div>
            </div>
        </div>
        
    </div>
    </main>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>