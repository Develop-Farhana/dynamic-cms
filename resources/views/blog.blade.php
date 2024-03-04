@extends('master')
@section('content')
@if($our_blog)
@foreach($our_blog as $value)
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
                    @if($our_blog)
                    @foreach($our_blog as $value)
                    @if($value->section_title=='second_title')
                    {{$value->data}}
                    @endif
                    @endforeach
                    @endif
                </h2>
            </div>
        </div>
        <div class="row tm-welcome-row tm-services">
            @if($post)
            @foreach($post as $value)
            @if($value->section_title=='second_section')
            <div class="col-md-3 col-sm-6">
                <div class="tm-services-1">
                    <img src="{{asset('uploads')}}/{{$value->image}}" alt="image" class="img-fluid" />
                    <figure class="tm-services-img">{{$value->title}} </figure>
                </div>
            </div>
            @endif
            @endforeach
            @endif
        </div>

        <div class="row">
            <div class="col-12">
                <h2 class="tm-section-header tm-section-header-small mb-3">
                    @if($our_blog)
                    @foreach($our_blog as $value)
                    @if($value->section_title=='third_title')
                    {{$value->data}}
                    @endif
                    @endforeach
                    @endif
                </h2>
            </div>
        </div>

        <!-- <div class="row tm-welcome-row-2">
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
        </div> -->

        <div class="row tm-approach-row">
            @if($post)
            @foreach($post as $value)
            @if($value->section_title=='third_section')
            <div class="col-md-6">
                <div class="tm-approach-box">
                    <div class="tm-media tm-media-2 tm-media-v-center tm-solid-border">
                        <!-- <img src="{{asset('uploads')}}/{{$value->image}}" alt="Welcome image"
                            class="img-fluid tm-media-img" style="width: 30%;" /> -->
                        <!-- <h3 class="tm-article-title">{{$value->title}}</h3> -->
                        <div>
                            <p>{!! $value->description !!}</p>
                        </div>
                    </div>
                </div>
            </div>
            @endif
            @endforeach
            @endif
        </div>
        <!-- </div> -->
    </section>

    <!-- Featured -->
    <section class="tm-featured">
        <div class="row">
            <div class="col-12">
                <h2 class="tm-section-header tm-section-header-small mb-3">
                    @if($our_blog)
                    @foreach($our_blog as $value)
                    @if($value->section_title=='forth_title')
                    {{$value->data}}
                    @endif
                    @endforeach
                    @endif
                </h2>
            </div>
        </div>

        <!-- Carousel -->
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

        <div class="tm-partners mx-auto">
            <div>
                @if($post)
                @foreach($post as $value)
                @if($value->section_title=='forth_section')
                <img src="{{asset('uploads')}}/{{$value->image}}" alt="Featured Item">
                @endif
                @endforeach
                @endif
                <div>
                    </p>
                </div>


            </div>
    </section>

    <footer>


    </footer>

</main>

@endsection

@push('footer-script')

@endpush