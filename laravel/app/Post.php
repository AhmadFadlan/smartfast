<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    // relasi ke table user
    public function author()
    {
      return $this->belongsTo(User::class, 'author_id');
    }
}
