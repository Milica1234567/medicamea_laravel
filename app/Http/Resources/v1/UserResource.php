<?php

namespace App\Http\Resources\v1;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public static $wrap='doktor';
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'ime'=>$this->name,
            'email'=>$this->email
        ];
    }
}
