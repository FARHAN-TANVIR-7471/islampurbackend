<?php

namespace App\Http\Controllers;

use App\Cart;

use App\Model\Product;
use Illuminate\Http\Request;
use \Illuminate\Http\Response;
use App\Http\Resources\Product\ProductResource;
use App\Http\Resources\Product\ProductCollection;
use Illuminate\Support\Facades\Auth;
use App\Exceptions\ProductNotBelongsToUser;
use App\Http\Requests\ProductRequest;
use DB;

class ProductController extends Controller
{
    public function totalProduct()
     {
       
        $carts = Cart::where('ip_address', request()->ip())->get();

        $total_item = 0;

        foreach ($carts as $cart)
        {
            $total_item += 1; 
        }

        return $total_item;
     }

    public function index()
    {
        $product = Product::orderBy('updated_at', 'DESC')->get();

        return response()->json([
            'data' => $product,
            'totalproduct' => $this->totalProduct(),
        ]);
        //return ProductCollection::collection(Product::orderBy('updated_at', 'desc')->get());
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $name = $request->name;
        $product_type_id = $request->product_type_id;
        $price = $request->price;
        $discount = $request->discount;
        $number = $request->number;
        $description = $request->description;
        $image = $request->image;
        $image_2 = $request->image_2;
        $image_3 = $request->image_3;
        $image_4 = $request->image_4;
        $image_5 = $request->image_5;
        $image_6 = $request->image_6;
        $image_7 = $request->image_7;
        $image_8 = $request->image_8;
        $image_9 = $request->image_9;
        $image_10 = $request->image_10;

        $color = $request->color;
        $color_2 = $request->color_2;
        $color_3 = $request->color_3;
        $color_4 = $request->color_4;
        $color_5 = $request->color_5;
        $color_6 = $request->color_6;
        $color_7 = $request->color_7;
        $color_8 = $request->color_8;
        $color_9 = $request->color_9;
        $color_10 = $request->color_10;

        $data = array('name'=>$name,'product_type_id'=>$product_type_id, 'price'=>$price,'discount'=>$discount,  'number'=>$number,'image'=>$image, 'image_2'=>$image_2, 'image_3'=>$image_3, 'image_4'=>$image_4, 'image_5'=>$image_5, 'image_6'=>$image_6, 'image_7'=>$image_7, 'image_8'=>$image_8, 'image_9'=>$image_9, 'image_10'=>$image_10,  'color'=>$color,'color_2'=>$color_2,'color_3'=>$color_3,'color_4'=>$color_4,'color_5'=>$color_5,'color_6'=>$color_6,'color_7'=>$color_7,'color_8'=>$color_8,'color_9'=>$color_9,'color_10'=>$color_10);

        DB::table('products')->insert($data);
        return response([
            'data' => $data
        ],200);
    }

    public function show($id)
    {
        $product = Product::find($id);
        return response()->json([
            'data' => $product,
            'totalproduct' => $this->totalProduct(),
        ],200);
        //return new ProductResource($product);
    }

    public function showbyname(Request $request)
    {
        $name = $request->name;
        $product = DB::table('products')->where('name', '=', $name)->first();
        //$product = Product::findOrFail($name);
        return response()->json([
            'data' => $product,
            'totalproduct' => $this->totalProduct(),
        ],200);
        //return new ProductResource($product);
    }

    public function edit(Product $product)
    {
        //
    }

    public function update(Request $request, Product $product)
    {
        $product->update($request->all());
    }

    public function destroy(Product $product)
    {
        //
    }
}
