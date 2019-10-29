@extends('layouts.app')

@section('content')

  <section class="mbr-section article mbr-parallax-background mbr-after-navbar" id="msg-box8-l" data-rv-view="292" style="background-image: url(/template/assets/images/img-0636-min-2000x13335.jpg); padding-top: 160px; padding-bottom: 40px;">

      <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
      <div class="container">
          <div class="row">
              <div class="col-md-8 col-md-offset-2 text-xs-center">
                  <h3 class="mbr-section-title display-2">BERITA</h3>
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
                  <h3 class="mbr-section-title display-2">{{ $posts->title }}</h3>
                  <small class="mbr-section-subtitle">By {{ $posts->author->name }} posted {{ $posts->created_at->format('d F Y') }} </small>
              </div>
          </div>
      </div>
  </section>

  <section class="mbr-section article mbr-section__container" id="content1-n" data-rv-view="166" style="background-color: rgb(255, 255, 255); padding-top: 20px; padding-bottom: 20px;">

      <div class="container">
          <div class="row">
              <div class="col-xs-12 lead">
                  @if ($posts->image)
                    <img src="/storage/{{ $posts->image }}" style="width:300px; height:300px; padding-right: inherit; padding-bottom: inherit;" align="left">
                  @endif

                  {!! $posts->body !!}
                  
              </div>
          </div>
      </div>

  </section>

  <div class="" align="">
    {{-- {{ dd() }} --}}
  </div>
@endsection
