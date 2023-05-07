<?php

namespace App\Http\Controllers\ApiControll\v1;

use App\Models\Terapija;
use App\Http\Controllers\Controller;



class PacijentTerapijaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($pacijent_id){
        $terapije = Terapija::get()->where('pacijent_id', $pacijent_id);
        if(is_null($terapije))
            return response()->json('Data not found', 404);
        return response()->json($terapije);
    }

    
 
}

