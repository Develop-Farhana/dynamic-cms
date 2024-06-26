@extends('admin.layout')
@section('content')
<!-- <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap4.min.css">
<h1>Page Details</h1>
@if (session()->has('message'))
<div class="alert alert-dismissible" style="color:red;">
    {{ session('message') }}
</div>
@endif
<div class="navbar-right">
    <a href="{{route('post-add')}}" class="btn btn-primary">Add New</a>
</div>
<table id="example" class="table table-striped table-bordered" style="width:100%">
<thead>
		<th>Page</th>
		<th>Section Title</th>
		<th>Post Title</th>
		<th>Image</th>
		<th>Action</th>
	</thead>
        <tbody>
        @foreach($posts as $post)
			<tr>
			<td>{{$post->page_title}}</td>
			<td>{{$post->section_title}}</td>
			<td>{{$post->title}}</td>
			<td><img src="public/uploads/{{$post->image}}" style="height: 50px;width: 50px;"></td>
			<td>
				<a href="{{route('post-edit')}}/{{$post->id}}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
				<a class="btn btn-primary btn-xs deletepost" image="{{$post->image}}" post-id="{{$post->id}}"><i class="fa fa-trash"></i></a>
			</td>
			</tr>
			@endforeach
           
             </tbody>
        
    </table>
<!-- <table class="table table-bordered">
	<thead>
		<th>Page</th>
		<th>Section Title</th>
		<th>Post Title</th>
		<th>Image</th>
		<th>Action</th>
	</thead>
	<tbody>
		
			@foreach($posts as $post)
			<tr>
			<td>{{$post->page_title}}</td>
			<td>{{$post->section_title}}</td>
			<td>{{$post->title}}</td>
			<td><img src="public/uploads/{{$post->image}}" style="height: 50px;width: 50px;"></td>
			<td>
				<a href="{{route('post-edit')}}/{{$post->id}}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
				<a class="btn btn-primary btn-xs deletepost" image="{{$post->image}}" post-id="{{$post->id}}"><i class="fa fa-trash"></i></a>
			</td>
			</tr>
			@endforeach
			
	</tbody>
</table> -->
<h2>{{ $posts->links() }}</h2>
@endsection

@push('footer-script')
<!-- <script src="https://code.jquery.com/jquery-3.7.0.js"></script> -->
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap4.min.js"></script>
<script type="text/javascript">
      new DataTable('#example');
    </script>
<!-- <script>
    $(document).ready(function(){
         $(document).on("click",".deletepost",function(){
            var id     = $(this).attr('post-id');
            var image = $(this).attr('image');
            if (confirm('Are you sure want to delete this Post with all data..?')) {
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
                    },
                    url: '{{ route('post-delete') }}',
                    data: {"id":id,"image":image},
                    type: "post",
                    success: function(data){
                        if(data==true){
                            alert("Post deleted successfully..!!");
                        }else{
                            alert(data);
                        }
                        window.location.reload();
                    }
                });
            }
        });
        
    });
</script> -->
@endpush 