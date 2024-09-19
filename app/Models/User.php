<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Tymon\JWTAuth\Contracts\JWTSubject;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Contracts\Postable;



class User extends Authenticatable implements JWTSubject,Postable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',

        'location' ,
        'phone' ,

        'country' ,
    ];



    public function toArray()
    {
        return [
            'id' => $this->id, // Include the ID
            'name' => $this->name,

            'phone' => $this->phone,
            'email' => $this->email,
            'image' => $this->image,
            'account_balance' => $this->account_balance,
            'last_transaction' => $this->last_transaction,
            'location' => $this->location,
            'country' => $this->country,




            // 'attendances' => $this->attendances->toArray() // Include attendances

        ];

    }
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }


    public function getJWTCustomClaims()
    {
        return [];
    }


    public function attendances()
    {
        return $this->hasMany(Attendance::class);
    }

    public function wallets()
    {
        return $this->hasMany(Wallet::class);
    }
}
