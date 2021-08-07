<?php

namespace App\Http\Middleware;

use Closure;
use Session;
use Auth;

class CheckUser
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
        $value = $request->session()->get('login');

        if($value !== null)
        {
            return $next($request);
        }
        return redirect('/login');

    }
}
