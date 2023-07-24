<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Blog::all();
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

        $data = Blog::create([
            'photo' => $fileName,
            'title' => $request->input('title'),
            'name' => $request->input('name'),
            'subtitle' => $request->input('subtitle'),
            'detail1' => $request->input('detail1'),
            'title2' => $request->input('title2'),
            'detail2' => $request->input('detail2'),
            'title3' => $request->input('title3'),
            'detail3' => $request->input('detail3'),
        ]);

        return response()->json(['success' => true, 'data' => $data, 'message' => 'created successfully']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = Blog::find($id);
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
            $data = Blog::find($id)->update([
                'photo' => $fileName,
                'title' => $request->input('title'),
                'name' => $request->input('name'),
                'subtitle' => $request->input('subtitle'),
                'detail1' => $request->input('detail1'),
                'title2' => $request->input('title2'),
                'detail2' => $request->input('detail2'),
                'title3' => $request->input('title3'),
                'detail3' => $request->input('detail3')
            ]);
        } else {
            $data = Blog::find($id)->update([
                'title' => $request->input('title'),
                'name' => $request->input('name'),
                'subtitle' => $request->input('subtitle'),
                'detail1' => $request->input('detail1'),
                'title2' => $request->input('title2'),
                'detail2' => $request->input('detail2'),
                'title3' => $request->input('title3'),
                'detail3' => $request->input('detail3')
            ]);
        }

        return response()->json(['success' => true, 'data' => $data, 'message' => 'created successfully']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Blog::find($id)->delete();
        return response()->json(['success' => true, 'message' => 'Product deleted successfully!']);
    }
}
