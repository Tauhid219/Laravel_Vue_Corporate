<?php

namespace App\Http\Controllers;

use App\Models\GeneralInfo;
use Illuminate\Http\Request;

class GeneralInfoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data= GeneralInfo::all();
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
        $data = GeneralInfo::find($id);
        return response()->json(['success' => true, 'data' => $data, 'message' => ' fetched successfully!']);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $data = GeneralInfo::find($id);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'fetched successfully!']);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = GeneralInfo::find($id)->update(['htitle' => $request->ghtitle, 'hsubtitle' => $request->ghsubtitle, 'ssubtitle' => $request->gssubtitle, 'tsubtitle' => $request->gtsubtitle, 'csubtitle' => $request->gcsubtitle, 'caddress' => $request->gcaddress, 'cemail' => $request->gcemail, 'cphone' => $request->gcphone]);
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
