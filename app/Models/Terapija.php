<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Terapija extends Model
{
    use HasFactory;

    public function pacijenti(){
        return $this->belongsTo(Pacijent::class);
    }
}
