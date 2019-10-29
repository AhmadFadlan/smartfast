@extends('layouts.app')

@section('content')

  <section class="mbr-section article mbr-parallax-background mbr-after-navbar" id="msg-box8-l" data-rv-view="292" style="background-image: url(/template/assets/images/img-0636-min-2000x13335.jpg); padding-top: 160px; padding-bottom: 40px;">

      <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
      <div class="container">
          <div class="row">
              <div class="col-md-8 col-md-offset-2 text-xs-center">
                  <h3 class="mbr-section-title display-2">{{ ucwords($page->head_title) }}</h3>
                  {{--
                  <div class="lead">
                      <p>Article header with background image and parallax effect.</p>
                  </div>
                   --}}
              </div>
          </div>
      </div>

  </section>

  <section class="mbr-section mbr-section__container article" id="header3-m" data-rv-view="295" style="background-color: rgb(255, 255, 255); padding-top: 20px; padding-bottom: 20px;">
      <div class="container">
          <div class="row">
              <div class="col-xs-12">
                  <h3 class="mbr-section-title display-2"> {{ $page->title }} </h3>
              </div>
          </div>
      </div>
  </section>

  <section class="mbr-section article mbr-section__container" id="content1-n" data-rv-view="166" style="background-color: rgb(255, 255, 255); padding-top: 20px; padding-bottom: 20px;">

    <div class="container">
        <div class="row">
          <div class="col-xs-12 lead">
            {!! $page->body !!}
          </div>
        </div>
    </div>

  </section>
  <div class="" align="">
    {{-- {{ dd() }} --}}
  </div>
@endsection
