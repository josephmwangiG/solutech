<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::latest()->paginate(10);
        return response(["users" => $users], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            "name" => "required",
            "email" => "required",
        ]);
        $data["password"] = Hash::make("passsword");

        User::create($data);
        $users = User::latest()->paginate(10);

        return response(["users" => $users, "message" => "A new user was created."], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(User $user)
    {
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user)
    {
        $data = $request->validate([
            "name" => "",
            "email" => "",
        ]);


        $user->update($data);
        $users = User::latest()->paginate(10);

        return response(["users" => $users, "message" => "User details were updated."], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $user)
    {
        $user->delete();
        $users = User::latest()->paginate(10);

        return response(["users" => $users, "message" => "User details were deleted."], 200);
    }
}
