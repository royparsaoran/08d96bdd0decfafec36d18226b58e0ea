<?php

namespace App\Http\Middleware;

use Closure;

class CheckTournament
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
       $value = $request->session()->get('expiredTournament');
       $value2 = $request->session()->get('terminateTournament');
       if($value == "expired")
       {
          return redirect()->back();
       }
       // if($value2 == "terminate")
       // {
       //    return redirect()->back();
       // }
       return $next($request);
    }
}
