<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pacijent extends Model
{
    use HasFactory;

    public function terapije(){
        return $this->hasMany(Terapija::class);
    }
}
