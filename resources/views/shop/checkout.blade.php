@extends('layouts.master')

@section('title')
Sadaf's Cake Shop
@endsection

@section('content')
	@if(Session::has('cart'))
		<div class="row">
			<div class="col-sm-6 col-md-4 col-md-offset-4 col-sm-offset-3">
				<h1>Checkout</h1>
				<h4>Your Total Bill : Tk. {{ $total }}</h4>
				<div id="charge-error" class="alert alert-danger {{!Session::has('error') ? 'hidden' : ''}}">
					{{ Session::get('error') }}
				</div>
			
				<form action="{{ route('checkout') }}" method="post" id="checkout-form">
					
					<div class="row">
						<div class="col-xs-12">
							<div class="form-group">
								<label for="name">Name <a style="color:red">*</a></label>
								<input type="text" id="name" class="form-control" name="name" required>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="form-group">
								<label for="address">Delivery Address <a style="color:red">*</a></label>
								<input type="text" id="address" name="address" class="form-control" required>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="form-group">
								<label for="phone_num">Phone number <a style="color:red">*</a></label>
								<input type="text" id="phone_num" name="phone_num" class="form-control" required>
							</div>
						</div>
						<br>

						<div>
							<th> <strong> <center> Select Payment Method : <a style="color:red">*</a></center> </strong> </td>
                           <br>
						   <div>
							   <center>
                           <label> 
							   <input type="radio"  name="method" value="Cash" required>  Cash On Delivery
							</label> <br>
						   <label> <input type="radio"  name="method" value="Bkash" >  Bkash </label>
						   </center>
						   </div>
                        </div>

						<div>
							<br><br>
							<div style="color:red"> 
							<center><strong>**For Bkash Payment Only**</strong></center>
							</div>
							<th><center><br> <br>Deposit payment to this Bkash Account after placing order : <br> <strong>Bkash Account Name : Sadaf Ahmed Sara <br> Bkash number : 01686556451</strong><br><br></center></th>
							<div style="color:#DE3163;">
							<center><strong>***We will ship your order to the given delivery address once the bkash payment is received!***</strong></center>
							</div>
							<div style="color:#DE3163;">
							<th ><center><br>Fill in the bkash credentials from which you made your payment :</center></th><br>
						    </div>
							<div style="color:red">
								<center>**Not needed if you selected <strong>"Cash On Delivery" </strong>as the payment method** </center>
							</div>
						</div> 


						 <div class="col-xs-12">
							<div class="form-group">
								<label for="bkash_name">Bkash Account name</label>
								<input type="text" id="bkash_name" name="bkash_name" class="form-control" >
							</div>
						</div>
						<div class="col-xs-12">
							<div class="form-group">
								<label for="bkash_num">Bkash Number</label>
								<input type="text" id="bkash_num" name="bkash_num" class="form-control" >
							</div>
						</div> 
					</div>
					{{ csrf_field() }}
					<button type="submit" onclick="return confirm('Are you sure?')" class="btn btn-success" style="background-color:#DE3163;  border: none;">Place Order</button>
				</form>
			</div>
		</div>
	@endif
@endsection

