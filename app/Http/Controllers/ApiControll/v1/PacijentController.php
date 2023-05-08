<?php

namespace App\Http\Controllers\ApiControll\v1;
use Illuminate\Http\Request;
use App\Models\Pacijent;
use App\Http\Requests\StorePacijentRequest;
use App\Http\Requests\UpdatePacijentRequest;
use App\Http\Controllers\Controller;
use App\Http\Resources\v1\PacijentResource;
use App\Http\Resources\v1\PacijentCollection;
//use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Validator;

class PacijentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return new PacijentCollection(Pacijent::all());
        //return Pacijent::all();
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
     * @param  \App\Http\Requests\StorePacijentRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator=Validator::make($request->all(), [
            'ime'=>'required|string|max:255',
            'ime_roditelja'=>'required|string|max:255',
            'prezime'=>'required|string|max:255',
            'jmbg'=>'required|string|max:13',
            'telefon'=>'required|string|max:30'
        ]);

        if($validator->fails())
            return response()->json($validator->errors());

        $pacijent=Pacijent::create([
            'ime'=>$request->ime,
            'ime_roditelja'=>$request->ime_roditelja,
            'prezime'=>$request->prezime,
            'jmbg'=>$request->jmbg,
            'telefon'=>$request->telefon,
        ]);
        return response()->json(['Pacijent uspesno kreiran.', new PacijentResource($pacijent)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
    public function show(Pacijent $pacijent)
    {
        return new PacijentResource($pacijent);
        //$pacijent=Pacijent::find($pacijent_id);
        /*if(is_null($pacijent))
            return response()->json('data not fount', 404);
        return response()->json($pacijent);*/
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
    public function edit(Pacijent $pacijent)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdatePacijentRequest  $request
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pacijent $pacijent)
    {
        $validator=Validator::make($request->all(),[
            'ime'=>'required|string|max:255',
            'ime_roditelja'=>'required|string|max:255',
            'prezime'=>'required|string|max:255',
            'jmbg'=>'required|string|max:13',
            'telefon'=>'required|string|max:30'
        ]);
        if($validator->fails())
            return response()->json($validator->errors());

        $pacijent->ime=$request->ime;
        $pacijent->ime_roditelja=$request->ime_roditelja;
        $pacijent->prezime=$request->prezime;

        return response()->json(['Pacijent uspesno azuriran.', new PacijentResource($pacijent)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pacijent $pacijent)
    {
        $pacijent->delete();
        return response()->json('Pacijent uspesno obrisan.');
    }
}
