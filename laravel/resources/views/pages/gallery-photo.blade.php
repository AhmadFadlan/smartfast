@extends('layouts.app')

@section('content')

  <section class="mbr-section article mbr-parallax-background mbr-after-navbar" id="msg-box8-l" data-rv-view="292" style="background-image: url(/template/assets/images/img-0636-min-2000x13335.jpg); padding-top: 160px; padding-bottom: 40px;">

      <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(34, 34, 34);"></div>
      <div class="container">
          <div class="row">
              <div class="col-md-8 col-md-offset-2 text-xs-center">
                  <h3 class="mbr-section-title display-2">PHOTO</h3>
              </div>
          </div>
      </div>

  </section>

  <section class="mbr-gallery mbr-section mbr-section-nopadding mbr-slider-carousel" data-filter="true" id="gallery4-19" data-rv-view="115" style="padding-top: 0rem; padding-bottom: 0rem;">
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
                          @foreach ($links as $link)
                            <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="{{ $category }}">
                                <div href="#lb-gallery4-19" data-slide-to="{{ $i }}" data-toggle="modal">
                                    <img src="{{ $link }}" alt="" title="" style="width:100%; height:200px;">
                                    <span class="icon-focus"></span>
                                </div>
                            </div>
                            @php($i++)
                          @endforeach

                      @endforeach
                  </div>
              </div>
              <div class="clearfix"></div>
          </div>
      </div>

      <!-- Lightbox -->
      <div data-app-prevent-settings="" class="mbr-slider modal fade carousel slide" tabindex="-1" data-keyboard="true" data-interval="false" id="lb-gallery4-19">
          <div class="modal-dialog">
              <div class="modal-content">
                  <div class="modal-body">
                      {{--
                      <ol class="carousel-indicators">

                          @php($i=0)
                          @foreach ($galleries as $category => $links)
                            @foreach ($links as $link)
                              @php($active = $i==0? ' class=" active" ' : '')
                                <li data-app-prevent-settings="" data-target="#lb-gallery4-19" {{ $active }} data-slide-to="{{ $i }}" ></li>
                              @php($i++)
                            @endforeach
                          @endforeach

                      </ol>
                       --}}
                      <div class="carousel-inner">
                          @php($i=0)
                          @foreach ($galleries as $category => $links)
                            @foreach ($links as $link)
                              @php($active = $i==0? 'active' : '')
                                <div class="carousel-item {{ $active }}">
                                    <img src="{{ $link }}" alt="" title="">
                                </div>
                              @php($i++)
                            @endforeach
                          @endforeach
                      </div>

                      <a class="left carousel-control" role="button" data-slide="prev" href="#lb-gallery4-19">
                          <span class="icon-prev" aria-hidden="true"></span>
                          <span class="sr-only">Previous</span>
                      </a>
                      <a class="right carousel-control" role="button" data-slide="next" href="#lb-gallery4-19">
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
