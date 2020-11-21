<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\User;
use App\Http\Requests\RegistrationRequest;
use Illuminate\Http\UploadedFile;


class UserController extends Controller
{
    public function myProfile(Request $req)
    {
        $users= DB::table('users')
                ->where('user_id',$req->session()->get('user_id'))
                ->first();
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('user.myprofile')->with('users',$users)->with('username',$getUserName->name);
        }
        return view('user.myprofile')->with('users',$users);
    }
    public function showProfile(Request $req,$user_id)
    {
        $users= DB::table('users')
                ->where('user_id',$user_id)
                ->first();
        if($req->session()->has('user_id'))
        {
            $getUserName=DB::table('users')
                    ->where('user_id','=',$req->session()->get('user_id'))
                    ->first();
            return view('user.myprofile')->with('users',$users)->with('username',$getUserName->name);
        }                

        return view('user.myprofile')->with('users',$users);
    }
    public function registration()
    {
        if(session()->has('user_id'))
        {
            return redirect()->route('home.index');
        }
        else
        {
            return view('user.registration');
        }
    }
    public function store(RegistrationRequest $request)
    {
        $user = new user();
        
    	$user->email = $request->email;
    	$user->name = $request->name;
    	$user->password = $request->password;
        $user->address = $request->address;

        //avatar here
        if($request->has('file'))
        {
            $file=$request->file;
            $fileExtension=$file->getClientOriginalExtension();
            $fileName = date('Y-m-d h-m-s').rand().".".$fileExtension;
            $file->move('upload/', $fileName);
            $user->avatar=$fileName;
        }
        //avatar ends here
    	$user->gender = $request->gender;
    	$user->dob = $request->dob;
    	$user->phone_no = $request->phone;
        $user->type = $request->type;
        $user->status = $request->status;
    	$user->moderator_level = $request->moderator_level;


        if ($user->save())
        {
    		$request->session()->flash('message', 'Successfully Registered. Now you can login');
    		return redirect()->route('login.index');
    	}

    }    
}
