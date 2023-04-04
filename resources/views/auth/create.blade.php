@extends('layouts.app')
@section('title', 'Registration')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card mt-4">
                <div class="card-header text-center text-dark">
                    <h3>@lang('lang.register')</h3>
                </div>
                <form method="post">
                @csrf
                    <div class="card-body text-dark">
                        @if(session('success'))
                            <div class="alert alert-success alert-dismissible fade show">
                                {{session('success')}}
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                            </div>
                        @endif
                        <div class="form-group mb-3">
                            <label for="name">@lang('lang.name'):</label>
                            <input type="text" name="name" placeholder="@lang('lang.name')" class="form-control" value="{{old('name')}}">
                            @if ($errors->has('name'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('name') }}
                                </div>
                            @endif
                        </div>
                        <div class="control-grup col-12">
                            <label for="adresse">@lang('lang.adress'):</label>
                            <input type="text" id="adresse" name="adresse" class="form-control" value="{{old('adresse')}}">
                            @if ($errors->has('adresse'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('adresse') }}
                                </div>
                            @endif
                        </div>
                        <div class="control-grup col-12">
                            <label for="date_naissance">@lang('lang.birthday'):</label>
                            <input type="date" id="date_naissance" name="date_naissance" class="form-control" value="{{old('date_naissance')}}">
                            @if ($errors->has('date_naissance'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('date_naissance') }}
                                </div>
                            @endif
                        </div>
                        <div class="control-grup col-12">
                            <label for="phone">@lang('lang.phone'): </label>
                            <input type="text" id="phone" name="phone" class="form-control" value="{{old('phone')}}">
                            @if ($errors->has('phone'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('phone') }}
                                </div>
                            @endif
                        </div>
                        <div class="control-grup col-12">
                            <label for="ville_id">@lang('lang.city'):</label>
                            <select id="ville_id" name="ville_id" class="form-control">
                                @foreach ($villes as $ville)
                                <option value="{{ $ville->id }}">{{ $ville->nom }}</option>
                                @endforeach
                            </select>
                            @if ($errors->has('ville'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('ville') }}
                                </div>
                            @endif
                        </div>
                        <div class="form-group mb-3">
                            <label for="adresse">@lang('lang.email'):</label>
                            <input type="email" name="email" placeholder="@lang('lang.email')" class="form-control" value="{{old('email')}}">
                            @if ($errors->has('email'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('email') }}
                                </div>
                            @endif
                        </div>
                        <div class="form-group mb-3">
                        <label for="adresse">@lang('lang.password'):</label>
                            <input type="password" name="password" placeholder="@lang('lang.password')" class="form-control">
                            @if ($errors->has('password'))
                                <div class="text-danger mt-2">
                                    {{ $errors->first('password') }}
                                </div>
                            @endif
                        </div>
                    </div>
                    <div class="card-footer text-center">
                            <input type="submit" value="@lang('lang.btnSave')" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection