<?php

namespace App\Http\Middleware;

use Closure;

class CheckPJS
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
    $value = $request->session()->get('roles');
    if ($value != "PJS") {
      return redirect()->back();
    }
    return $next($request);
  }
}
