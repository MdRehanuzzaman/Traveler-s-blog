<?php

namespace App\Http\Middleware;

use Closure;

class CheckSuperAdmin
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
        if(session('moderator_level')==0 && session('type')=='admin')
        {    
            return $next($request);
        }
        else
        {
            return redirect()->route('home.index');
        }
    }
}
