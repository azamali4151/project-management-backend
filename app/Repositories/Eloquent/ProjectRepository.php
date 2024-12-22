<?php

namespace App\Repositories\Eloquent;

use App\Models\Project;
use App\Repositories\Contracts\ProjectRepositoryInterface;

class ProjectRepository implements ProjectRepositoryInterface
{
    public function getAll()
    {
        return Project::all();
    }

    public function getById($id)
    {
        return Project::findOrFail($id);
    }

    public function create(array $data)
    {
        return Project::create($data);
    }

    public function update($id, array $data)
    {
        $project = Project::findOrFail($id);
        $project->update($data);

        return $project;
    }

    public function delete($id)
    {
        $project = Project::findOrFail($id);
        $project->delete();

        return $project;
    }
}
