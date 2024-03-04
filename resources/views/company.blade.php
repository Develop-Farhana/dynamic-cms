@extends('master')
@section('content')
@if($our_company)
@foreach($our_company as $value)
@if($value->section_title=='banner_image')
<style type="text/css">
        .tm-main-bg { background-image: url({{ asset('uploads') }}/{{$value->data}}); }
    </style>
@endif
@endforeach
@endif
<div class="row">
    <div class="col-12">
        <div class="tm-main-bg"></div>
    </div>
</div>

<!-- Main -->
<main>
    <!-- Welcome section -->
    <section class="tm-welcome">
        <div class="row">
            <div class="col-12">
                <h2 class="tm-section-header tm-header-floating">
                    @if($our_company)
                    @foreach($our_company as $value)
                    @if($value->section_title=='second_title')
                    {{$value->data}}
                    @endif
                    @endforeach
                    @endif
                </h2>
            </div>
        </div>

        <div class="row tm-welcome-row">
            <div class="tm-about">
                @if($post)
                @foreach($post as $value)
                @if($value->section_title=='second_section')
                <div class="col-12 tm-media tm-media-v-center">
                    <img src="{{asset('uploads')}}/{{$value->image}}" alt="Welcome image"
                        class="img-fluid tm-media-img" />
                    <div class="tm-media-body">
                        <a href="#" class="tm-article-link">
                            <h3 class="tm-article-title text-uppercase">{{$value->title}}</h3>
                        </a>
                        <p>{!! $value->description !!}</p>
                    </div>
                </div>
                @endif
                @endforeach
                @endif
            </div>

            <div class="row tm-welcome-row-2">
                @if($post)
                @foreach($post as $value)
                @if($value->section_title=='third_section')
                <div class="col-lg-4 tm-dotted-box-container">
                    <div class="tm-about-1">
                        <img src="{{asset('uploads')}}/{{$value->image}}" alt="image" class="img-fluid mb-5" />
                        <h3 class="tm-article-title">{{$value->title}}</h3>
                        <p class="tm-article-text">{!! $value->description !!}</p>

                    </div>
                </div>
                @endif
                @endforeach
                @endif
            </div>
    </section>

    <!-- Featured -->
    <section class="tm-featured">
        <div class="row">
            <div class="col-12">
                <h2 class="tm-section-header tm-section-header-small mb-3">
                    @if($our_company)
                    @foreach($our_company as $value)
                    @if($value->section_title=='forth_title')
                    {{$value->data}}
                    @endif
                    @endforeach
                    @endif
                </h2>
            </div>
        </div>

        <!-- Carousel -->
        <div class="grid tm-carousel">
        @if($post)
            @foreach($post as $value)
            @if($value->section_title=='slider')
                    <figure class="effect-zoe">
                    <img src="{{asset('uploads')}}/{{$value->image}}" alt="Featured Item">
                        <figcaption>
                            <h2>{!! $value->description !!}</h2>
                            <p class="icon-links">
								<a href="https://fb.com"><i class="fab fa-facebook-f"></i></a>
								<a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
								<a href="https://instagram.com"><i class="fab fa-instagram"></i></a>
							</p>
                        </figcaption>
                    </figure>
                    @endif
            @endforeach
            @endif
            <!-- <div class="grid tm-carousel">
                    <figure class="effect-zoe">
                        <img src="img/team-img-01.jpg" alt="Featured Item">
                        <figcaption>
                            <h2>John Stone</h2>
                            <p class="icon-links">
								<a href="https://fb.com"><i class="fab fa-facebook-f"></i></a>
								<a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
								<a href="https://instagram.com"><i class="fab fa-instagram"></i></a>
							</p>
                        </figcaption>
                    </figure>
                    <figure class="effect-zoe">
                        <img src="img/team-img-02.jpg" alt="Featured Item">
                        <figcaption>
                            <h2>Jane Meldrum</h2>
                            <p class="icon-links">
								<a href="https://fb.com"><i class="fab fa-facebook-f"></i></a>
								<a href="https://twitter.com"><i class="fab fa-twitter"></i></a>
								<a href="https://instagram.com"><i class="fab fa-instagram"></i></a>
							</p>
                        </figcaption>
                    </figure> -->
        <!-- <div class="grid tm-carousel">
            @if($post)
            @foreach($post as $value)
            @if($value->section_title=='forth_section')
            <figure class="effect-honey">
                <img src="{{asset('uploads')}}/{{$value->image}}" alt="Featured Item">
                <figcaption>
                    <h4><i>{!! $value->description !!}</i></h4>
                </figcaption>
            </figure>
            @endif
            @endforeach
            @endif

        </div> -->
    </section>

    <footer>
        Copyright by "advanced web hindi"

    </footer>

</main>

@endsection

@push('footer-script')

@endpush