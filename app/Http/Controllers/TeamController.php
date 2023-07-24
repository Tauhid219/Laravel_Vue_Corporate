<?php

namespace App\Http\Controllers;

use App\Models\TeamMember;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = TeamMember::all();
        return response()->json(['success' => true, 'data' => $data, 'message' => 'successfully show']);
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
        $fileName = time() . '_' . $request->file->getClientOriginalName();
        $request->file->move(public_path('uploads/'), $fileName);

        $data = TeamMember::create([
            'photo' => $fileName,
            'name' => $request->input('name'),
            'position' => $request->input('position')
        ]);

        return response()->json(['success' => true, 'data' => $data, 'message' => 'created successfully']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = TeamMember::find($id);
        return response()->json(['success' => true, 'data' => $data, 'message' => ' fetched successfully!']);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        if ($request->file()) {
            $fileName = time() . '_' . $request->file->getClientOriginalName();
            $request->file->move(public_path('uploads/'), $fileName);
            $data = TeamMember::find($id)->update([
                'photo' => $fileName,
                'name' => $request->input('name'),
                'position' => $request->input('position')
            ]);
        } else {
            $data = TeamMember::find($id)->update([
                'name' => $request->input('name'),
                'position' => $request->input('position')
            ]);
        }
        
        return response()->json(['success' => true, 'data' => $data, 'message' => 'created successfully']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        TeamMember::find($id)->delete();
        return response()->json(['success' => true, 'message' => 'Product deleted successfully!']);
    }
}
