<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $data = Product::all();
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Product fetched successfully!']);
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
        $data = Product::create(['name' => $request->pname, 'price' => $request->pprice]);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Product created successfully!']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $data = Product::find($id);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Product fetched successfully!']);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $data = Product::find($id);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Product fetched successfully!']);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = Product::find($id)->update(['name' => $request->pname, 'price' => $request->pprice]);
        return response()->json(['success' => true, 'data' => $data, 'message' => 'Product updated successfully!']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Product::find($id)->delete();
        return response()->json(['success' => true, 'message' => 'Product deleted successfully!']);
    }
}
