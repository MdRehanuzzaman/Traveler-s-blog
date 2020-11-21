<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\UploadedFile;

class RegistrationRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email'=>'bail|required|unique:users',
            'name'=>'required',
            'password'=>'required',
            'address'=>'required',
            'file'=>'required',
            'gender'=>'required',
            'dob'=>'required',
            'phone'=>'bail|required|min:11|max:11'

        ];
    }

    public function messages(){
        return [
            'email.required'=>'Email Can not be empty',
            'email.unique'=>'Email already in used',
            'name.required'=>'Name can not be empty',
            'password.required'=>'Password can not be empty',
            'address.required'=>'address can not be empty',
            'file.required'=>'avatar can not be empty',
            'gender.required'=>'gender can not be empty',
            'dob.required'=>'Date Of Birth can not be empty',
            'phone.required'=>'Phone Number can not be empty',
            'phone.min'=>'Phone Number must be 11 numbers',
            'phone.max'=>'Phone Number must be 11 numbers'
        ];
    }
}
