<div class="wrapper">
        <!-- Sidebar  -->

        @if(Auth::user()->permission == "1")

        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Branch Location</h3>
                <strong><i class="fa fa-map-marker" aria-hidden="true"></i><i class="fas fa-map"></i></strong>
            </div>

            <ul class="list-unstyled components">
                        

                <li class="active">

                <a href="{{ url('/home') }}">
                        <i class="fa fa-map-marker"></i>
                        Branch Map
                    </a>


                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <i class="fa fa-edit" aria-hidden="true"></i>
                        Update Location
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="{{ url('/newbranch') }}">New Branch</a>
                        </li>
                        <li>
                            <a href="{{ url('/all_branch') }}">Update & Find Branch</a>
                        </li>
                       
                    </ul>
                </li>
                <li>
                   
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <i class="fa fa-user" aria-hidden="true"></i>
                        User Details
                    </a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li>
                            <a href="{{ url('/register') }}">User Registration</a>
                        </li>
                        <li>
                            <a href="{{ url('/all_users') }}">All User Details</a>
                        </li>
                      
                       
                    </ul>
                </li>
                
               
            </ul>

            <ul class="list-unstyled CTAs">



            <a href="https://www.google.com/maps/d/u/2/edit?mid=1U7lxGpoHzTOVmeTk6c0w4KcUoFLq67Tr&ll=7.761859730021721%2C79.49156306445536&z=7" style="background-color:red;">
                        
                        Assurance Branch Map
                    </a>

            <a href="https://www.google.com/maps/d/u/2/edit?mid=1nlOSb5RNKwLrotr2bOr9WPic3gCCZczR&ll=8.579979002554259%2C79.76307225202561&z=7" style="background-color:#FFC300;">
                        
                        General Branch Map
                    </a>
              
            </ul>

           


        </nav>




        @else


        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Branch Location</h3>
                <strong><i class="fa fa-map-marker" aria-hidden="true"></i><i class="fas fa-map"></i></strong>
            </div>


       


            <ul class="list-unstyled components">
                        

                <li class="active">

                <a href="{{ url('/home') }}">
                        <i class="fa fa-map-marker"></i>
                        Branch Map
                    </a>


                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                    <i class="fa fa-edit" aria-hidden="true"></i>
                        Update Location
                    </a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="{{ url('/newbranch') }}">New Branch</a>
                        </li>
                        <li>
                            <a href="{{ url('/all_branch') }}">Update & Find Branch</a>
                        </li>
                       
                    </ul>
                </li>
               
              
            </ul>

            <ul class="list-unstyled CTAs">
              
            </ul>
        </nav>








        @endif



        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-dark">
                        <i class="fas fa-align-left"></i>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                               
                            </li>
                            <li class="nav-item">
                               
                            </li>
                            <li class="nav-item">
                              
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">{{ Auth::user()->name }}</a>

                                <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" style = "text-align:center;color:red;">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>



                              
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>