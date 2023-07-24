<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WhyUs extends Model
{
    use HasFactory;
    protected $fillable= ['headline', 'subtitle', 'line1', 'line1sub', 'line2', 'line2sub', 'line3', 'line3sub'];
}
