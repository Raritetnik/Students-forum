@extends('layouts.app')
@section('title', 'Liste')
@section('content')
<div class="container mt-2">
    <div class="row justify-content-center text-dark">
        <div class="col-10">
            <div class="card text-center">
                <div class="card-header">
                    Liste des étudiants
                </div>
                <div class="card-body text-dark d-flex justify-content-center text-start">
                    @isset($etudiants)
                        <table>
                            <thead>
                                <th>@lang('lang.name')</th>
                                <th>@lang('lang.email')</th>
                                <th>@lang('lang.phone')</th>
                                <th>@lang('lang.description')</th>
                            </thead>
                        @forelse($etudiants as $etudiant)
                            <tr class="border-bottom">
                                <td>{{ $etudiant->name }}</td>
                                <td>{{ $etudiant->email }}</td>
                                <td>{{ $etudiant->phone }}</td>
                                <td><a href="{{ route('etudiant.show', $etudiant->id) }}" class="btn btn-primary">@lang('lang.more')</a></td>
                            </tr>
                        @empty
                            <p>@lang('lang.noArticle')</p>
                        @endforelse
                        </table>
                    @else
                    @endisset
                </div>
                <div class="card-footer d-inline-flex justify-content-between align-items-center">
                    {{ $etudiants }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection