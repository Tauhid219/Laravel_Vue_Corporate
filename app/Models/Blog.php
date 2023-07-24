<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    use HasFactory;
    protected $fillable= ['photo', 'title', 'name', 'subtitle', 'detail1', 'title2', 'detail2', 'title3', 'detail3'];
}
