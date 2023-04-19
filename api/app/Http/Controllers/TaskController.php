<?php

namespace App\Http\Controllers;

use App\Models\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $tasks = Task::latest()->paginate(10);

        return response(["tasks" => $tasks], 200);
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

        Task::create($data);
        $tasks = Task::latest()->paginate(10);

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

        return $request->all();
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Task $task)
    {
        $task->delete();
        $tasks = Task::latest()->paginate(10);

        return response(["tasks" => $tasks, "message" => "Task deleted."], 200);
    }
}
