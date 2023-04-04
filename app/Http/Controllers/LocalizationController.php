<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\App;
use Illuminate\Http\RedirectResponse;

class LocalizationController extends Controller
{
    /**
     * @param $locale
     * @return RedirectResponse
     */
    public function index($locale) {
        App::setlocale($locale);
        session()->put('locale', $locale);
        return redirect()->back();
    }
}