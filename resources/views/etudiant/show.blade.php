@extends('layouts.app')
@section('title', 'Affichage')
@section('content')
<div class="container">
    <div class="row header justify-content-center">
            @if(session('success'))
                <div class="alert alert-success alert-dismissable fade show" role='alert'>
                    <strong>{{ session('success') }}</strong>
                    <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label="Close"></button>
                </div>
            @endif
    </div>
    <div class="row justify-content-center mt-2">
        <div class="col-8">
        @isset($etudiant)
            <div class="card text-dark">
                <div class="card-header">
                    @lang('lang.student'): #{{ $etudiant->id }}
                </div>
                <div class="card-body">
                    <p style="text-align: justify">@lang('lang.name'): {{ $etudiant->name }}</p>
                    <p style="text-align: justify">@lang('lang.adress'): {{ $etudiant->adresse }}</p>
                    <p style="text-align: justify">@lang('lang.phone'): {{ $etudiant->phone }}</p>
                    <p style="text-align: justify">@lang('lang.email'): {{ $etudiant->email }}</p>
                    <p style="text-align: justify">@lang('lang.city'): {{ $etudiant->ville_nom }}</p>
                </div>
                <div class="card-footer d-flex justify-content-between align-middle">
                    <a href="{{ route('etudiant.index') }}" class="btn btn-primary btn-lg">@lang('lang.return')</a>
                    @if ($etudiant->id == Auth::user()->id)
                      <a href="{{route('etudiant.edit', $etudiant->id)}}" class="btn btn-success btn-lg">@lang('lang.btnUpdate')</a>
                      <button type="button" class="btn btn-danger btn-lg" data-bs-toggle="modal" data-bs-target="#exampleModal">@lang('lang.btnDelete')</button>
                    @endif
                </div>
            </div>
        @else
        @endisset
        </div>
    </div>
    <div class="row mt-4">
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
                  <h5 class="text-secondary">@lang('lang.author'): {{ $message->name_etudiant }}</h6>
                  <div class="d-flex">
                      <a href="{{ route('post.show', $message->id)}}" class="btn btn-primary">@lang('lang.more')</a>
                      @if ($message->id == Auth::user()->id)
                      <a href="{{ route('post.edit', $message->id)}}" class="btn btn-secondary ms-1">@lang('lang.change')</a>
                      @endif
                  </div>
              </div>
          </main>
          </article>
      @empty
          <h4 class="mt-4">@lang('lang.noArticle')</h4>
      @endforelse
  </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Supprimer le post</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>Vous voulez vraiment supprimer le post?</p>
        <p>Nom: <b>{{ $etudiant->name }}</b></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
        <form action="{{ route('etudiant.delete', $etudiant->id) }}" method="post">
                @csrf
                @method('delete')
                <input type='submit' class="btn btn-danger" value='Supprimer'/>
            </form>
      </div>
    </div>
  </div>
</div>
@endsection

