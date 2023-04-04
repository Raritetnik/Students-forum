<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{{ config('app.name') }} - @yield('title')</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"  crossorigin="anonymous" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" rel="stylesheet" >

        <style>
            body {
                font-family: 'Nunito';
            }
        </style>

    </head>

    <body class="bg-dark text-light">
    @php $locale = session()->get('locale'); @endphp
    <nav class="navbar navbar-expand-lg bg-dark text-light border-bottom border-danger">
        <div class="container-fluid">
            <a class="navbar-brand" href="#"> {{ Auth::user() ? Auth::user()->name : ''}}</a>
            <button class="navbar-toggler bg-lght text-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">☰</button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="d-flex justify-content-between w-100">
                <div class="navbar-nav">
                    @guest
                    @else
                    <a class="nav-link link-success fw-bold" href="{{route('post.index')}}">Forum</a>
                    <a class="nav-link link-success fw-bold" href="{{route('file.index')}}">@lang('lang.menStore')</a>
                    <a class="nav-link link-success fw-bold" href="{{route('etudiant.index')}}">@lang('lang.menStud')</a>
                    @endguest
                    <a class="nav-link link-success fw-bold" href="{{route('lang', 'en')}}">English</a>
                    <a class="nav-link link-success fw-bold" href="{{route('lang', 'fr')}}">Français</a>
                </div>
                <div class="navbar-nav">
                    @guest
                    <a class="nav-link link-success fw-bold" href="{{route('auth.create')}}">@lang('lang.menReg')</a>
                    <a class="nav-link link-success fw-bold" href="{{route('login')}}">@lang('lang.menLogin')</a>
                    @else
                    <a class="nav-link link-success fw-bold" href="{{route('etudiant.show', Auth::user()->id)}}">@lang('lang.profil')</a>
                    <a class="nav-link link-success fw-bold" href="{{route('logout')}}">@lang('lang.menLogut')</a>
                    @endguest
                </div>
            </div>
            </div>
        </div>
    </nav>

    @yield('content')

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"  crossorigin="anonymous"></script>

</html>