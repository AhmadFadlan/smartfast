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

  {{-- berita penting --}}
  <section class="mbr-section" id="msg-box5-3" data-rv-view="239" style="background-color: rgb(255, 255, 255); padding-top: 40px; padding-bottom: 40px;">
      {{-- <br><br> --}}
      <div class="container">
          <div class="row">
              <div class="mbr-table-md-up">

                  <div class="mbr-table-cell mbr-right-padding-md-up mbr-valign-top col-md-7 image-size" style="width: 50%;">
                      <div class="mbr-figure"><img src="/storage/{{ $posts_hot->image }}"></div>
                  </div>


                  <div class="mbr-table-cell col-md-5 text-xs-center text-md-left content-size">
                      <h3 class="mbr-section-title display-2">{{ $posts_hot->title }}</h3>
                      <div class="lead">
                          <p align="justify">{{ $posts_hot->excerpt }}</p>
                          <p><i>Published {{ $posts_hot->created_at->format('d M Y') }}</i></p>
                      </div>

                      <div><a class="btn btn-primary" href="/berita/{{ $posts_hot->id }}">MORE</a></div>
                  </div>


              </div>
          </div>
      </div>
      <br>
  </section>

  {{-- berita lainnya --}}
  <section class="mbr-cards mbr-section mbr-section-nopadding">

    {{-- <div class="mbr-cards-row row"> --}}
          @php($i=1)
          @foreach ($posts as $post)
              @if ($i==1)
                  <div class="mbr-cards-row row">
              @endif
              <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 40px; padding-bottom: 40px;">
                  <div class="container">
                      <div class="card cart-block">
                          <div class="card-img"><img src="/storage/{{ $post->image }}" class="card-img-top"></div>
                          <div class="card-block">
                              <h4 class="card-title">{{ $post->title }}</h4>
                              <h5 class="card-subtitle"><i>Published {{ $post->created_at->format('d M Y') }}</i></h5>
                              <p class="card-text" align="justify">{{ $post->excerpt }}</p>
                              <div class="card-btn"><a href="/berita/{{ $post->id }}" class="btn btn-primary">MORE</a></div>
                          </div>
                      </div>
                  </div>
              </div>

              {{-- @if ($i == round($posts->total()/2) && $i <= 4) --}}
              @if ($i==4)
                  </div>

                  <div class="mbr-cards-row row">
              @endif

              @if ($i==8)
                  </div>
              @endif

            @php($i++)

          @endforeach

      {{-- </div> --}}

  </section>

  <div class="" align="center">
    {{ $posts->links() }}
  </div>

@endsection
