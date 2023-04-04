@extends('layouts.app')
@section('title', 'Post')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <div class="display-5 mt-2">
                    {{ config('app.name')}}
                </div>
                @if(session('success'))
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>{{session('success')}}</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
                @endif
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12 text-white">
                <div class="display-6 mt-2">
                    {{ $postLang->title}}
                </div>
                <p>
                {!! $postLang->message !!}
                </p>
                <p>
                    <strong>Author : {{ $etudiant->name }}</strong>
                </p>
                <a href="{{route('post.index')}}" class="btn btn-sm btn-primary">@lang('lang.btnBack')</a>
            </div>
        </div>
        <div class="row mt-2">
            <hr>
            @if ($etudiant->id == Auth::user()->id)
            <div class="col-6">
                <a href="{{route('post.edit', $post->id)}}" class="btn btn-success btn-sm">@lang('lang.btnUpdate')</a>
            </div>
            <div class="col-6">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                @lang('lang.btnDelete')
                </button>

            </div>
            @endif
        </div>

    </div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog text-dark">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">@lang('lang.modalDelete')</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        @lang('lang.askDelete'): {{ $post->title}}
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">@lang('lang.close')</button>
        <form action="{{ route('post.delete', $post->id)}}" method="post">
            @csrf
            @method('delete')
            <input type="submit" class="btn btn-danger" value="Effacer">
         </form>
      </div>
    </div>
  </div>
</div>

@endsection