<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class Localization
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // Si session contion info sur locale ET si le contenu n'est pas EN
        if(session()->has('locale') && session()->get('locale') != 'en') {
            App::setlocale(session()->get('locale'));
            session()->put('localeDB', '_'.session()->get('locale'));

        // SINON localeDB vide
        } else {
            session()->put('localeDB', '');
        }
        return $next($request);
    }
}
