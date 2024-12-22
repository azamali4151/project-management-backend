<?php

namespace App\Http\Controllers;
use App\Repositories\Contracts\TaskRepositoryInterface;

use Illuminate\Http\Request;

class TaskController extends Controller
{
    protected $taskRepository;

    public function __construct(TaskRepositoryInterface $taskRepository)
    {
        $this->taskRepository = $taskRepository;
    }

    public function index()
    {
        return response()->json($this->taskRepository->all());
    }

    public function show($id)
    {
        return response()->json($this->taskRepository->find($id));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'project_id' => 'required',
            'due_date' => 'required',
            'status' => 'required',
        ]);

        return response()->json($this->taskRepository->create($data), 201);
    }

    public function update(Request $request, $id)
    {
        $data = $request->validate([
           'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'project_id' => 'required',
            'due_date' => 'required',
            'status' => 'required',
        ]);

        return response()->json($this->taskRepository->update($id, $data));
    }

    public function destroy($id)
    {
        $this->taskRepository->delete($id);
        return response()->json(null, 204);
    }
}