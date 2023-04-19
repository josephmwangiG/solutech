<?php

namespace App\Http\Controllers;

use App\Models\UserTask;
use Illuminate\Http\Request;

class UserTaskController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $userTasks = UserTask::latest()->paginate(10);

        return response(["userTasks" => $userTasks], 200);
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
            "user_id" => "required",
            "task_id" => "required",
            "name" => "required",
            "description" => "required",
            "status_id" => "required",
            "due_date" => "required",
            "start_time" => "required",
            "end_time" => "required",
        ]);

        UserTask::create($data);
        $userTasks = UserTask::latest()->paginate(10);

        return response(["userTasks" => $userTasks, "message" => "New user task created."], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(UserTask $userTask)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(UserTask $userTask)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, UserTask $userTask)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(UserTask $userTask)
    {
        $userTask->delete();
        $userTasks = userTask::latest()->paginate(10);

        return response(["userTasks" => $userTasks, "message" => "User task deleted."], 200);
    }
}
