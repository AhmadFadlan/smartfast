@extends('layouts.app')

@section('content')

{{-- slider --}}
<section class="mbr-slider mbr-section mbr-section__container carousel slide mbr-section-nopadding mbr-after-navbar" data-ride="carousel" data-keyboard="false" data-wrap="true" data-pause="false" data-interval="5000" id="slider-d" data-rv-view="227">
    <div>
        <div>
            <div>
                <ol class="carousel-indicators">
                    <li data-app-prevent-settings="" data-target="#slider-d" data-slide-to="0" class="active"></li>
                    <li data-app-prevent-settings="" data-target="#slider-d" data-slide-to="1"></li>
                    <li data-app-prevent-settings="" data-target="#slider-d" class="" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full active" data-bg-video-slide="false" style="background-image: url(/template/assets/images/img-0636-min-2000x1333.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">

                                <div class="row">
                                    <div class="col-md-8 col-md-offset-2 text-xs-center">
                                        <h2 class="mbr-section-title display-1">FULL SCREEN SLIDER</h2>
                                        <p class="mbr-section-lead lead">Choose from the large selection of latest pre-made blocks - jumbotrons, hero images, parallax scrolling, video backgrounds, hamburger menu, sticky header and more.</p>

                                        <div class="mbr-section-btn"><a class="btn btn-lg btn-success" href="https://mobirise.com">FOR WINDOWS</a> <a class="btn btn-lg btn-white btn-white-outline" href="https://mobirise.com">FOR MAC</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="https://www.youtube.com/watch?v=uNCr7NdOJgw">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">

                                <div class="row">
                                    <div class="col-md-8 col-md-offset-1">
                                        <h2 class="mbr-section-title display-1">VIDEO SLIDE</h2>
                                        <p class="mbr-section-lead lead">Slide with youtube video background and color overlay. Title and text are aligned to the left.</p>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mbr-section mbr-section-hero carousel-item dark center mbr-section-full" data-bg-video-slide="false" style="background-image: url(template/assets/images/img-510-600x400.jpg);">
                        <div class="mbr-table-cell">
                            <div class="mbr-overlay"></div>
                            <div class="container-slide container">

                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3 text-xs-right">
                                        <h2 class="mbr-section-title display-1">IMAGE SLIDE</h2>
                                        <p class="mbr-section-lead lead">Choose from the large selection of latest pre-made blocks - jumbotrons, hero images, parallax scrolling, video backgrounds, hamburger menu, sticky header and more.</p>

                                        <div class="mbr-section-btn"><a class="btn btn-lg btn-info" href="https://mobirise.com">FOR WINDOWS</a> <a class="btn btn-lg btn-white btn-white-outline" href="https://mobirise.com">FOR MAC</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a data-app-prevent-settings="" class="left carousel-control" role="button" data-slide="prev" href="#slider-d">
                    <span class="icon-prev" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a data-app-prevent-settings="" class="right carousel-control" role="button" data-slide="next" href="#slider-d">
                    <span class="icon-next" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</section>

{{-- berita penting --}}
<section class="mbr-section" id="msg-box5-3" data-rv-view="239" style="background-color: rgb(255, 255, 255); padding-top: 40px; padding-bottom: 40px;">

    <div class="container">
        <div class="row">
            <div class="mbr-table-md-up">

                <div class="mbr-table-cell mbr-right-padding-md-up mbr-valign-top col-md-7 image-size" style="width: 50%;">
                    <div class="mbr-figure"><img src="/storage/{{ $posts->first()->image }}"></div>
                </div>


                <div class="mbr-table-cell col-md-5 text-xs-center text-md-left content-size">
                    <h3 class="mbr-section-title display-2">{{ $posts->first()->title }}</h3>
                    <div class="lead">
                        <p>{{ $posts->first()->excerpt }}</p>
                        <p><i>{{ $posts->first()->created_at->format('M d, Y H:i') }}</i></p>
                    </div>

                    <div><a class="btn btn-primary" href="#">MORE</a></div>
                </div>


            </div>
        </div>
    </div>

</section>

{{-- berita lainnya --}}
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features3-5" data-rv-view="242" style="background-color: rgb(255, 255, 255);">

    <div class="mbr-cards-row row">

      @php($i=1)
      @foreach ($posts as $post)
        @if ($i!=1)
          <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 40px; padding-bottom: 40px;">
              <div class="container">
                  <div class="card cart-block">
                      <div class="card-img"><img src="/storage/{{ $post->image }}" class="card-img-top"></div>
                      <div class="card-block">
                          <h4 class="card-title">{{ $post->title }}</h4>
                          <h5 class="card-subtitle"><i> {{ $post->created_at->format('M d, Y H:i') }} </i></h5>
                          <p class="card-text">{{ $post->excerpt }}</p>
                          <div class="card-btn"><a href="#" class="btn btn-primary">MORE</a></div>
                      </div>
                  </div>
              </div>
          </div>
        @endif
        @php($i++)
      @endforeach

    </div>
</section>

{{-- gallery --}}
<section class="mbr-gallery mbr-section mbr-section-nopadding mbr-slider-carousel" data-filter="false" id="gallery3-6" data-rv-view="245" style="background-color: rgb(0, 0, 0); padding-top: 1.5rem; padding-bottom: 1.5rem;">
    <!-- Filter -->

    <!-- Gallery -->
    <div class="mbr-gallery-row container">
        <div class=" mbr-gallery-layout-default">
            <div>
                <div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Awesome">
                        <div href="#lb-gallery3-6" data-slide-to="0" data-toggle="modal">

                            <img src="/template/assets/images/dscn1056-copy-2000x1500-800x600.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Responsive">
                        <div href="#lb-gallery3-6" data-slide-to="1" data-toggle="modal">



                            <img src="/template/assets/images/dscn1060-2000x1500-800x600.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Creative">
                        <div href="#lb-gallery3-6" data-slide-to="2" data-toggle="modal">



                            <img src="/template/assets/images/img-510-2000x1333-800x533.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Animated">
                        <div href="#lb-gallery3-6" data-slide-to="3" data-toggle="modal">



                            <img src="/template/assets/images/desktop-small.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Awesome">
                        <div href="#lb-gallery3-6" data-slide-to="4" data-toggle="modal">



                            <img src="/template/assets/images/room-laptop-small.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Beautiful">
                        <div href="#lb-gallery3-6" data-slide-to="5" data-toggle="modal">



                            <img src="/template/assets/images/table-small.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Responsive">
                        <div href="#lb-gallery3-6" data-slide-to="6" data-toggle="modal">



                            <img src="/template/assets/images/windows-books-small.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                    <div class="mbr-gallery-item mbr-gallery-item__mobirise3 mbr-gallery-item--p1" data-video-url="false" data-tags="Animated">
                        <div href="#lb-gallery3-6" data-slide-to="7" data-toggle="modal">



                            <img src="/template/assets/images/working-area-small.jpg" alt="" title="">

                            <span class="icon-focus"></span>

                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <!-- Lightbox -->
    <div data-app-prevent-settings="" class="mbr-slider modal fade carousel slide" tabindex="-1" data-keyboard="true" data-interval="false" id="lb-gallery3-6">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <ol class="carousel-indicators">
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" class=" active" data-slide-to="0"></li>
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" data-slide-to="1"></li>
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" data-slide-to="2"></li>
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" data-slide-to="3"></li>
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" data-slide-to="4"></li>
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" data-slide-to="5"></li>
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" data-slide-to="6"></li>
                        <li data-app-prevent-settings="" data-target="#lb-gallery3-6" data-slide-to="7"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="/template/assets/images/dscn1056-copy-2000x1500.jpg" alt="" title="">
                        </div>
                        <div class="carousel-item">
                            <img src="/template/assets/images/dscn1060-2000x1500.jpg" alt="" title="">
                        </div>
                        <div class="carousel-item">
                            <img src="/template/assets/images/img-510-2000x1333.jpg" alt="" title="">
                        </div>
                        <div class="carousel-item">
                            <img src="/template/assets/images/desktop.jpg" alt="" title="">
                        </div>
                        <div class="carousel-item">
                            <img src="/template/assets/images/room-laptop.jpg" alt="" title="">
                        </div>
                        <div class="carousel-item">
                            <img src="/template/assets/images/table.jpg" alt="" title="">
                        </div>
                        <div class="carousel-item">
                            <img src="/template/assets/images/windows-books.jpg" alt="" title="">
                        </div>
                        <div class="carousel-item">
                            <img src="/template/assets/images/working-area.jpg" alt="" title="">
                        </div>
                    </div>
                    <a class="left carousel-control" role="button" data-slide="prev" href="#lb-gallery3-6">
                        <span class="icon-prev" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" role="button" data-slide="next" href="#lb-gallery3-6">
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

{{-- lainnya --}}
<section class="mbr-cards mbr-section mbr-section-nopadding" id="features7-7" data-rv-view="280" style="background-color: rgb(239, 239, 239);">

    <div class="mbr-cards-row row">
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 40px; padding-bottom: 40px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img iconbox"><a href="https://mobirise.com" class="mbri-briefcase mbr-iconfont mbr-iconfont-features7" style="color: rgb(255, 255, 255);"></a></div>
                    <div class="card-block">
                        <h4 class="card-title">Bootstrap 4</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 40px; padding-bottom: 40px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img iconbox"><a href="https://mobirise.com" class="mbri-users mbr-iconfont mbr-iconfont-features7" style="color: rgb(255, 255, 255);"></a></div>
                    <div class="card-block">
                        <h4 class="card-title">Responsive</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 40px; padding-bottom: 40px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img iconbox"><a href="https://mobirise.com" class="mbrib-edit mbr-iconfont mbr-iconfont-features7" style="color: rgb(255, 255, 255);"></a></div>
                    <div class="card-block">
                        <h4 class="card-title">Web Fonts</h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-cards-col col-xs-12 col-lg-3" style="padding-top: 40px; padding-bottom: 40px;">
            <div class="container">
                <div class="card cart-block">
                    <div class="card-img iconbox"><a href="https://mobirise.com" class="etl-icon icon-linegraph mbr-iconfont mbr-iconfont-features7" style="color: rgb(255, 255, 255);"></a></div>
                    <div class="card-block">
                        <h4 class="card-title">Unlimited Sites</h4>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

@endsection
