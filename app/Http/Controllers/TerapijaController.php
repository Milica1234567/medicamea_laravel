<?php

namespace App\Http\Controllers;

use App\Models\Terapija;
use App\Http\Requests\StoreTerapijaRequest;
use App\Http\Requests\UpdateTerapijaRequest;

class TerapijaController extends Controller
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
     * @param  \App\Http\Requests\StoreTerapijaRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTerapijaRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Terapija  $terapija
     * @return \Illuminate\Http\Response
     */
    public function show(Terapija $terapija)
    {
        //
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
    public function update(UpdateTerapijaRequest $request, Terapija $terapija)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Terapija  $terapija
     * @return \Illuminate\Http\Response
     */
    public function destroy(Terapija $terapija)
    {
        //
    }
}
