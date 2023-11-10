@extends('user/app')

@section('bg-img',asset('user/img/home-bg.jpg'))
@section('title','Simple Blog')
@section('sub-heading','This is test blog')
@section('head')
	<style>
		.fa-thumbs-up:hover{
			color:#f41115;
		}
	</style>
@endsection
@section('main-content')
	<!-- Main Content -->
	<div class="container">
		<div class="col-md-12" style="text-align: center">
			<h1>Posts</h1>
		</div>
	    <div class="row" id="app">
	        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				@foreach($posts as $post)
					<div class="post-preview">
						<a href="{{$post->slug}}">
							<h2 class="post-title">
								{{ $post->title }}
							</h2>
							<h3 class="post-subtitle">
								{{ $post->subtitle }}
							</h3>
						</a>
						<p class="post-meta">Created At {{ $post->created_at }}
							<a href="javascript:void(0)" onclick="likeIt({{$post->id}})">
								<small id="likeCount">{{count($post->likes)}}</small>
								@if(count($post->likes) == 0)
									<i class="fa fa-thumbs-up" aria-hidden="true"></i>
								@else
									<i class="fa fa-thumbs-up" style="color:red" aria-hidden="true"></i>
								@endif
							</a>
						</p>
					</div>
				@endforeach
	            <hr>
	            <!-- Pager -->
	            <ul class="pager">
	                <li class="next">
	                	{{ $posts->links() }}
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>

	<hr>
@endsection
@section('footer')
	<script>
		function likeIt(postId){

			@if (Auth::check())
				$.post("/saveLike",  {"_token": "{{ csrf_token() }}","id" : postId}, function(response){
					console.log(response);
					if (response == 'deleted') {
						var like = parseInt($("#likeCount").text());
						like -= 1;
						$("#likeCount").text(like);
					}else{
						var like = parseInt($("#likeCount").text());
						like += 1;
						$("#likeCount").text(like);
					}
				});
			@else
				window.location = 'login';
			@endif
		}
	</script>
@endsection