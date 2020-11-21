<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet"> 	
    <title>Sign Up</title>
</head>
<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="dorne-load"></div>
    </div>

    <!-- ***** Search Form Area ***** -->
    <div class="dorne-search-form d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-close-btn" id="closeBtn">
                        <i class="pe-7s-close-circle" aria-hidden="true"></i>
                    </div>
                    <form action="#" method="get">
                        <input type="search" name="caviarSearch" id="search" placeholder="Search Your Desire Destinations or Events">
                        <input type="submit" class="d-none" value="submit">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ***** Header Area Start ***** -->
    <header class="header_area" id="header">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <div class="col-12 h-100">
                    <nav class="h-100 navbar navbar-expand-lg">
                        <a class="navbar-brand" href="{{route('home.index')}}"><img src="img/core-img/logo.png" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#dorneNav" aria-controls="dorneNav" aria-expanded="false" aria-label="Toggle navigation"><span class="fa fa-bars"></span></button>
                        <!-- Nav -->
                        <div class="collapse navbar-collapse" id="dorneNav">
                            <ul class="navbar-nav mr-auto" id="dorneMenu">
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('home.index')}}">HOME <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('tourLocationUser.index')}}">TOUR LOCATIONS <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="{{route('article.index')}}">ARTICLES <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.html">CONTACT</a>
                                </li>
                            </ul>

                            @if(session()->has('user_id'))
                                <!-- Signin btn -->
                                <div class="dorne-signin-btn">
                                    <a href="{{route('logout.index')}}">SIGN OUT</a>
                                </div>
                            @else
                                <!-- Signin btn -->
                                <div class="dorne-signin-btn">
                                    <a href="{{route('login.index')}}">SIGN IN OR REGISTER</a>
                                </div>
                            @endif
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <div class="breadcumb-area height-400 bg-img bg-overlay" style="background-image: url(img/bg-img/sajek.jpg)">
        <!-- <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcumb-content">
                        <div class="map-ratings-review-area d-flex">
                            <a href="#" class="d-flex align-items-center justify-content-center"><img src="img/core-img/map.png" alt=""></a>
                            <a href="#">8.7</a>
                            <a href="#">Write a review</a>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    </div>
    <section class="dorne-single-listing-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Single Listing Content -->
                <div class="col-12 col-lg-8">
                    <div class="single-listing-content">
                        <div class="contact-form">
                            <div class="contact-form-title">
                                <h6>SIGN UP</h6>
                            </div>	
								<form method="post"enctype="multipart/form-data">
									@csrf
									<table>
										<tr>
											<td><h4>Email :</h4></td>
											<td><input type="text" name="email" value="{{old('email')}}" class="form-control"></td>
										</tr>
										<tr>
											<td><h4>Name :</h4></td>
											<td><input type="text" name="name" value="{{old('name')}}" class="form-control"></td>
										</tr>
										<tr>
											<td><h4>Password :</h4></td>
											<td><input type="password" name="password" value="{{old('password')}}" class="form-control"></td>
										</tr>
										<tr>
											<td><h4>Address :</h4></td>
											<td><input type="text" name="address" value="{{old('address')}}" class="form-control"></td>
										</tr>
										<tr>
											<td><h4>Avatar :</h4></td>
											<td><input type="file" name="file" id='file' accept="image/*" required class="btn dorne-btn"></td>
										</tr>
										<tr>
											<td><h4>Gender :</h4></td>
											<td>
												<select name='gender' class="form-control">
													<option value="" selected>-Select-</option>
													<option value="male">Male</option>
													<option value="female">Female</option>
													<option value="others">Others</option>
												</select>
											</td>
										</tr>
										<tr>
											<td><h4>Date Of Birth :</h4></td>
											<td><input type="Date" name="dob" class="form-control" value="{{old('dob')}}"></td>
										</tr>
										<tr>
											<td><h4>Phone Number :</h4></td>
											<td><input type="text" name="phone" class="form-control" value="{{old('phone')}}"></td>
										</tr>
										<tr>
											<!-- <td>Name :</td> -->
											<td><input type="hidden" name="type" value="user" ></td>
										</tr>
										<tr>
											<!-- <td>Name :</td> -->
											<td><input type="hidden" name="status" value="live" ></td>
										</tr>            
										<tr>
											<!-- <td>Name :</td> -->
											<td><input type="hidden" name="moderator_level" value="0"></td>
										</tr>
										<tr>
											<td colspan='2'>
												<input type="submit" name="submit" value="Submit" class="btn dorne-btn">
											</td>
										</tr>
										<tr>	
											<td colspan='2'>
												<div style="color: red">
													@if($errors->any())
														@foreach($errors->all() as $err)
															<p>{{$err}}</p> <br>
														@endforeach
													@endif
												</div>
											</td>
										</tr>
									</table>
								</form>
						</div> 
                    </div>
                </div> 
            </div>
        </div>
    </section>	
    <!-- ****** Footer Area Start ****** -->
    <footer class="dorne-footer-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 d-md-flex align-items-center justify-content-between">
                    <div class="footer-text">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                    <div class="footer-social-btns">
                        <a href="#"><i class="fa fa-linkedin" aria-haspopup="true"></i></a>
                        <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                        <a href="#"><i class="fa fa-twitter" aria-haspopup="true"></i></a>
                        <a href="#"><i class="fa fa-facebook" aria-haspopup="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ****** Footer Area End ****** -->	

    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap-4 js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/others/plugins.js"></script>
    <!-- Google Maps js -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk9KNSL1jTv4MY9Pza6w8DJkpI_nHyCnk"></script>
    <script src="js/google-map/location-map-active.js"></script>
    <!-- Active JS -->
    <script src="js/active.js"></script>	
</body>
</html>