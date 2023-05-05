<?php

namespace App\Http\Resources\v1;

use Illuminate\Http\Resources\Json\JsonResource;

class TerapijaResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'=>$this->id,
            'nazivLeka'=>$this->naziv_leka,
            'nacinPrimene'=>$this->nacin_primene,
            'status'=>$this->status,
            'datumPreuzimanja'=>$this->datum_preuzimanja
        ];
    }
}
