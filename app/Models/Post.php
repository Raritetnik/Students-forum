<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'message',
        'etudiant_id',
    ];

    public function messageHasUser(){
        return $this->hasOne('App\Models\Etudiant', 'id', 'etudiant_id');
    }

}
