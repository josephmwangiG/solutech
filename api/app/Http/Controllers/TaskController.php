<?php

namespace App\Http\Controllers;

use App\Models\Task;
use App\Models\UserTask;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $tasks = Task::latest()->with("status", "users")->paginate(10);
        $all_tasks = Task::latest()->with("status", "users")->get();

        return response(["tasks" => $tasks, "all_tasks" => $all_tasks], 200);
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
            "description" => "required",
            "status_id" => "required",
            "due_date" => "required",
        ]);

        $task = Task::create($data);

        if ($request->has("task_users")) {
            foreach ($request->get("task_users") as $user) {
                UserTask::create([
                    "user_id" => $user,
                    "task_id" => $task->id,
                    "start_time" => date("H:i"),
                    "end_time" => date("H:i"),
                    "due_date" => date("Y-m-d"),
                    "status_id" => $data["status_id"],
                ]);
            }
        }


        $tasks = Task::latest()->with("status", "users")->paginate(10);

        return response(["tasks" => $tasks, "message" => "New task created."], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Task $task)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Task $task)
    {
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Task $task)
    {

        $data = $request->validate([
            "name" => "required",
            "description" => "required",
            "status_id" => "required",
            "due_date" => "required",
        ]);

        $task->update($data);

        UserTask::destroy($task->users);

        if ($request->has("task_users")) {
            foreach ($request->get("task_users") as $user) {
                UserTask::create([
                    "user_id" => $user,
                    "task_id" => $task->id,
                    "start_time" => date("H:i"),
                    "end_time" => date("H:i"),
                    "due_date" => date("Y-m-d"),
                    "status_id" => $data["status_id"],
                ]);
            }
        }

        $tasks = Task::latest()->with("status", "users")->paginate(10);

        return response(["tasks" => $tasks, "message" => "Task updated."], 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Task $task)
    {
        $task->delete();
        UserTask::destroy($task->users);
        $tasks = Task::latest()->with("status", "users")->paginate(10);

        return response(["tasks" => $tasks, "message" => "Task deleted."], 200);
    }
}
