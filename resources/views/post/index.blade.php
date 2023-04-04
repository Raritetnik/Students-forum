@extends('layouts.app')
@section('title', 'Forum')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <div class="display-5 mt-2">
                    {{ config('app.name')}}
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12">
                </div>
                <div class="grid">
                    @forelse($posts as $message)
                    <article class="d-flex p-4 border border-2 mb-3 rounded-2">
                        <header class="pe-4">
                            <img src="https://cdn-icons-png.flaticon.com/512/6522/6522516.png" width="150">
                        </header>
                        <main class="w-100">
                            <h2 class="text-info">{{ $message->title }}</h2>
                            <p>{{ $message->message }}</p>
                            <div class="d-flex justify-content-between w-100">
                                <h5 class="text-secondary">Auteur: {{ $message->name_etudiant }}</h6>
                                <div class="d-flex">
                                    <a href="{{ route('post.show', $message->id)}}" class="btn btn-primary">@lang('lang.more')</a>
                                    @if ($message->etudiant_id == Auth::user()->id)
                                    <a href="{{ route('post.edit', $message->id)}}" class="btn btn-secondary ms-1">@lang('lang.change')</a>
                                    @endif
                                </div>
                            </div>
                        </main>
                        </article>
                    @empty
                        <li>@lang('lang.noArticle')</li>
                    @endforelse
                </div>
                <div class="card-footer d-flex justify-content-between align-items-start">
                    <a href="{{route('post.create')}}" class="btn btn-success">@lang('lang.add_article')</a>
                    {{ $posts }}
                </div>
        </div>
    </div>
@endsection


