<?php

namespace App\Http\Middleware;

use Closure;

class CheckType
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // if($request->session()->has('type'))
        // {
        //     if($request->session('type')=='user')
        //     {
        //         return $next($request);
        //     }
        //     else if($request->session('type')=='admin')
        //     {
        //         return redirect()->route('home.index');
        //     }
        //     else
        //     {
        //         return redirect()->route('home.index');
        //     }
        // }
        // else
        // {
        //     return redirect()->route('home.index');
        // }

        if(session('type')== null)
        {    
            return redirect()->route('home.index');
        }
        // else if(session('type')=='admin')
        // {    
        //     return redirect()->route('home.index');
        // }
        else if(session('type')!=null)
        { 
            return $next($request);
        }
        else
        {
            return redirect()->route('home.index');
        }

    }
}
