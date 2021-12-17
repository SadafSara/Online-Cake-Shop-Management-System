@extends('layouts.master')


@section('title')
Sadaf's Cake Shop
@endsection

@section('content')
	@if(Session::has('cart'))
		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
				<ul class="list-group">
					@foreach($products as $product)
						<li class="list-group-item">
							<span class="badge">{{ $product['qty'] }}</span>
							<strong>{{ $product['item']['title'] }}</strong>
							<span class="label label-success" style="background-color:#DE3163;">Sub Total : Tk. {{ $product['price'] }}</span>
							<div class="btn-group">
								<button type="button"  class="btn btn-primary btn-xs dropdown-toggle" data-toggle="dropdown"  > Delete Item <span class="caret"></span></button>
								<ul class="dropdown-menu">
									<li><a href="{{ route('product.reducebyone', ['id' => $product['item']['id']]) }}"  style="color:red; font-weight: bold;">Remove one</a></li>
									<li><a href="{{ route('product.remove', ['id' => $product['item']['id']]) }} "  style="color:red; font-weight: bold;">Remove all</a></li>
								</ul>
							</div>
						</li>
					@endforeach
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
				<strong>Total Bill : Tk. {{ $totalprice }}</strong>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
				
				<a href="{{ route('checkout') }}" type="button" class="btn btn-success" style="background-color:#DE3163;  border: none;"> Proceed to Checkout</a>
			</div>
		</div>	
	@else
		<div class="row">
			<div class="col-sm-6 col-md-6 col-md-offset-3 col-sm-offset-3">
				<h2 style="color:#DE3163; font-weight: bold;"> 
				<center>   **No items found inside this cart** </center>
					<br><center> Please go back to the Homepage and add some delicious cakes ! </center>

					</h2>
					
			</div>
			
		</div>
	@endif
@endsection