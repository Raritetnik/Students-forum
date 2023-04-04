<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LangPost extends Model
{
    use HasFactory;

    protected $fillable = [
        'lang',
        'title',
        'message',
        'post_id',
    ];

    public function langHasPost(){
        return $this->hasOne('App\Models\Post', 'id', 'post_id');
    }
}
