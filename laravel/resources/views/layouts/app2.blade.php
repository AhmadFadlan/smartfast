
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
  <head>
    <title>Smart Fast Global Education</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/template/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/template/css/animate.css">

    <link rel="stylesheet" href="/template/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/template/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/template/css/magnific-popup.css">

    <link rel="stylesheet" href="/template/css/aos.css">

    <link rel="stylesheet" href="/template/css/ionicons.min.css">

    <link rel="stylesheet" href="/template/css/flaticon.css">
    <link rel="stylesheet" href="/template/css/icomoon.css">
    <link rel="stylesheet" href="/template/css/style.css">
    <link rel="stylesheet" href="/template/css/style2.css">

  </head>
  <body>
    <!-- header -->
	  @include('layouts.header')

    <!-- menu -->
    @include('layouts.menu')

    <!-- content -->
    @if (!request()->is('/'))
      @php
        $getExp = explode('/', url()->current());
        $bread = str_replace('-', ' ', $getExp[3]);
      @endphp
      <section class="hero-wrap hero-wrap-2" style="background-image: url('/template/images/bg_1.jpg');">
        <div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
              <h1 class="mb-2 bread"> {!! ucwords($bread) !!} </h1>
              <p class="breadcrumbs">
                <span class="mr-2"><a href="/">Home <i class="ion-ios-arrow-forward"></i></a></span>
                <span> {{ $bread }} <i class="ion-ios-arrow-forward"></i></span>
              </p>
            </div>
          </div>
        </div>
      </section>
    @endif

    @yield('content')

    <!-- footer -->
    @include('layouts.footer')


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="/template/js/jquery.min.js"></script>
  <script src="/template/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/template/js/popper.min.js"></script>
  <script src="/template/js/bootstrap.min.js"></script>
  <script src="/template/js/jquery.easing.1.3.js"></script>
  <script src="/template/js/jquery.waypoints.min.js"></script>
  <script src="/template/js/jquery.stellar.min.js"></script>
  <script src="/template/js/owl.carousel.min.js"></script>
  <script src="/template/js/jquery.magnific-popup.min.js"></script>
  <script src="/template/js/aos.js"></script>
  <script src="/template/js/jquery.animateNumber.min.js"></script>
  <script src="/template/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="/template/js/google-map.js"></script>
  <script src="/template/js/main.js"></script>

  </body>
</html>
