<?php

namespace App\Http\Controllers\ApiControll\v1;

use App\Models\Pacijent;
use App\Http\Requests\StorePacijentRequest;
use App\Http\Requests\UpdatePacijentRequest;
use App\Http\Controllers\Controller;
use App\Http\Resources\v1\PacijentResource;
use App\Http\Resources\v1\PacijentCollection;

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
    public function store(StorePacijentRequest $request)
    {
        //
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
    public function update(UpdatePacijentRequest $request, Pacijent $pacijent)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pacijent $pacijent)
    {
        //
    }
}
