<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProjectResource;
use App\Http\Resources\SkillResource;
use App\Models\Project;
use App\Models\Skill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;

class WelcomeController extends Controller
{

    public function getPrivacy()
    {
        return view('privacy');
    }
    public function welcome()
    {
        $skills = SkillResource::collection(Skill::all());
        $projects = ProjectResource::collection(Project::with('skill')->inRandomOrder()->get());

        return Inertia::render('Welcome', compact('skills', 'projects'));
    }

    public function upload_cv(Request $request)
    {
        Storage::disk('public')->deleteDirectory('cv');
        if ($request->hasFile('cv')) {
            $file = $request->file('cv');
            $mimeType = strtolower($file->getClientMimeType());
            if (strpos($mimeType, 'image/') === 0 || strpos($mimeType, 'application/') === 0) {
                $path = $file->storeAs('cv', 'cv.' . $file->getClientOriginalExtension(), ['disk' => 'public']);
                return back();
            } else {
                // Handle invalid file type here
            }
        }

    }
    public function download_cv()
    {
        $file_extensions = ['pdf', 'doc', 'docx', 'txt', 'rtf', 'xls', 'xlsx', 'ppt', 'pptx', 'csv', 'ods', 'odt', 'odp', 'bmp', 'gif', 'jpg', 'jpeg', 'png', 'svg', 'webp', 'ico', 'tif', 'tiff'];

        foreach ($file_extensions as $extension) {
            $path = storage_path('app/cv/cv.' . $extension);
            if (file_exists($path)) {
                return response()->download($path);
            }
        }


    }
}
