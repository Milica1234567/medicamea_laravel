<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pacijent extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    public function terapije(){
        return $this->hasMany(Terapija::class);
    }
}
