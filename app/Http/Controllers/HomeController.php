<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notice;
use App\Tour_location;
use App\Article;
use App\Article_image;
use App\User;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index(Request $req)
    {
        $notices=DB::table('notices')
                    ->orderBy('created_at','DESC')
                    ->get();
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('home.index')->with('notices',$notices)->with('username',$getUserName->name);
        }               
        return view('home.index')->with('notices',$notices);
    }
    public function search(Request $request)
    {
        if($request->ajax())
        {
			$output="";
            $articles=DB::table('articles')
                    ->distinct()
                    ->join('users','users.user_id','=','articles.user_id')
                    ->join('tour_locations','tour_locations.tour_location_id','=','articles.tour_location_id')
                    ->where('article','LIKE','%'.$request->searchhome."%")
                    ->orWhere('place_name','LIKE','%'.$request->searchhome."%")
                    ->get();
            // $article_image=DB::table('articles')
            //         ->join('article_images','article_id','=','articles.article_id')
            //         ->get();
            if($articles)
            {
                foreach ($articles as $key => $art)
                {
                    if($art->verification='yes')
                    {
                        $output.=
                        '<section class="dorne-single-listing-area section-padding-100">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <!-- Single Listing Content -->
                                    <div class="col-12 col-lg-12">
                                        <div class="single-listing-content">
                                            <div class="contact-form">'.
                                                '<h3>'.$art->topic.'</h3>
                                                <h4>Posted by : '.$art->name.'</h4>';
                        if(strlen($art->article)>=5000)
                        {
                            $output.=substr($art->article, 0, 5000);
                        }
                        else
                        {
                            $output.=$art->article;
                        }                  
                                                                                   
                        // foreach($article_image as $img)
                        // {
                        //     if($img->article_id==$art->article_id)
                        //     {
                        //        $output.='<img src="upload/'.$img->image.'" width="100px" height="100px" />';
                        //     }
                        // }
                                                $output.='<br><a href="article/show/'.$art->article_id.'">Show Comments / Full Story </a><br>'.
                                            '</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>';
                    }
				}
				return Response($output);
			}
		}
    }
    public function show($notice_id)
    {
        $notice= DB::table('notices')
                    ->where('notice_id',$notice_id)
                    ->first();
        // if($req->session()->has('user_id'))
        // {
        //     $getUserName=DB::table('users')
        //             ->where('user_id','=',$req->session()->get('user_id'))
        //             ->first();
        //     return view('article.show')->with('article',$article)->with('comment',$article_rating)->with('article_image',$article_image)->with('username',$getUserName);
        // }                    

        return view('notice.show')->with('notice',$notice);
    }    
    public function showMore(Request $req)
    {
        $notices= DB::table('notices')
                ->get(); 
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('notice.showMore')->with('notices',$notices)->with('username',$getUserName->name);
        }                           
        return view('notice.showMore')->with('notices',$notices);
    }
}