<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    public function index(Request $req)
    {
        return view('login.index');
    }
    public function verify(Request $request)
    {	
    	$email = $request->email;
    	//$password = $request->input('password');
        $user = DB::table('users')
                    ->where('email', $email)
                    ->first();

        if ($user != null)  
        {
            $password = $user->password;

            if ($request->password == $password && $user->status=='live')
            {
                if ($user->type == 'user' || $user->type == 'admin')
                {
                    //echo "logged as user";

                    $request->session()->put('user_id',$user->user_id);
                    $request->session()->put('type',$user->type);
                    $request->session()->put('moderator_level',$user->moderator_level);

                    return redirect()->route('home.index');
                }
                else
                {
                    echo "logged as other user";
                }
            }
            else{
                $request->session()->flash('message', 'Invalid email or password');
                return redirect()->route('login.index', ['email'=>$email]);
            }
        }
        else
        {
			$request->session()->flash('message', 'Invalid email or password');
			//$request->session()->flash('uname', $uname);
			return redirect()->route('login.index', ['email'=>$email]);
		}
    	
    }    
}
