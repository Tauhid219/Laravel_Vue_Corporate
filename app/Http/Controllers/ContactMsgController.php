<?php

namespace App\Http\Controllers;

use App\Models\ContactMsg;
use Illuminate\Http\Request;

class ContactMsgController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data= ContactMsg::all();
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
        $data= ContactMsg::create(['name' => $request->cname, 'email' => $request->cemail, 'subject' => $request->csubject, 'message' => $request->cmessage]);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Service Created Successfully!']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = ContactMsg::find($id);
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
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        ContactMsg::find($id)->delete();
        return response()->json(['success' => true, 'message' => 'Product deleted successfully!']);
    }
}
