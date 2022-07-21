<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Kos extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name', 'city', 'country', 'price', 'photo', 'image', 'address',
        'phone', 'map_url', 'kamar_tersedia', 'jumlah_kamar', 'wifi', 'rating'
    ];
    protected $casts = [
        'image' => 'array'
    ];

    public function getCreatedAtAttribute($value)
    {
        return Carbon::parse($value)->timestamp;
    }
    public function getUpdatedAtAttribute($value)
    {
        return Carbon::parse($value)->timestamp;
    }

}
