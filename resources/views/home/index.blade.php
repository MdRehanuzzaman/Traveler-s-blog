<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="_token" content="{{ csrf_token() }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

	
    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

    <title>Home</title>
</head>
<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="dorne-load"></div>
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
                                @if(session()->has('moderator_level'))
                                    @if(session('moderator_level')==1)
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Moderator Panel <i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                                <a class="dropdown-item" href="{{route('moderator.reported_post')}}">Reported Post</a>
    	                                        <a class="dropdown-item" href="{{route('moderator.unverified_post')}}">Unverfied Post</a>
                                                <a class="dropdown-item" href="{{route('moderator.comment_report')}}">Comment Report</a>
                                            </div>
                                        </li>                               
                                    @endif
                                    @if(session('moderator_level')==2)
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Moderator Panel<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                                <a class="dropdown-item" href="{{route('moderator.reported_post')}}">Reported Post</a>
    	                                        <a class="dropdown-item" href="{{route('moderator.unverified_post')}}">Unverfied Post</a>
                                                <a class="dropdown-item" href="{{route('moderator.comment_report')}}">Comment Report</a>
                                                <a class="dropdown-item" href="{{route('moderator.delete_post')}}">Delete Post</a>
                                                <a class="dropdown-item" href="{{route('moderator.notice.create')}}">Create Notice</a>
                                                <a class="dropdown-item" href="{{route('moderator.notice.see')}}">See Publish Notices</a>
                                                <a class="dropdown-item" href="{{route('moderator.create_ideal_post')}}">Create Ideal Post</a>
                                            </div>
                                        </li>                               
                                    @endif                                    
                                @endif
                                @if(session()->has('type'))
                                    @if(session('type')=='admin')
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin Panel<i class="fa fa-angle-down" aria-hidden="true"></i></a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown2">                                            
                                                <a class="dropdown-item" href="{{route('super_user.reported_post')}}">Reported Post</a>
                                                <a class="dropdown-item" href="{{route('super_user.unverified_post')}}">Unverfied Post</a>
                                                <a class="dropdown-item" href="{{route('super_user.delete_post')}}">Delete Post</a>
                                                <a class="dropdown-item" href="{{route('super_user.notice.create')}}">Create Notice</a>
                                                <a class="dropdown-item" href="{{route('super_user.comment_report')}}">Comment Reports</a>
                                                <a class="dropdown-item" href="{{route('super_user.create_ideal_post')}}">Create Ideal Post</a>
                                                <a class="dropdown-item" href="{{route('super_user.user_list_block_mod')}}">Moderarotor And Block</a>
                                                <a class="dropdown-item" href="{{route('super_user.notice.see')}}">See Publish Notices</a> 
                                            </div>
                                        </li>    
                                    @endif
                                @endif
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
                            @if(session()->has('user_id'))
                            <!-- Add listings btn -->
                            <div class="dorne-add-listings-btn">
                                <a href="{{route('user.showprofile', [session()->get('user_id')])}}" class="btn dorne-btn">{{$username}}</a>
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
    </div>
	
	<section class="dorne-single-listing-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
 
                <!-- Listing Sidebar -->
                <div class="col-12 col-md-8 col-lg-4">
                    <div class="listing-sidebar">
                        <!-- Listing Verify -->
                        <div class="listing-verify">
                            <?php 
                                $limit=0; 
                                foreach($notices as $ntc)
                                {
                                    echo '<a href="notice/show/'.$ntc->notice_id.'" class="btn dorne-btn w-100">'.$ntc->notice_title. '</a>';
                                    
                                    $limit++;
                                    if($limit>=4)
                                    {
                                        echo '<a href="notice/showMore" class="btn dorne-btn w-100">SHOW MORE</a>';
                                        break;
                                    }
                                }
                            ?>
                        </div>
                    </div>
                </div>

                <!-- Single Listing Content -->
                <div class="col-12 col-lg-8">
                    <div class="single-listing-content">
                        <div class="contact-form">
                            <input type="text" id="searchhome" class="form-control" name="searchhome" placeholder="Where do you want to go">
						</div> 
                    </div>
                </div>  
            </div>
        </div>
    </section>

    <div id='ajSearch'></div>

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
    
	<script type="text/javascript">
		$('#searchhome').on('keyup',function(){
			$value=$(this).val();
			$.ajax({
				type : 'get',
				url : '{{URL::to('searchValue')}}',
				data:{'searchhome':$value},
				success:function(data){
					$('#ajSearch').html(data);
				}
			});
		})
	</script>

	<script type="text/javascript">
		$.ajaxSetup({ headers: { 'csrftoken' : '{{ csrf_token() }}' } });
	</script>

</body>
</html>