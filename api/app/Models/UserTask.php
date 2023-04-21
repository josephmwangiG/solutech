<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserTask extends Model
{
    use HasFactory;

    protected $fillable = ["user_id", "task_id", "start_time", "end_time", "due_date", "status_id"];

    public function task()
    {
        return $this->belongsTo(Task::class, "task_id");
    }

    public function user()
    {
        return $this->belongsTo(User::class, "user_id");
    }
    public function status()
    {
        return $this->belongsTo(Status::class, "status_id");
    }
}
