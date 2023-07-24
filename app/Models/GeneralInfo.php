<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GeneralInfo extends Model
{
    use HasFactory;
    protected $fillable= ['htitle', 'hsubtitle', 'ssubtitle', 'tsubtitle', 'csubtitle', 'caddress', 'cemail', 'cphone'];
}
