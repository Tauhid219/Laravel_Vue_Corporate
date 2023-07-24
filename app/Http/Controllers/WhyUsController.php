<?php

namespace App\Http\Controllers;

use App\Models\WhyUs;
use Illuminate\Http\Request;

class WhyUsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data= WhyUs::all();
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = WhyUs::find($id);
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
        $data = WhyUs::find($id)->update(['headline' => $request->wheadline, 'subtitle' => $request->wsubtitle, 'line1' => $request->wline1, 'line1sub' => $request->wline1sub, 'line2' => $request->wline2, 'line2sub' => $request->wline2sub, 'line3' => $request->wline3, 'line3sub' => $request->wline3sub]);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Product updated successfully!']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
