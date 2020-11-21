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

    <title>Articles</title>
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
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Single Listing Area Start ***** -->
    <section class="dorne-single-listing-area section-padding-100">
        <div class="container">
            <div class="row justify-content-center">
                <!-- Single Listing Content -->
                <div class="col-12 col-lg-12">
                    <div class="single-listing-content">
                        @if(session()->has('user_id'))
                        <div class="single-listing-nav">
                            <nav>
                                <ul>
                                    <li><a href="{{route('article.myArticlesShow')}}">My Articles</a></li>
                                    <li><a href="{{route('article.savedpost')}}">Saved post</a></li>
                                    <li><a href="{{route('user.myprofile')}}">My Profile</a></li>
                                </ul>
                            </nav>
                        </div>
                        <div class="contact-form">
                                    <div class="contact-form-title">
                                        <h6>Write an article</h6>
                                    </div>
                        <div id="article_post">
                            <form method='post' enctype="multipart/form-data">
                                @csrf
                                <input type='text' name='topic' class="form-control" placeholder='Title of the article' required>
                                <br>
                                <textarea style='width:100%' name='article' class="form-control" rows="10" placeholder='Write the article here' required></textarea>
                                <select name='tour_location_id' class="form-control" required>
                                    <option value="">-Select place name you are refering to-</option>
                                    @foreach($tour_locations as $tl)
                                        <option value="{{$tl->tour_location_id}}">{{$tl->place_name}}</option>
                                    @endforeach
                                </select>
                                <select name='type' class="form-control" required>
                                    <option value="">-Select your article type-</option>
                                    <option value="review">Review</option>
                                    <option value="question">Question</option>
                                    <option value="others">Others</option>
                                </select>
                                <br>
                                <p>Upload some images if you want to</p>
                                <input type="file" name="files[]" class="btn dorne-btn" id='file' class="form-control" accept="image/*" multiple><br>

                                <!-- <input type='text' size=100 placeholder='Upload external link if you wish' name='link1'><br>
                                <input type='text' size=100 placeholder='Upload external link if you wish' name='link2'><br>
                                <input type='text' size=100 placeholder='Upload external link if you wish' name='link3'><br>
                                <input type='text' size=100 placeholder='Upload external link if you wish' name='link4'><br>
                                <input type='text' size=100 placeholder='Upload external link if you wish' name='link5'><br> -->
                                <br>
                                <input type='submit' class="btn dorne-btn" name='post' value='POST'>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br><br>
    @endif

    @foreach($articles as $art)
        @if($art->verification=='yes')
            <section class="dorne-single-listing-area section-padding-100">
                <div class="container">
                    <div class="row justify-content-center">
                        <!-- Single Listing Content -->
                        <div class="col-12 col-lg-12">
                            <div class="single-listing-content">
                                <div class="contact-form">
                                    <h2>{{$art->topic}}</h2>
                                    <h4>Posted by :<a href="{{route('user.showprofile', [$art->user_id])}}"> {{$art->name}}</a></h4>
                                    <h4>Posted at : {{$art->created_at}}</h4>
                                    @if(!$art->updated_at=='0000-00-00 00:00:00')
                                        <h4>Updated at : {{$art->updated_at}}</h4>
                                    @endif    
                                    @if(strlen($art->article)>=5000)
                                        <p>{{substr($art->article, 0, 5000)}}</p>
                                        <a href="{{route('article.show', [$art->article_id])}}">Show more </a><br>
                                    @else
                                        <p>{{$art->article}}</p>
                                    @endif
                                    @foreach($article_image as $img)
                                        @if($img->article_id==$art->article_id)
                                            <img src="{{asset('upload/'.$img->image)}}" width="100px" height="100px" />
                                        @endif
                                    @endforeach
                                    <br>
                                    <a href="{{route('article.show', [$art->article_id])}}">Show Comments / Full Story </a> |
                                    <a href="{{route('article.report', [$art->article_id])}}">Report this post </a> |
                                    <a href="{{route('article.savepost', [$art->article_id])}}">Save this article </a>          
                                    @if(session()->has('user_id'))
                                        <form method='post'>
                                            @csrf
                                            <textarea rows='3' style='width:100%' name='comment_area' placeholder='comment for this post' class="form-control"></textarea>
                                            <input type='hidden' name='article_id' value='{{$art->article_id}}'>
                                            <input type='submit' name='comment_button' class="btn dorne-btn" value='Comment'> 
                                        </form>
                                    @endif
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @endforeach

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