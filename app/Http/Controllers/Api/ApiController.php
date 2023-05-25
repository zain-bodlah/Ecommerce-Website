<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class ApiController extends Controller
{
    public function getProductsApi()
    {
        $products = Product::get();
        return $products;
    }

    public function getOrdersApi($id)
    {
        $orders = Order::where('user_id',$id)->get();
        if(!$orders->isEmpty())
        {
        return $orders;
        }
        else {
            return "No order";
        }
    }

    public function getLoginApi(Request $request)
    {
        $users = new User();
        $user = User::where('email',$request->email)->get();

        if(!$user->isEmpty())
        {
            if(Hash::check($request->password, $user[0]->password))
            {
                // $token = $user[0]->createToken('MyProject')->accessToken;
                $data = $user;
                // $data[0]['token'] = $token;

                return response()->json([
                    'status' => 1,
                    'message' => 'Successfully logged in',
                    'data' => $data
                ]);
            }
            else{
                return response()->json([
                    'status' => 0,
                    'message' => 'Wrong password, try again',
                    'data' => []
                ]);
            }

        }
        else{
            return response()->json([
                'status' => 0,
                'message' => 'Wrong email, try again',
                'data' => []
            ]);
        }
    }

    public function createOrdersApi(Request $request)
    {
        $orders = new Order();
        $orders->user_id = $request->user_id;
        $orders->subtotal = $request->subtotal;
        $orders->discount = $request->discount;
        $orders->tax = $request->tax;
        $orders->total = $request->total;
        $orders->firstname = $request->firstname;
        $orders->lastname = $request->lastname;
        $orders->mobile = $request->mobile;
        $orders->email = $request->email;
        $orders->line1 = $request->line1;
        $orders->line2 = $request->line2;
        $orders->city = $request->city;
        $orders->province = $request->province;
        $orders->country = $request->country;
        $orders->zipcode = $request->zipcode;
        $orders->status = $request->status;
        $orders->is_shipping_different = $request->is_shipping_different;
        $orders->save();
        return response(['message', 'Order created successfully']);
    }
}
