<?php

namespace App\Http\Controllers;

use App\Models\Status;
use Illuminate\Http\Request;

class StatusController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $status = Status::latest()->paginate(10);

        return response(["status" => $status], 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            "name" => "required",
        ]);

        Status::create($data);
        $status = Status::latest()->paginate(10);

        return response(["status" => $status, "message" => "New status created."], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Status $status)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Status $status)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Status $status)
    {
        $data = $request->validate([
            "name" => "required",
        ]);

        $status->update($data);
        $status = Status::latest()->paginate(10);

        return response(["status" => $status, "message" => "Status updated."], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Status $status)
    {
        $status->delete();

        $status = Status::latest()->paginate(10);

        return response(["status" => $status, "message" => "Status deleted."], 200);
    }
}
