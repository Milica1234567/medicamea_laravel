<?php

namespace App\Http\Controllers\ApiControll\v1;

use App\Models\Terapija;
use App\Http\Requests\StoreTerapijaRequest;
use App\Http\Requests\UpdateTerapijaRequest;
use App\Http\Controllers\Controller;
use App\Http\Resources\v1\TerapijaCollection;
use App\Http\Resources\v1\TerapijaResource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;



class TerapijaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return new TerapijaCollection(Terapija::all());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreTerapijaRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator=Validator::make($request->all(), [
            'pacijent_id'=>'required',
            'naziv_leka'=>'required|string|max:255',
            'nacin_primene'=>'required|string',
            'status'=>'required|string|max:13',
            'datum_preuzimanja'=>'date'
        ]);

        if($validator->fails())
            return response()->json($validator->errors());

        $terapija=Terapija::create([
            'pacijent_id'=>$request->pacijent_id,
            'naziv_leka'=>$request->naziv_leka,
            'nacin_primene'=>$request->nacin_primene,
            'status'=>$request->status,
            'datum_preuzimanja'=>$request->datum_preuzimanja,
        ]);
        return response()->json(['Recept uspesno kreiran.', new TerapijaResource($terapija)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Terapija  $terapija
     * @return \Illuminate\Http\Response
     */
    public function show(Terapija $terapija)
    {
        /*$terapija=Terapija::find($terapija_id);
        if(is_null($terapija))
            return response()->json('data not fount', 404);
        return response()->json($terapija);*/
        return new TerapijaResource($terapija);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Terapija  $terapija
     * @return \Illuminate\Http\Response
     */
    public function edit(Terapija $terapija)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateTerapijaRequest  $request
     * @param  \App\Models\Terapija  $terapija
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Terapija $terapija)
    {
        $validator=Validator::make($request->all(), [
            'pacijent_id'=>'required',
            'naziv_leka'=>'required|string|max:255',
            'nacin_primene'=>'required|string',
            'status'=>'required|string|max:13',
            'datum_preuzimanja'=>'date'
        ]);

        if($validator->fails())
            return response()->json($validator->errors());

        
            $terapija->pacijent_id = $request->pacijent_id;
            $terapija->naziv_leka=$request->naziv_leka;
            $terapija->nacin_primene=$request->nacin_primene;
            $terapija->status=$request->status;
            $terapija->datum_prezuimanja=$request->datum_preuzimanja;
        
        return response()->json(['Recept uspesno azuriran.', new TerapijaResource($terapija)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Terapija  $terapija
     * @return \Illuminate\Http\Response
     */
    public function destroy(Terapija $terapija)
    {
        $terapija->delete();
        return response()->json('Terapija uspesno obrisana.');
    }
}
