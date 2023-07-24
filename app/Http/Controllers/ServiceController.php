<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data= Service::all();
        return response()->json(['success'=>true, 'data'=>$data, 'message'=>'Product fetched successfully!']);
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
        $data= Service::create(['icon' => $request->sicon, 'title' => $request->stitle, 'subtitle' => $request->ssubtitle]);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Service Created Successfully!']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = Service::find($id);
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
        $data = Service::find($id)->update(['icon' => $request->sicon, 'title' => $request->stitle, 'subtitle' => $request->ssubtitle]);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Product updated successfully!']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Service::find($id)->delete();
        return response()->json(['success' => true, 'message' => 'Product deleted successfully!']);
    }
}
