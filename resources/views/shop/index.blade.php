@extends('layouts.master')

@section('title')
	Sadaf's Cake Shop
@endsection

@section('content')
<div>
<img src="https://www.teahub.io/photos/full/9-90820_online-cake-order-in-ludhiana-cakes.jpg" alt="homepage image" style="  width:100%; height: 320px;  border-radius: 10px;" >
</div>
<div style="color:#DE3163;font-family:Brush Script MT;  ">
	<h1><center>
		<strong> * * * Available Cakes * * *</strong>
	</center></h1>
</div> <br>
	@if(Session::has('success'))
	<div class="row">
		<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
			<div id="charge-message" class="alert alert-success">
				{{ Session::get('success') }}
			</div>
		</div>
	</div>
	@endif
	@foreach($products->chunk(3) as $productChunk)
		<div class="row" >
			@foreach($productChunk as $product)
				<div class="col-sm-8 col-md-4">
			    	<div class="thumbnail" style="background-color:pink;">
			
			      		<div class="caption">
			        		<h3 style=" color:#DE3163;font-weight: bold;">{{ $product->title }}</h3>
			        		<p class="description">
			        			{{ $product->description }}
			        		</p>
							<p class="description" style=" font-weight: bold;">
			        		Weight : {{ $product->weight }} kg
			        		</p>
			        		<div class="clearfix">
				        		<div class="pull-left price" style="font-weight: bold;">
				        		Price :	Tk. {{ $product->price }}
				        		</div>
			        			<a href="{{ route('product.addtocart', ['id' => $product->id]) }}" class="btn btn-success pull-right " role="button" style="background-color:#DE3163;  border: none;">Add to Cart</a>
			        		</div>
			        	</div>
			      	</div>
			    </div>
			@endforeach
		</div>
	@endforeach
@endsection