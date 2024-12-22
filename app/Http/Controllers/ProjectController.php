<?php

namespace App\Http\Controllers;

use App\Repositories\Contracts\ProjectRepositoryInterface;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    private $projectRepository;

    public function __construct(ProjectRepositoryInterface $projectRepository)
    {
        $this->projectRepository = $projectRepository;
    }

    public function index()
    {
        return response()->json($this->projectRepository->getAll());
    }

    public function show($id)
    {
        return response()->json($this->projectRepository->getById($id));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            //'start_date' => 'required',
            //'end_date' => 'required',
        ]);

        return response()->json($this->projectRepository->create($validated), 201);
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'title' => 'nullable|string|max:255',
            'description' => 'nullable|string',
            //'status' => 'nullable|string|in:pending,ongoing,completed',
        ]);

        return response()->json($this->projectRepository->update($id, $validated));
    }

    public function destroy($id)
    {
        return response()->json($this->projectRepository->delete($id));
    }
}
