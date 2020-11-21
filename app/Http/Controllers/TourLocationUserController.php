<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tour_location;
use Illuminate\Support\Facades\DB;

class TourLocationUserController extends Controller
{
    public function index(Request $req)
    {
        //$req->session()->put('user_id',1);
        $tour_locations=DB::table('tour_locations')->get();
        $tour_location_images=DB::table('tour_locations')
                ->join('tour_location_images','tour_locations.tour_location_id','=','tour_location_images.tour_location_id')
                ->get();
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('tourlocationuser.index')->with('tour_locations',$tour_locations)->with('tour_location_images',$tour_location_images)->with('username',$getUserName->name);
        }                
        return view('tourlocationuser.index')->with('tour_locations',$tour_locations)->with('tour_location_images',$tour_location_images);
    }
    public function show($tour_location_id)
    {
        $tour_location= DB::table('tour_locations')
                    ->where('tour_location_id',$tour_location_id)
                    ->first();
        $tour_location_images=DB::table('tour_location_images')
                    ->where('tour_location_id',$tour_location_id)
                    ->get();
        // if($req->session()->has('user_id'))
        // {
        //     $getUserName=DB::table('users')
        //             ->where('user_id','=',$req->session()->get('user_id'))
        //             ->first();
        //     return view('article.show')->with('article',$article)->with('comment',$article_rating)->with('article_image',$article_image)->with('username',$getUserName);
        // }                    

        return view('tourlocationuser.show')->with('tour_location',$tour_location)->with('tour_location_images',$tour_location_images);      
    }
}
