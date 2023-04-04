@extends('layouts.app')
@section('title', 'Mettre à jour')
@section('content')
<div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-5">
                    @lang('lang.updateArticle')
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
                        <div class="card-header text-dark d-flex justify-content-center">
                            @lang('lang.form')
                        </div>
                        <div class="card-body text-dark">
                            <p class="d-flex justify-content-center gap-4">
                                <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".multi-collapse" aria-expanded="true" aria-controls="formEnglish formFrench">English</button>
                                <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target=".multi-collapse" aria-expanded="false" aria-controls="formEnglish formFrench">Français</button>
                            </p>
                            <div class="collapse show multi-collapse" id="formEnglish">
                                <div class="card-body">
                                    <div class="col-12">
                                        <label for="title">@lang('lang.titleMessage')</label>
                                        <input type="text" id="title" name="title" class="form-control"
                                        value='{{ $postLang["title"] }}' placeholder="English title...">
                                    </div>
                                    @if ($errors->has('title'))
                                        <div class="text-danger mt-2">
                                            {{ $errors->first('title') }}
                                        </div>
                                    @endif
                                    <div class="col-12">
                                        <label for="message">@lang('lang.message')</label>
                                        <textarea class="form-control" id="message" name="message" placeholder="English text...">{{ $postLang['message'] }}</textarea>
                                    </div>
                                    @if ($errors->has('message'))
                                        <div class="text-danger mt-2">
                                            {{ $errors->first('message') }}
                                        </div>
                                    @endif
                                </div>
                            </div>
                            <div class="collapse multi-collapse" id="formFrench">
                                <div class="card-body">
                                    <div class="col-12">
                                        <label for="title_fr">@lang('lang.titleMessage')</label>
                                        <input type="text" id="title_fr" name="title_fr" class="form-control"
                                        value='{{ $postLangFR["title"] }}' placeholder="Texte en Français...">
                                    </div>
                                    @if ($errors->has('title_fr'))
                                        <div class="text-danger mt-2">
                                            {{ $errors->first('title_fr') }}
                                        </div>
                                    @endif
                                    <div class="col-12">
                                        <label for="message_fr">@lang('lang.message')</label>
                                        <textarea class="form-control" id="message_fr" name="message_fr" placeholder="Texte en Français...">{{ $postLangFR["message"] }}</textarea>
                                    </div>
                                    @if ($errors->has('message_fr'))
                                        <div class="text-danger mt-2">
                                            {{ $errors->first('message_fr') }}
                                        </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <input type="submit" class="btn btn-success" value="@lang('lang.btnSave')">
                        </div>
                    </form>
                </div>
            </div>
        </div>
</div><!--/container-->

@endsection



