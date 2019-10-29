@extends('layouts.app')

@section('content')

  <section class="mbr-section article mbr-parallax-background mbr-after-navbar" id="msg-box8-l" data-rv-view="292" style="background-image: url(/template/assets/images/img-0636-min-2000x13335.jpg); padding-top: 160px; padding-bottom: 40px;">

      <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
      <div class="container">
          <div class="row">
              <div class="col-md-8 col-md-offset-2 text-xs-center">
                  <h3 class="mbr-section-title display-2">BERITA</h3>
              </div>
          </div>
      </div>

  </section>

  @foreach ($posts as $post)
    {{-- judul berita --}}
    <section class="mbr-section mbr-section__container article" id="header3-m" data-rv-view="295" style="background-color: rgb(255, 255, 255); padding-top: 20px; padding-bottom: 20px;">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h3 class="mbr-section-title display-2" style="text-align:left;">Title with Solid Background Color</h3>
                    <small class="mbr-section-subtitle" style="text-align:left;">By John Smith posted July 20, 2016</small>
                </div>
            </div>
        </div>
    </section>

    <section class="mbr-section article mbr-section__container" id="content1-n" data-rv-view="297" style="background-color: rgb(255, 255, 255); padding-top: 20px; padding-bottom: 20px;">
        {{-- content berita --}}
        <div class="container">
            <div class="row">
                <div class="col-xs-12 lead" style="text-align:left;">
                    <p>
                      Make your own website in a few clicks! Mobirise helps you cut down development time by providing you with a flexible website editor with a drag and drop interface. MobiRise Website Builder creates responsive, retina and mobile
                      friendly websites in a few clicks. Mobirise is one of the easiest website development tools <a href="http://google.com/">available</a> today. It also gives you the freedom to develop as many websites as you like given the fact
                      that it is a desktop app.
                    </p>
                </div>
            </div>
        </div>

    </section>

  @endforeach

@endsection
