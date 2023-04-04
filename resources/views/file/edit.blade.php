@extends('layouts.app')
@section('title', 'Mettre à jour')
@section('content')
<div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-5">
                    @lang('lang.updateFile')
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form  method="post">
                        @csrf
                        @method('PUT')
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
                                            <input type="text" id="title" name="title" class="form-control" value="{{ $fileLang['title'] }}" placeholder="English title">
                                        </div>
                                        @if ($errors->has('title'))
                                            <div class="text-danger mt-2">
                                                {{ $errors->first('title') }}
                                            </div>
                                        @endif
                                        <div class="col-12">
                                            <label for="description">@lang('lang.description')</label>
                                            <textarea class="form-control" id="description" name="description" placeholder="English description">{{ $fileLang['description'] }}</textarea>
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
                                            <input type="text" id="title_fr" name="title_fr" class="form-control" value="{{ $fileLangFR['title'] }}" placeholder="Titre en Français">
                                        </div>
                                        @if ($errors->has('title_fr'))
                                            <div class="text-danger mt-2">
                                                {{ $errors->first('title_fr') }}
                                            </div>
                                        @endif
                                        <div class="col-12">
                                            <label for="description_fr">@lang('lang.description')</label>
                                            <textarea class="form-control" id="description_fr" name="description_fr" placeholder="Description en Français">{{ $fileLangFR['description'] }}</textarea>
                                        </div>
                                        @if ($errors->has('description_fr'))
                                            <div class="text-danger mt-2">
                                                {{ $errors->first('description_fr') }}
                                            </div>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <p>@lang('lang.file'):<br/>{{ $file->name }}</p>
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
</div><!--/container-->

@endsection