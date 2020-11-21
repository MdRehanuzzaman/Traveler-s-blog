<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tour_location;
use App\Article;
use App\Article_rating;
use App\Post_report;
use App\Article_save;
use App\Article_image;
use App\Comment_report;

use Illuminate\Http\UploadedFile;

use Illuminate\Support\Facades\DB;

class ArticleController extends Controller
{
    public function index(Request $req)
    {
        $tour_locations=DB::table('tour_locations')->get();
        $articles=DB::table('articles')
                ->join('users', 'articles.user_id', '=', 'users.user_id')
                ->orderBy('articles.created_at','DESC')
                ->get();
        $article_image=DB::table('articles')
                ->join('article_images','article_images.article_id','=','articles.article_id')
                ->get();
        
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('article.index')->with('tour_locations',$tour_locations)->with('articles',$articles)->with('article_image',$article_image)->with('username',$getUserName->name);
        }
        return view('article.index')->with('tour_locations',$tour_locations)->with('articles',$articles)->with('article_image',$article_image);
    }
    public function store(Request $req)
    {
        if ($req->has('post'))
        {
            $article=new Article();
            date_default_timezone_set('Asia/Dhaka');
            
            $article->user_id=$req->session()->get('user_id');
            $article->article= $req->input('article');
            $article->tour_location_id= $req->input('tour_location_id');
            $article->verification='no';
            $article->topic=$req->input('topic');
            $article->type=$req->input('type');
            // $article->created_at=date('Y-m-d h:m:s');
            // $article->updated_at='0000-00-00 00:00:00';

            $article->save();

            $getArticleId= DB::table('articles')            
            ->where('user_id',$req->session()->get('user_id'))
            ->where('article',$req->input('article'))
            ->where('tour_location_id',$req->input('tour_location_id'))
            ->where('topic',$req->input('topic'))
            ->where('type',$req->input('type'))
            ->first();

            if ($req->hasFile('files'))
            {
                $i=0;
                foreach($req->file('files') as $file)
                {
                    $fileExtension=$file->getClientOriginalExtension();
                    $fileName = date('Y-m-d h-m-s').rand().".".$fileExtension;
                    
                    $article_image=new Article_image();

                    $article_image->article_id=$getArticleId->article_id;
                    $article_image->image=$fileName;

                    $file->move('upload/', $fileName);

                    $article_image->save();
                }
            }

            return redirect()->route('article.index');
        }
        else if($req->has('comment_button'))
        {
            $article_rating=new Article_rating();
            
            $article_rating->article_id=$req->input('article_id');
            $article_rating->commenter_id=$req->session()->get('user_id');
            $article_rating->comment=$req->input('comment_area');
            $article_rating->save();

            return $this->show($req->input('article_id'));
            //return redirect()->route('article.index');
        }
    }
    public function show($article_id)
    {
        $article= DB::table('articles')
                    ->join('users','articles.user_id','=','users.user_id')
                    ->where('article_id',$article_id)
                    ->first();
        $article_rating=DB::table('article_ratings')
                    ->join('articles', 'articles.article_id', '=', 'article_ratings.article_id')
                    ->join('users','users.user_id','=','article_ratings.commenter_id')
                    ->where('article_ratings.article_id',$article_id)
                    ->get();
        $article_image=DB::table('articles')
                    ->join('article_images','article_images.article_id','=','articles.article_id')
                    ->where('article_images.article_id',$article_id)
                    ->get();
        // if($req->session()->has('user_id'))
        // {
        //     $getUserName=DB::table('users')
        //             ->where('user_id','=',$req->session()->get('user_id'))
        //             ->first();
        //     return view('article.show')->with('article',$article)->with('comment',$article_rating)->with('article_image',$article_image)->with('username',$getUserName);
        // }                    

        return view('article.show')->with('article',$article)->with('comment',$article_rating)->with('article_image',$article_image);
    }
    public function showCommentStore(Request $req,$article_id)
    {//for commenting purpose
        $article_rating=new Article_rating();
            
        $article_rating->article_id=$req->input('article_id');
        $article_rating->commenter_id=$req->session()->get('user_id');
        $article_rating->comment=$req->input('comment_area');
        $article_rating->save();
        
        return $this->show($article_id);
        // return redirect()->route('article.index');
    }
    public function myArticlesShow(Request $req)
    {
        $article=DB::table('articles')
                    ->join('tour_locations', 'tour_locations.tour_location_id', '=', 'articles.tour_location_id')
                    ->where('articles.user_id',$req->session()->get('user_id'))
                    ->get();
        $article_image=DB::table('articles')
                    ->join('article_images','article_images.article_id','=','articles.article_id')
                    ->get();        
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('article.myArticlesShow')->with('article',$article)->with('article_image',$article_image)->with('username',$getUserName->name);
        }
        return view('article.myArticlesShow')->with('article',$article)->with('article_image',$article_image);        
    }
    public function edit(Request $req,$article_id)
    {
        $article=DB::table('articles')
                    ->join('tour_locations', 'tour_locations.tour_location_id', '=', 'articles.tour_location_id')
                    ->where('articles.article_id',$article_id)
                    ->first();
        $tour_locations=DB::table('tour_locations')->get();
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
                    return view('article.edit')
                        ->with('article',$article)
                        ->with('tour_locations',$tour_locations)
                        ->with('username',$getUserName->name);
        } 
        return view('article.edit')
                ->with('article',$article)
                ->with('tour_locations',$tour_locations);
    }
    public function update(Request $req,$article_id)
    {
        $article = Article::find($article_id);
        $article->article           = $req->article;
        $article->tour_location_id  = $req->tour_location_id;
        $article->topic             = $req->topic;
        $article->type              = $req->type;

        $article->save();
        
        $articleShow=DB::table('articles')
                    ->join('tour_locations', 'tour_locations.tour_location_id', '=', 'articles.tour_location_id')
                    ->where('articles.user_id',$req->session()->get('user_id'))
                    ->get();
        return redirect()->route('article.myArticlesShow')->with('article',$articleShow);        
    }
    public function delete(Request $req,$article_id)
    {
        DB::table('articles')->where('article_id', $article_id)->delete();
        DB::table('article_accuracys')->where('article_id', $article_id)->delete();
        DB::table('article_external_links')->where('article_id', $article_id)->delete();
        DB::table('article_images')->where('article_id', $article_id)->delete();
        DB::table('article_likes')->where('article_id', $article_id)->delete();
        DB::table('article_ratings')->where('article_id', $article_id)->delete();
        DB::table('article_saves')->where('article_id', $article_id)->delete();
        DB::table('post_reports')->where('article_id', $article_id)->delete();

        $articleShow=DB::table('articles')
                    ->join('tour_locations', 'tour_locations.tour_location_id', '=', 'articles.tour_location_id')
                    ->where('articles.user_id',$req->session()->get('user_id'))
                    ->get();
        return redirect()->route('article.myArticlesShow')->with('article',$articleShow);             
    }
    public function report(Request $req,$article_id)
    {
        $article= DB::table('articles')
                ->join('users','articles.user_id','=','users.user_id')
                ->where('article_id',$article_id)
                ->first();
        $article_rating=DB::table('article_ratings')
                ->join('articles', 'articles.article_id', '=', 'article_ratings.article_id')
                ->join('users','users.user_id','=','article_ratings.commenter_id')
                ->where('article_ratings.article_id',$article_id)
                ->get();
        $article_image=DB::table('articles')
                ->join('article_images','article_images.article_id','=','articles.article_id')
                ->where('article_images.article_id',$article_id)
                ->get();
        
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('article.report')->with('article',$article)->with('comment',$article_rating)->with('article_image',$article_image)->with('username',$getUserName->name);
        }
        return view('article.report')->with('article',$article)->with('comment',$article_rating)->with('article_image',$article_image);
    }
    public function postReport(Request $req,$article_id)
    {
        $post_report=new Post_report();
        
        $post_report->status='moderator';
        $post_report->article_id= $article_id;
        $post_report->user_id= $req->session()->get('user_id');
        $post_report->report=$req->input('report');

        $post_report->save();

        return redirect()->route('article.index');
    }
    public function savePost(Request $req,$article_id)
    {
        $article_save=new Article_save();
        
        $article_save->article_id= $article_id;
        $article_save->user_id= $req->session()->get('user_id');

        $article_save->save();

        return redirect()->route('article.index');
    }
    public function savedPost(Request $req)
    {
        $articles=DB::table('articles')
                    ->join('article_saves', 'articles.article_id', '=', 'article_saves.article_id')
                    ->join('users', 'articles.user_id', '=', 'users.user_id')
                    ->where('article_saves.user_id',$req->session()->get('user_id'))
                    ->get();
        $article_image=DB::table('articles')
                    ->join('article_images','article_images.article_id','=','articles.article_id')
                    ->get();            
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('article.savedpost')->with('articles',$articles)->with('article_image',$article_image)->with('username',$getUserName->name);
        }
        return view('article.savedpost')->with('articles',$articles)->with('article_image',$article_image);        
    }
    public function commentReportPage(Request $req,$comment_id)
    {
        $comments=DB::table('article_ratings')
                    ->join('users', 'users.user_id', '=', 'article_ratings.commenter_id')
                    ->where('article_ratings.comment_id',$comment_id)
                    ->first();
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('article.commentreport')->with('comments',$comments)->with('username',$getUserName->name);
        }                            
        return view('article.commentreport')->with('comments',$comments);
    }
    public function commentReport(Request $req,$comment_id)
    {
        $comment_report=new Comment_report();
        
        $comment_report->status='moderator';
        $comment_report->comment_id= $comment_id;
        $comment_report->commenter_id= $req->input('commenter_id');
        $comment_report->user_id= $req->session()->get('user_id');
        $comment_report->report=$req->input('report');

        $comment_report->save();

        $article=DB::table('article_ratings')
            ->join('articles', 'articles.article_id', '=', 'article_ratings.article_id')
            ->where('article_ratings.comment_id',$comment_id)
            ->first();   

       return $this->show($article->article_id);
    }    
}
