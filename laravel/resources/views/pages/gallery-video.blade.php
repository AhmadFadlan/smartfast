@extends('layouts.app')

@section('content')

  <section class="mbr-section article mbr-parallax-background mbr-after-navbar" id="msg-box8-l" data-rv-view="292" style="background-image: url(/template/assets/images/img-0636-min-2000x13335.jpg); padding-top: 160px; padding-bottom: 40px;">

      <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
      <div class="container">
          <div class="row">
              <div class="col-md-8 col-md-offset-2 text-xs-center">
                  <h3 class="mbr-section-title display-2">VIDEO</h3>
              </div>
          </div>
      </div>

  </section>

  <section class="mbr-gallery mbr-section mbr-section-nopadding mbr-slider-carousel" data-filter="true" id="gallery4-1d" data-rv-view="115" style="padding-top: 0rem; padding-bottom: 0rem;">
      <!-- Filter -->
      <div class="mbr-gallery-filter container gallery-filter-active">
          <ul>
              <li class="mbr-gallery-filter-all active">All</li>
          </ul>
      </div>

{{-- {{ dd($galleries) }} --}}
      <!-- Gallery -->
      <div class="mbr-gallery-row">
          <div class=" mbr-gallery-layout-default">
              <div>
                  <div>

                      @php($i=0)
                      @foreach ($galleries as $category => $links)
                        {{-- {{ dd($links) }} --}}
                          @foreach ($links as $source => $link)
                            {{-- {{ dd($links) }} --}}
                            @if ($source=='youtube')
                              @foreach ($link as $value)

                                <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1 video-slide" data-video-url="{{ $value }}" data-tags="{{ $category }}">
                                  <div href="#lb-gallery4-1d" data-slide-to="{{ $i }}" data-toggle="modal">
                                    <div></div>
                                    <img alt="" src="/template/assets/images/video.poster.png">
                                    <span class="icon-video"></span>
                                  </div>
                                </div>

                                @php($i++)
                              @endforeach

                            @else
                              <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1 " data-video-url="false" data-tags="{{ $category }}">
                                <div href="#lb-gallery4-1d" data-slide-to="{{ $i }}" data-toggle="modal">
                                  <div></div>
                                  <img alt="" src="/template/assets/images/video.poster.png">
                                  <span class="icon-video"></span>
                                </div>
                              </div>
                            @endif

                            @php($i++)

                          @endforeach

                      @endforeach
                  </div>
              </div>
              <div class="clearfix"></div>
          </div>
      </div>

      <!-- Lightbox -->
      <div data-app-prevent-settings="" class="mbr-slider modal fade carousel slide" tabindex="-1" data-keyboard="true" data-interval="false" id="lb-gallery4-1d">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-body">
                      {{--
                      <ol class="carousel-indicators">

                          @php($i=0)
                          @foreach ($galleries as $category => $links)

                              @foreach ($links as $source => $link)

                                @php($active = $i==0? ' class=" active" ' : '')

                                @if ($source=='youtube')
                                  @foreach ($link as $value)
                                    <li data-app-prevent-settings="" data-target="#lb-gallery4-1d" {{ $active }} data-slide-to="{{ $i }}"></li>
                                    @php($i++)
                                  @endforeach

                                @else
                                  <li data-app-prevent-settings="" data-target="#lb-gallery4-1d" {{ $active }} data-slide-to="{{ $i }}"></li>
                                @endif

                                @php($i++)

                              @endforeach

                          @endforeach
                      </ol>
                       --}}
                      <div class="carousel-inner">
                        @php($i=0)
                        @foreach ($galleries as $category => $links)
                          {{-- {{ dd($links) }} --}}
                            @foreach ($links as $source => $link)

                              @php($active = $i==0? 'active' : '')

                              @if ($source=='youtube')
                                @foreach ($link as $value)
                                  {{-- {{ dd($value) }} --}}
                                  <div class="carousel-item {{ $active }} video-container">
                                    <img src="/template/assets/images/jumbotron.jpg" alt="" title="">
                                  </div>
                                  @php($i++)
                                @endforeach

                              @else
                                <div class="carousel-item {{ $active }}">
                                  {{-- <img src="/template/assets/images/bike.jpg" alt="" title=""> --}}
                                  <video autoplay loop muted controls>
                                    <source src="{{ $link }}" type="video/mp4" />
                                  </video>
                                </div>
                              @endif

                              @php($i++)

                            @endforeach

                        @endforeach
                      </div>

                      <a class="left carousel-control" role="button" data-slide="prev" href="#lb-gallery4-1d">
                          <span class="icon-prev" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" role="button" data-slide="next" href="#lb-gallery4-1d">
                          <span class="icon-next" aria-hidden="true"></span>
                          <span class="sr-only">Next</span>
                      </a>

                      <a class="close" href="#" role="button" data-dismiss="modal">
                          <span aria-hidden="true">×</span>
                          <span class="sr-only">Close</span>
                      </a>
                  </div>
              </div>
          </div>
      </div>
  </section>

@endsection
