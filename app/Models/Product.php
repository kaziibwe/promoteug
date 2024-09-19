<?php

namespace App\Models;

use App\Contracts\Postable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product  extends Model implements Postable
{
    use HasFactory;

    protected $fillable = [

        'name',
        'image',
        'services',
        'amenities',
        'review',
        'description',
        'subcategory_id',




    ];

    public function toArray()
    {
        return [
            'id' => $this->id, // Include the ID
            'name'=> $this->name,
            'services'=> $this->services,
            'image'=> $this->image,

            'amenities'=> $this->amenities,
            'review'=> $this->review,
            'description'=> $this->description,
            'subcategory_id'=> $this->subcategory_id,

        ];
    }

    public function SubCategory()
    {
        return $this->belongsTo(SubCategory::class, 'subcategory_id');  // Make sure this matches your actual foreign key column
    }
}
