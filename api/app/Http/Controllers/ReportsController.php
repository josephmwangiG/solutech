<?php

namespace App\Http\Controllers;

use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;
use PDF;

class ReportsController extends Controller
{
    public function usersPDF()
    {
        $users = User::latest()->get();
        $data = [
            'title' => 'Welcome to ItSolutionStuff.com',
            'date' => date('m/d/Y'),
            'users' => $users,
        ];

        $pdf = PDF::loadView('users-pdf', $data);

        return $pdf->stream('users-report.pdf');
    }


    public function tasksPDF()
    {
        $tasks = Task::latest()->get();
        $data = [
            'title' => 'Welcome to ItSolutionStuff.com',
            'date' => date('m/d/Y'),
            'tasks' => $tasks,
        ];

        $pdf = PDF::loadView('tasks-pdf', $data);

        return $pdf->stream('tasks-report.pdf');
    }
}
