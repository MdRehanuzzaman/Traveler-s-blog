<?php

namespace App\Http\Controllers;

use App\Post_report;
use App\Article;
use App\Notice;
use App\User;
use App\Article_ratings;
use App\Comment_reports;
use App\Article_saves;
use App\user_performance;
use App\Tour_location;
use App\Tour_location_image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class super_userController extends Controller
{
    public function index(Request $request){
      //session(['user_id' => 1]);
      $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();
      return view('super_user.index')->with('username',$getUserName->name);   	
   	//return view('super_user.index');
   }
   
   public function reported_post(Request $request){
      //session(['user_id' => 1]); 
   	$post_reports=DB::table('articles')
               ->join('post_reports','post_reports.article_id','=','articles.article_id')
   			   ->where('post_reports.status','admin')->get();
      $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();

      
      $article_images=DB::table('articles')
                ->join('article_images','article_images.article_id','=','articles.article_id')
                ->get();   
   	return view('super_user.reported_post')->with('username',$getUserName->name)-> with('post_reports',$post_reports)->with('article_images',$article_images);
   }


   public function status_update_reported_post(Request $request)
   {
     // session(['user_id' => 1]); 
      $statusadmin[]=$request['statusyes'];
      $statuswrong[]=$request['statusno'];

      foreach($statusadmin as $report_id){
         //$post_report=Post_report::find($report_id);
         //$post_report->status='admin';
         //$post_report->save();
         DB::table('articles')
         ->join('post_reports','post_reports.article_id','=','articles.article_id')
         ->where('post_reports.report_id',$report_id)
         ->update(['articles.verification' => 'reported']);

         DB::table('articles')
         ->join('post_reports','post_reports.article_id','=','articles.article_id')
         ->where('post_reports.report_id',$report_id)
         ->update(['post_reports.status' => 'done']);
      }

         // DB::table('user_performances')
         // ->join('articles','articles.user_id','=','user_performances.user_id')
         // ->join('post_reports','post_reports.article_id','=','articles.article_id')        
         // ->where('post_reports.report_id',$report_id)
         // ->increment('user_performances.reported_article');   


      

      foreach($statuswrong as $report_id){
         //$post_report=Post_report::find($report_id);
         //$post_report->status='wrong';
         //$post_report->save();
         DB::table('articles')
         ->join('post_reports','post_reports.article_id','=','articles.article_id')
         ->where('post_reports.report_id',$report_id)
         ->update(['articles.verification' => 'wrong']);
      }   

      $post_reports=DB::table('articles')
            ->join('post_reports','post_reports.article_id','=','articles.article_id')
            ->where('post_reports.status','admin')->get();
      $getUserName=DB::table('users')
            ->where('user_id','=',$request->session()->get('user_id'))
            ->first();
      $article_images=DB::table('articles')
                ->join('article_images','article_images.article_id','=','articles.article_id')
                ->get();   
      return view('super_user.reported_post')->with('username',$getUserName->name)-> with('post_reports',$post_reports)->with('article_images',$article_images);
                         
   }

   public function unverified_post(Request $request){
      //session(['user_id' => 1]); 

      $articles=DB::table('Articles')
               ->where('verification','no')->get();

      $article_images=DB::table('articles')
                ->join('article_images','article_images.article_id','=','articles.article_id')
                ->get();
      $getUserName=DB::table('users')
            ->where('user_id','=',$request->session()->get('user_id'))
            ->first();      
      return view('super_user.unverified_post')-> with('articles',$articles)->with('username',$getUserName->name)->with('article_images',$article_images);
   }

   public function verification_update_articles(Request $request){
      //session(['user_id' => 1]); 
      $statusadmin[]=$request['statusyes'];
      $statuswrong[]=$request['statusno'];

      foreach($statusadmin as $article_id){
      //$post_report=Post_report::find($report_id);
      //$post_report->status='admin';
      //$post_report->save();
      DB::table('articles')
               ->where('article_id',$article_id)
               ->update(['verification' => 'yes']);

      // DB::table('user_performances')
      // ->join('articles','articles.user_id','=','user_performances.user_id')       
      // ->where('article_id',$article_id)
      // ->increment('user_performances.article_verified')->with('username',$getUserName->name);        


         
   }

      foreach($statuswrong as $article_id){
         //session(['user_id' => 1]); 
         //$post_report=Post_report::find($report_id);
         //$post_report->status='wrong';
         //$post_report->save();   
         DB::table('articles')
               ->where('article_id',$article_id)
               ->update(['verification' => 'no']);
                        
      }
      $articles=DB::table('Articles')
         ->where('verification','no')->get();
      $article_images=DB::table('articles')
                ->join('article_images','article_images.article_id','=','articles.article_id')
                ->get();
      $getUserName=DB::table('users')
            ->where('user_id','=',$request->session()->get('user_id'))
            ->first();       
      return view('super_user.unverified_post')-> with('articles',$articles)->with('username',$getUserName->name)->with('article_images',$article_images);

   }

   public function notice_index(Request $request){
      //session(['user_id' => 1]); 
     
      $getUserName=DB::table('users')
      ->where('user_id','=',$request->session()->get('user_id'))
      ->first();   
      return view('super_user.notice_index')->with('username',$getUserName->name);
   }  

   public function create_notice_render(Request $request){
      //session(['user_id' => 1]); 
     
      $getUserName=DB::table('users')
      ->where('user_id','=',$request->session()->get('user_id'))
      ->first();
      return view('super_user.notice_create')->with('username',$getUserName->name);      
   }  

   public function create_notice_store(Request $req){
      //session(['user_id' => 1]); 
         $notice=new Notice();
         date_default_timezone_set('Asia/Dhaka');
            
         // $article->article_id=0;
         $notice->user_id=$req->session()->get('user_id');
         $notice->notice_title= $req->input('notice_title');
         $notice->notice= $req->input('notice');
         // $article->created_at=date('Y-m-d h:m:s');
         // $article->updated_at='0000-00-00 00:00:00';

         $notice->save();

         $getUserName=DB::table('users')
         ->where('user_id','=',$req->session()->get('user_id'))
         ->first();

         return redirect()->route('super_user.notice.create')->with('username',$getUserName->name);

   }
  
   public function low_acccuracy_post_render(Request $request){
      //session(['user_id' => 1]); 
      $post_reports=DB::table('articles')
               ->join('article_accuracys','article_accuracys.article_id','=','articles.article_id')
               ->get();
               
      $getUserName=DB::table('users')
               ->where('user_id','=',$request->session()->get('user_id'))
               ->first();
      return view('super_user.low_accuracy_post')-> with('post_reports',$post_reports)->with('username',$getUserName->name);
   }  

   public function comment_reports(Request $request){
      //session(['user_id' => 1]); 
      $post_reports=DB::table('article_ratings')
               ->join('comment_reports','comment_reports.comment_id','=','article_ratings.comment_id')
               ->get();

      $getUserName=DB::table('users')
               ->where('user_id','=',$request->session()->get('user_id'))
               ->first();
      return view('super_user.comment_reports')-> with('post_reports',$post_reports)->with('username',$getUserName->name);
   }   

   public function comment_reports_do(Request $request){
      //session(['user_id' => 1]); 

      $statusadmin[]=$request['statusyes'];
      $statuswrong[]=$request['statusno'];

      foreach($statusadmin as $comment_id){
      //$post_report=Post_report::find($report_id);
      //$post_report->status='admin';
      //$post_report->save();
      DB::table('article_ratings')
               ->where('comment_id',$comment_id)
               ->delete();
      
      DB::table('comment_reports')
               ->where('comment_id',$comment_id)
               ->delete();

      // DB::table('user_performances')
      // ->join('article_ratings','article_ratings.commenter_id','=','user_performances.user_id')
      // ->join('comment_reports','comment_reports.comment_id','=','article_ratings.comment_id')      
      // ->where('comment_reports.comment_id',$comment_id)
      // ->increment('user_performances.reported_comment');                 
   }

   foreach($statuswrong as $comment_id){
     // session(['user_id' => 1]); 
      //$post_report=Post_report::find($report_id);
      //$post_report->status='wrong';
      //$post_report->save();   
        DB::table('comment_reports')
              ->where('comment_id',$comment_id)
              ->delete();
                      
   }


      $post_reports=DB::table('article_ratings')
               ->join('comment_reports','comment_reports.comment_id','=','article_ratings.comment_id')
               ->get();
      $getUserName=DB::table('users')
               ->where('user_id','=',$request->session()->get('user_id'))
               ->first();
      return view('super_user.comment_reports')-> with('post_reports',$post_reports)->with('username',$getUserName->name);
   }  

   public function user_list(Request $request){
      //session(['user_id' => 1]); 
	$users=DB::table('user_performances')
         ->join('users','users.user_id','=','user_performances.user_id')       
         ->get();

         $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();
      return view('super_user.user_list')-> with('users',$users)->with('username',$getUserName->name);
   }  

   public function increase_level(Request $request){
      //session(['user_id' => 1]); 
      DB::table('users')      
      ->where('user_id',$request['id'])
      ->increment('moderator_level','1'); 


   $users=DB::table('user_performances')
         ->join('users','users.user_id','=','user_performances.user_id')       
         ->get();

   $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();
      return view('super_user.user_list')-> with('users',$users)->with('username',$getUserName->name);
   }     
   

   public function block_user(Request $request){
      //session(['user_id' => 1]); 
      $statusadmin[]=$request['statusyes'];

      foreach($statusadmin as $user_id){
      //$post_report=Post_report::find($report_id);
      //$post_report->status='admin';
      //$post_report->save();
      DB::table('users')
               ->where('user_id',$user_id)
               ->update(['status' => 'block']);
      }

   $users=DB::table('user_performances')
         ->join('users','users.user_id','=','user_performances.user_id')       
         ->get();

   $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();
      return view('super_user.user_list')-> with('users',$users)->with('username',$getUserName->name);
   }  

    public function searchuser(Request $request)
    {
        if($request->ajax())
        {
         $output="";
            $users=DB::table('users')
                     ->where('name','LIKE','%'.$request->search."%")
                     ->get();

            if($users)
            {
                foreach ($users as $key => $user)
                {

                     $output.=
                     '<tr>'.

                     '<td>'.$user->user_id.'</td>'.
                     '</tr>';


            }
            return Response($output);
         }                     
      }
   }

   public function user_list_sorted_articlewritten(Request $request){
      //session(['user_id' => 1]); 
   $users=DB::table('user_performances')
         ->join('users','users.user_id','=','user_performances.user_id') 
         ->orderBy('article_written', 'desc')      
         ->get();

   $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();
      return view('super_user.user_list_sorted_articlewritten')-> with('users',$users)->with('username',$getUserName->name);
   }  

   public function user_list_sorted_articleverified(Request $request){
      //session(['user_id' => 1]); 
   $users=DB::table('user_performances')
         ->join('users','users.user_id','=','user_performances.user_id') 
         ->orderBy('article_verified', 'desc')      
         ->get();

   $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();
      return view('super_user.user_list_sorted_articleverified')-> with('users',$users)->with('username',$getUserName->name);
   } 

   public function user_list_sorted_articlereported(Request $request){
      //session(['user_id' => 1]); 
   $users=DB::table('user_performances')
         ->join('users','users.user_id','=','user_performances.user_id') 
         ->orderBy('reported_article', 'desc')      
         ->get();
    $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();

      return view('super_user.user_list_sorted_articlereported')-> with('users',$users)->with('username',$getUserName->name);
   }

   public function user_list_sorted_comments(Request $request){
      //session(['user_id' => 1]); 
   $users=DB::table('user_performances')
         ->join('users','users.user_id','=','user_performances.user_id') 
         ->orderBy('comment_number', 'desc')      
         ->get();
   
   $getUserName=DB::table('users')
         ->where('user_id','=',$request->session()->get('user_id'))
         ->first();

      return view('super_user.user_list_sorted_comments')-> with('users',$users)->with('username',$getUserName->name);
   }

   public function delete_articles(Request $request){
      //session(['user_id' => 1]); 
      $statusadmin[]=$request['statusyes'];

      foreach($statusadmin as $article_id){
      //$post_report=Post_report::find($report_id);
      //$post_report->status='admin';
      //$post_report->save();
         DB::table('articles')
                  ->where('article_id',$article_id)
                  ->update(['verification' => 'blocked']);
         
      }
      $articles=DB::table('articles')
               ->where('verification','yes')
               ->get();
      
      $getUserName=DB::table('users')
               ->where('user_id','=',$request->session()->get('user_id'))
               ->first();
      $article_images=DB::table('articles')
               ->join('article_images','article_images.article_id','=','articles.article_id')
               ->get();
      return view('super_user.delete_post')-> with('articles',$articles)->with('username',$getUserName->name)->with('article_images',$article_images);

 
   }

   public function delete_post(Request $request){
      //session(['user_id' => 1]); 

      $articles=DB::table('Articles')
               ->where('verification','yes')
               ->get();
      
      $getUserName=DB::table('users')
               ->where('user_id','=',$request->session()->get('user_id'))
               ->first();
      
      $article_images=DB::table('articles')
               ->join('article_images','article_images.article_id','=','articles.article_id')
               ->get();
      return view('super_user.delete_post')-> with('articles',$articles)->with('username',$getUserName->name)->with('article_images',$article_images);
   }

   public function see_notice_render(Request $request){
      //session(['user_id' => 1]); 
    $notices=DB::table('notices')->get();
 
        $getUserName=DB::table('users')
                    ->where('user_id','=',$request->session()->get('user_id'))
                    ->first();
         
    return view('super_user.notice_see')-> with('notices',$notices)->with('username',$getUserName->name);
   }   
 
   public function delete_notice(Request $request){
      //=session(['user_id' => 1]); 
      $statusadmin[]=$request['statusyes'];

      foreach($statusadmin as $notice_id){
      //$post_report=Post_report::find($report_id);
      //$post_report->status='admin';
      //$post_report->save();
      DB::table('notices')
               ->where('notice_id',$notice_id)
               ->delete();   
      }
      $notices=DB::table('notices')->get();

      $getUserName=DB::table('users')
                    ->where('user_id','=',$request->session()->get('user_id'))
                    ->first();
                        
    return view('super_user.notice_see')-> with('notices',$notices)->with('username',$getUserName->name);   
    }
    public function searchnoticead(Request $request)
    {
        if($request->ajax())
        {
         $output="";
            $articles=DB::table('notices')
                     ->where('notice_title','LIKE','%'.$request->search."%")
                     ->orWhere('notice','LIKE','%'.$request->search."%")
                     ->get();

            if($articles)
            {
                foreach ($articles as $key => $art)
                {

                     $output.=
                     '<tr>'.
                     '<td>'.$art->notice_id.'</td>'.
                     '<td>'.$art->notice_title.'</td>'.
                     '</tr>';
            }
            return Response($output);
         }                     
      }
   }  
   public function create_post_render(Request $request){
      //session(['user_id' => 1]); 
      $getUserName=DB::table('users')
      ->where('user_id','=',$request->session()->get('user_id'))
      ->first();   
      return view('super_user.create_ideal_post')->with('username',$getUserName->name);
   } 

    public function store_ideal_post(Request $req)
    {
      $tour_location=new tour_location();
      date_default_timezone_set('Asia/Dhaka');
      
      $tour_location->place_name=$req->input('place_name');
      $tour_location->ideal_post=$req->input('ideal_post');
      // $article->created_at=date('Y-m-d h:m:s');
      // $article->updated_at='0000-00-00 00:00:00';

      $tour_location->save();

      $get_tour_location= DB::table('tour_locations')            
      ->where('place_name',$req->input('place_name'))
      ->first();

      if ($req->hasFile('files'))
      {
          $i=0;
          foreach($req->file('files') as $file)
          {
              $fileExtension=$file->getClientOriginalExtension();
              $fileName = date('Y-m-d h-m-s').rand().".".$fileExtension;
              
              $tour_location_image=new tour_location_image();

              $tour_location_image->tour_location_id=$get_tour_location->tour_location_id;
              $tour_location_image->image=$fileName;

              $file->move('upload/', $fileName);

              $tour_location_image->save();
          }
      }

      return redirect()->route('super_user.create_ideal_post');
   }

   public function userlist_block_mod_render(Request $request){
      //session(['user_id' => 1]); 

     
      $users = DB::table('users')
               ->where('type','user')
               ->get();
      $getUserName=DB::table('users')
               ->where('user_id','=',$request->session()->get('user_id'))
               ->first();
      return view('super_user.userlist_block_mod')-> with('users',$users)->with('username',$getUserName->name);
   }
   
   public function userlist_block_mod(Request $request){
      //=session(['user_id' => 1]); 
      $statusblock[]=$request['statusblock'];
      $statusmod1[]=$request['statusmod1'];
      $statusmod2[]=$request['statusmod2'];
      foreach($statusblock as $user_id){
      //$post_report=Post_report::find($report_id);
      //$post_report->status='admin';
      //$post_report->save();
      DB::table('users')
               ->where('user_id',$user_id)
               ->update(['status' => 'blocked']);  
      }
      foreach($statusblock as $user_id){
         //$post_report=Post_report::find($report_id);
         //$post_report->status='admin';
         //$post_report->save();
         DB::table('users')
                  ->where('user_id',$user_id)
                  ->update(['moderator_level' => 1]);  
         }   
      foreach($statusblock as $user_id){
         //$post_report=Post_report::find($report_id);
         //$post_report->status='admin';
         //$post_report->save();
         DB::table('users')
                  ->where('user_id',$user_id)
                  ->update(['moderator_level' => 2]);  
         }

         $users = DB::table('users')
               ->where('type','user')
               ->get();
         $getUserName=DB::table('users')
                  ->where('user_id','=',$request->session()->get('user_id'))
                  ->first();
         return view('super_user.userlist_block_mod')-> with('users',$users)->with('username',$getUserName->name);  
    }   
}

