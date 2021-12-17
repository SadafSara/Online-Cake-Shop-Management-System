<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\cart;
use App\Models\Order;

use Session;
use Auth;
use Illuminate\Http\Request;

class ProductController extends Controller
{
     public function getIndex()
    {
    	$products = Product::all();
    	return view('shop.index',['products' => $products]);
    }

    public function getAddToCart(REQUEST $request, $id)
    {
    	$product = Product::find($id);
    	$oldcart = Session::has('cart') ? Session::get('cart') : null;
    	$cart = new cart($oldcart);
    	$cart->add($product,$product->id);

    	$request->session()->put('cart', $cart);
    	return redirect()->route('product.index');
    }

    public function getReduceByOne($id)
    {
        $oldcart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new cart($oldcart);
        $cart->reduceByOne($id);
        if(count($cart->items) > 0){
            Session::put('cart', $cart);
        }else {
            Session::forget('cart');
        }
        return redirect()->route('product.shoppingcart');
    }

    public function getRemoveItem($id)
    {
         $oldcart = Session::has('cart') ? Session::get('cart') : null;
        $cart = new cart($oldcart);
        $cart->removeItem($id);

        if(count($cart->items) > 0){
            Session::put('cart', $cart);
        }else {
            Session::forget('cart');
        }

        
        return redirect()->route('product.shoppingcart');
    }

    public function getCart()
    {
        if(!Session::has('cart'))
        {
            return view('shop.shoppingcart');
        }
        $oldcart = Session::get('cart');
        $cart = new cart($oldcart);
        return view('shop.shoppingcart', ['products' => $cart->items, 'totalprice' => $cart->totalprice]);
    }

    public function getCheckout()
    {
        if(!Session::has('cart'))
        {
            return view('shop.shoppingcart');
        }
        $oldcart = Session::get('cart');
        $cart = new cart($oldcart);
        $total = $cart->totalprice;
        return view('shop.checkout', ['total'=> $total]);
    }


    public function postCheckout(REQUEST $request)
    {
        if(!Session::has('cart'))
        {
            return redirect()->route('shop.shoppingcart');
        }
        $oldcart = Session::get('cart');
        $cart = new cart($oldcart);
        $total = $cart->totalprice;
        
        try{
                  $order = new Order();
                  $order->user_id = Auth::id();
                  $order->name = $request->name;
                  $order->total_bill = $total;
                  $order->cart = serialize($cart);
                  $order->total_item = $cart->totalqty;
                  $order->address = $request->address;
                  $order->phone_num =$request->phone_num;
                  $order->method = $request->method;
                  $order->bkash_name = $request->bkash_name;
                  $order->bkash_num = $request->bkash_num;
                  $order->save();

                 
        }
        catch(\Exception $e){
            return redirect()->route('checkout')->with('error', $e->getMessage());
        }

        Session::forget('cart');
        return redirect()->route('product.index')->with('success','Successfully Purchased!! Keep Shopping!!');
    }
}
