@extends('admin.layout')
@section('content')

<div class="row">
	{!! Form::open(['route' =>['post-store',$post->id],'enctype'=>'multipart/form-data']) !!}
	@if ($errors->any())
    <div class="alert alert-danger">
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach   
    </div>
    @endif
    <div class="x_panel">
        <div class="x_title">
            <h2 class="sub_title">Page Content</h2>
            <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                <li><a class="close-link"><i class="fa fa-close"></i></a></li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <div class="form-group has-feedback" style="position: relative;">
                <label for="name" class="hws_form_label">Page :</label>
                {{form::select('page_title',['home'=>'Home','our_company'=>'Our Company','services'=>'Services','contact'=>'Contact','blog'=>'Our Blog'],$post->page_title,['class'=>'form-control'])}} 
            </div>
            <div class="form-group has-feedback" style="position: relative;">
                <label for="name" class="hws_form_label">Section Title :</label>
                {{form::text('section_title',$post->section_title,['class'=>'form-control','placeholder'=>'Section Title'])}}
            </div>
            <div class="form-group has-feedback" style="position: relative;">
                <label for="name" class="hws_form_label">Post Title :</label>
                {{form::text('title',$post->title,['class'=>'form-control','placeholder'=>'Title'])}}
            </div>
            <div class="form-group has-feedback" style="position: relative;">
                <label for="name" class="hws_form_label">Post Description :</label>
                {{form::textarea('description',$post->description,['class'=>'form-control','id'=>'editor'])}}
            </div>
            <div class="form-group has-feedback" style="position: relative;">
                <label for="name" class="hws_form_label">Image :</label>
                @if($post->image)
                <img src="{{url('public/uploads')}}/{{$post->image}}" style="height: 100px;width: 100px;">
                @endif
                {{Form::hidden('old_image',$post->image)}}
                {!! Form::file('image',['class'=>'form-control','id'=>'file']) !!}
            </div>
            {{Form::submit('Save', ['class'=>'btn btn-primary'])}}
        </div>
    </div>
	{!! Form::close() !!}
</div>

@endsection

@push('footer-script')
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" ></script>
    <script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>
    
<script>
$(function(){
                if($("#editor").length){
                    CKEDITOR.replace('editor',{});
                }
                $('.editor').each(function(){
                    CKEDITOR.replace($(this).attr('id') );
                });
            });
</script>
@endpush 