<nav class="navbar navbar-default">
  <div class="container-fluid back">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{{ route('product.index')}}" style="color:#DE3163; font-size: 25px;" ><strong>Sadaf's Cake Shop</strong></a>
    </div>

    <ul class="nav navbar-nav navbar-right">
        @if (Auth::guest())
        <li><a href="{{ url('/login') }}"><i class="fa fa-sign-in" aria-hidden="true"></i> <strong>Login</strong></a></li>
                            <li><a href="{{ url('/register') }}"><i class="fa fa-user-plus" aria-hidden="true"></i><strong> Register</strong></a></li>

                        @else
                            <li><a href="{{ route('product.shoppingcart') }}">
                                <i class="fa fa-shopping-cart" aria-hidden="true" ></i> <strong>Cart</strong>  <span class="badge">  {{ Session::has('cart') ? Session::get('cart')->totalqty :'' }}</span>
                                </a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-user-circle-o" aria-hidden="true"></i> <strong>{{ Auth::user()->name }} </strong> <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">  
                                <li><a href="{{ url('/') }}"  style="color:#DE3163; font-weight: bold;">Home</a> </li>

                                    <li role="separator" class="divider"></li>

                                    <li>

                                        <a href="{{ url('/logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" style="color:#DE3163; font-weight: bold;">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                   
                                </ul>
                            </li>
                        @endif
    </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>