<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LangFile extends Model
{
    use HasFactory;

    protected $fillable = [
        'lang',
        'title',
        'description',
        'file_id',
    ];

    public function langHasPost(){
        return $this->hasOne('App\Models\File', 'id', 'file_id');
    }
}
