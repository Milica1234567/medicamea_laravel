<?php

namespace App\Http\Controllers\ApiControll\v1;

use App\Http\Controllers\Controller;

use App\Models\User;
use App\Http\Resources\v1\UserResource;
use App\Http\Resources\v1\UserCollection;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return new UserCollection(User::all());
        
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
     * @param  \App\Http\Requests\StoreUserRequest $request
     * @return \Illuminate\Http\Response
     */
    /*public function store(StoreUserRequest $request)
    {
        //
    }*/

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
    public function show($user_id)
    {
        $user = User::find($user_id);
        if(is_null($user)) {
            return response()->json('Data not found',404);
        }

    return response()->json($user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
   /*public function edit(Pacijent $pacijent)
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
    /*public function update(UpdatePacijentRequest $request, Pacijent $pacijent)
    {
        //
    }*/

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Pacijent  $pacijent
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $pacijent)
    {
        //
    }
}

