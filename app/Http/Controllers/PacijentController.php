<?php

namespace App\Http\Controllers;

use App\Models\Pacijent;
use App\Http\Requests\StorePacijentRequest;
use App\Http\Requests\UpdatePacijentRequest;

class PacijentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        //
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
