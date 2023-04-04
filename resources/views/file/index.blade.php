@extends('layouts.app')
@section('title', 'Forum')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <div class="display-5 mt-2">
                    @lang('lang.shareFile')
                </div>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12">
                </div>
                <div class="grid">
                @forelse($files as $file)
                    <article class="d-flex p-4 border border-2 mb-3 rounded-2">
                        <header class="pe-4">
                            <img src="https://cdn-icons-png.flaticon.com/512/5064/5064889.png" width="150">
                        </header>
                        <main class="w-100">
                            <h2 class="text-info">{{ $file->title }}</h2>
                            <p>{{ $file->description }}</p>
                            <small><i>@lang('lang.author'): {{ $file->name }}</i></small>
                            <div class="d-flex justify-content-between w-100 mt-2">
                            <a href="{{ route('file.download', $file->id)}}" class="btn btn-primary">@lang('lang.download')</a>
                            <div class="d-flex justify-content-end">
                                @if ($file->etudiant_id == Auth::user()->id)
                                <a href="{{ route('file.edit', $file->id)}}" class="btn btn-secondary ms-1">@lang('lang.change')</a>
                                <form action="{{ route('file.delete', $file->id)}}" method="post">
                                    @csrf
                                    @method('delete')
                                    <input type="submit" class="btn btn-danger ms-2" value="@lang('lang.delete')">
                                </form>
                                @endif
                            </div>
                            </div>
                        </main>
                        </article>
                    @empty
                        <h5>@lang('lang.noArticle')</h5>
                    @endforelse
                </div>
                <div class="card-footer d-flex justify-content-between align-items-start">
                    <a href="{{route('file.create')}}" class="btn btn-success">@lang('lang.add_file')</a>
                    {{ $files }}
                </div>
        </div>
    </div>
@endsection
