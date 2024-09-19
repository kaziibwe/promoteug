<?php

namespace App\Http\Requests;

use Illuminate\Routing\Route;
use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class SaveDataRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */

    public function rules()
    {

        // get the route name used in the moment
        $type = $this->route('type');
        $id = $this->route('id'); // Assuming 'id' is the route parameter for the record ID


        // check  for the password is availlable or not
        $passwordRule = $this->isMethod('post') ? 'required|string' : 'sometimes|nullable|string';

        // depending on the route availble in the moment, is the case in the switch
        switch ($type) {
            case 'admin':   //for table admins
                return [
                    'name' => 'required|string',
                    'email' => ['required', Rule::unique('admins')->ignore($id)],
                    'email' => 'required|email',



                    'password' => $passwordRule,
                ];
            case 'user':  //for table users
                return [
                    'name' => 'required|string',
                    'image' => 'nullable',
                    'organisation_name' => 'nullable',
                    'organisation_email' => 'nullable',
                    'organisation_phone' => 'nullable',
                    'location' => 'nullable',
                    'country' => 'nullable',
                    'email' => ['required', Rule::unique('users')->ignore($id)],
                    'password' => $passwordRule,
                ];
            case 'SubCategory':  //for table users
                return [
                    'name' => 'required|string',
                    'active' => 'nullable|string',
                    'featured' => 'nullable|string',
                    'image' => 'sometimes',
                    'category_id' => 'required|exists:categories,id'

                ];

            case 'auction':  //for table users
                return [
                    'name' => 'required|string',
                    'location' => 'required|string',
                    'open_time' => 'required|string',
                    'close_time' => 'required|string',
                    'image1' => 'nullable | required',
                    'image2' => 'nullable',
                    'image3' => 'nullable',

                    // 'participate' => 'required|string',
                    'format' => 'required|string',

                    // 'auction_type' => 'required|string',
                    'site' => 'required|string',

                ];

            case 'AuctionType':  //for table users
                return [
                    'name' => 'required|string',
                    'open_time' => 'required|string',
                    'close_time' => 'required|string',
                    'item_interval' => 'required|string',
                    'auction_id' =>  'required|exists:auctions,id',

                ];
            case 'AuctionTime':  //for table users
                return [
                    'name' => 'required|string',
                    'open_time' => 'required|string',
                    'close_time' => 'required|string',
                    'item_interval' => 'required|string',
                    'auction_type_id' =>  'required|exists:auction_types,id',

                ];
            case 'EquipmentCategory':  //for table users
                return [
                    'name' => 'required|string',
                    'auction_time_id' =>  'required|exists:auction_times,id',

                ];



            case 'category':  //for table users
                return [
                    'image'=> 'sometimes',
                    'name' => 'nullable|string',
                    'active' => 'nullable|string',
                    'featured' => 'nullable|string',

                ];
            case 'attendance':   //for table attndances
                return [
                    'user_id' => 'required|',
                    'date' => 'required',
                    'status' => 'required',
                ];

            case 'product':   //for table attndances
                return [
                    'image'=> 'sometimes',
                    'name'=> 'string',

                    'name'=> 'string',
                    'services'=> 'string',
                    'amenities'=> 'string',
                    'review'=> 'string',
                    'description'=> 'string',
                    'subcategory_id' => 'required|exists:sub_categories,id',

                ];
            default:
                return [];
        }
    }
}
