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
        $users_tasks = UserTask::latest()->with("status", "user", "task")->paginate(10);
        $all_users_tasks = UserTask::latest()->with("status", "user", "task")->get();

        return response(["all_users_tasks" => $all_users_tasks, "users_tasks" => $users_tasks], 200);
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
    public function update(Request $request, $id)
    {

        $data = $request->validate([
            "status_id" => "required",
            "due_date" => "required",
        ]);

        $userTask = UserTask::find($id);


        $userTask->due_date = $data['due_date'];
        $userTask->status_id = $data['status_id'];
        $userTask->save();

        $users_tasks = UserTask::latest()->with("status", "user", "task")->paginate(10);

        return response(["users_tasks" => $users_tasks, "message" => "Task Updated."], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {

        $userTask = UserTask::find($id);
        $userTask->delete();

        $users_tasks = UserTask::latest()->with("status", "user", "task")->paginate(10);

        return response(["users_tasks" => $users_tasks, "message" => "Task Deleted."], 200);
    }
}
