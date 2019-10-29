<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!-- Site made with Mobirise Website Builder v4.10.15, https://mobirise.com -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.10.15, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="shortcut icon" href="template/assets/images/logo-sf-128x43.png" type="image/x-icon">
    <meta name="description" content="">

    <title>{{ setting('site.title') }}</title>
    <link rel="stylesheet" href="template/assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="template/assets/web/assets/mobirise-icons/mobirise-icons.css">
    <link rel="stylesheet" href="template/assets/et-line-font-plugin/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin">
    <link rel="stylesheet" href="template/assets/tether/tether.min.css">
    <link rel="stylesheet" href="template/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="template/assets/animatecss/animate.min.css">
    <link rel="stylesheet" href="template/assets/dropdown/css/style.css">
    <link rel="stylesheet" href="template/assets/theme/css/style.css">
    <link rel="stylesheet" href="template/assets/mobirise-gallery/style.css">
    {{-- <link rel="stylesheet" href="template/assets/theme/css/style-rtl.css"> --}}
    <link rel="preload" as="style" href="template/assets/mobirise/css/mbr-additional.css">
    <link rel="stylesheet" href="template/assets/mobirise/css/mbr-additional.css" type="text/css">

    {{-- <link rel="stylesheet" href="https://d1azc1qln24ryf.cloudfront.net/114779/Socicon/style-cf.css?u8vidh"> --}}

    {{-- <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/vaakash/socializer/80391a50/css/socializer.min.css"> --}}
    {{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> --}}

</head>

<body class="">

    {{-- @include('layouts.header') --}}

    <section id="menu-0" data-rv-view="225">

        <nav class="navbar navbar-dropdown transparent navbar-fixed-top bg-color">

            <div class="container">
                @include('layouts.header')
                <div class="mbr-table">
                    <div class="mbr-table-cell">

                        <div class="navbar-brand">
                            <a href="/" class="navbar-logo"><img src="storage/{{ setting('site.logo') }}" alt="Smartfast"></a>
                        </div>

                    </div>
                    <div class="mbr-table-cell">

                        <button class="navbar-toggler pull-xs-right hidden-md-up" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                            <div class="hamburger-icon"></div>
                        </button>

                        {{ menu('main','layouts.menu') }}

                        <button hidden="" class="navbar-toggler navbar-close" type="button" data-toggle="collapse" data-target="#exCollapsingNavbar">
                            <div class="close-icon"></div>
                        </button>

                    </div>
                </div>

            </div>
        </nav>

    </section>

    @yield('content')

    @include('layouts.footer')

    <script src="template/assets/web/assets/jquery/jquery.min.js"></script>
    <script src="template/assets/tether/tether.min.js"></script>
    <script src="template/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="template/assets/jquery-mb-ytplayer/jquery.mb.ytplayer.min.js"></script>
    <script src="template/assets/smooth-scroll/smooth-scroll.js"></script>
    <script src="template/assets/jarallax/jarallax.js"></script>
    <script src="template/assets/bootstrap-carousel-swipe/bootstrap-carousel-swipe.js"></script>
    <script src="template/assets/dropdown/js/script.min.js"></script>
    <script src="template/assets/touch-swipe/jquery.touch-swipe.min.js"></script>
    <script src="template/assets/masonry/masonry.pkgd.min.js"></script>
    <script src="template/assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="template/assets/viewport-checker/jquery.viewportchecker.js"></script>
    <script src="template/assets/theme/js/script.js"></script>
    <script src="template/assets/mobirise-gallery/player.min.js"></script>
    <script src="template/assets/mobirise-gallery/script.js"></script>
    <script src="template/assets/mobirise-slider-video/script.js"></script>

{{--
    <script src="https://cdn.rawgit.com/vaakash/socializer/80391a50/js/socializer.min.js"></script>
    <script>
      (function(){
          socializer( '.socializer' );
      }());
    </script> --}}

    @include('layouts.translate')

    @include('layouts.chat')


    <div id="scrollToTop" class="scrollToTop mbr-arrow-up"><a style="text-align: center;"><i class="mbr-arrow-up-icon mbr-arrow-up-icon-cm cm-icon cm-icon-smallarrow-up"></i></a></div>
    <input name="animation" type="hidden">
</body>

</html>
