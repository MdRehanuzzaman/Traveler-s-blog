<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LogoutController extends Controller
{
    public function index(Request $req)
    {
        $req->session()->forget('user_id');
        $req->session()->forget('type');
        $req->session()->forget('moderator_level');
        return redirect()->route('home.index');
    }
}
