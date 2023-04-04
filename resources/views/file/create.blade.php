@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row justify-content-center ">
            <div class="col-md-8">
                <div class="card text-dark mt-4">
                    <div class="card-header">@lang('lang.saveFile')</div>
                    <div class="card-body">
                        <form action="{{ route('file.store') }}" method="POST" role="form" enctype="multipart/form-data">
                            @csrf
                            @if(!$errors->isEmpty())
                                <div class="alert alert-danger">
                                @foreach($errors->all() as $error)
                                        {{ $error }}<br>
                                @endforeach
                                </div>
                            @endif
                            @if(session('success'))
                                <div class="alert alert-success alert-dismissible fade show">
                                    {{session('success')}}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            @endif
                            <div class="card-body text-dark">
                                <p class="d-flex justify-content-center gap-4">
                                    <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".multi-collapse" aria-expanded="true" aria-controls="formEnglish formFrench">English</button>
                                    <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".multi-collapse" aria-expanded="false" aria-controls="formEnglish formFrench">Français</button>
                                </p>
                                <div class="collapse show multi-collapse" id="formEnglish">
                                    <div class="card-body">
                                        <div class="col-12">
                                            <label for="title">@lang('lang.title')</label>
                                            <input type="text" id="title" name="title" class="form-control" value="{{ old('title') }}" placeholder="English title">
                                        </div>
                                        @if ($errors->has('title'))
                                            <div class="text-danger mt-2">
                                                {{ $errors->first('title') }}
                                            </div>
                                        @endif
                                        <div class="col-12">
                                            <label for="description">@lang('lang.description')</label>
                                            <textarea class="form-control" id="description" name="description" placeholder="English description">{{ old('description') }}</textarea>
                                        </div>
                                        @if ($errors->has('description'))
                                            <div class="text-danger mt-2">
                                                {{ $errors->first('description') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                <div class="collapse multi-collapse" id="formFrench">
                                    <div class="card-body">
                                        <div class="col-12">
                                            <label for="title_fr">@lang('lang.title')</label>
                                            <input type="text" id="title_fr" name="title_fr" class="form-control" value="{{ old('title_fr')}}" placeholder="Titre en Français">
                                        </div>
                                        @if ($errors->has('title_fr'))
                                            <div class="text-danger mt-2">
                                                {{ $errors->first('title_fr') }}
                                            </div>
                                        @endif
                                        <div class="col-12">
                                            <label for="description_fr">@lang('lang.description')</label>
                                            <textarea class="form-control" id="description_fr" name="description_fr" placeholder="Description en Français">{{ old('description_fr') }}</textarea>
                                        </div>
                                        @if ($errors->has('description_fr'))
                                            <div class="text-danger mt-2">
                                                {{ $errors->first('description_fr') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                <label for="file" class="col-md-4 col-form-label text-md-right">@lang('lang.selectFile')</label>
                                <div class="col-md-6">
                                    <input id="file" type="file" class="form-control @error('fileError') is-invalid @enderror" name="file" value="{{ old('file') }}">
                                    @error('fileError')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-group row my-2">
                                <div class="col-md-8 offset-md-4">
                                    <button type="submit" class="btn btn-primary">@lang('lang.btnSave')</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection