<?php

namespace App\Http\Controllers;
use App\Models\Kos;

use Illuminate\Http\Request;

use Laravel\Lumen\Routing\Controller as BaseController;

class KosController extends BaseController
{

    public function view()
    {
        return view('home');
    }

    public function index()
    {
        $kos = Kos::all();
        return response()->json($kos);
    }

    public function show($id)
    {
        $kos = Kos::findOrFail($id);
        return response()->json($kos);

    }

    public function create(Request $request)
    {
        $kos = new Kos();

        $kos->name = request('name');
        $kos->city = request('city');
        $kos->country = request('country');
        $kos->price = request('price');
        $kos->rating = request('rating');
        $kos->photo = request('photo');
        $kos->image = request('image');
        $kos-> address = request('address');
        $kos->phone = request('phone');
        $kos->map_url = request('map_url');
        $kos->kamar_tersedia = request('kamar_tersedia');
        $kos->jumlah_kamar = request('jumlah_kamar');
        $kos->wifi = request('wifi');

        $kos->save();
        return response()->json($kos);
    }

    public function update(Request $request, $id)
    {
        $kos = Kos::find($id);

        if(!$kos) {
            return response()->json(['message' => 'Kos not found'], 404);
        }

        $data = $request->all();

        $kos->fill($data);

        $kos->save();
        return response()->json($kos);
    }

    public function destroy($id)
    {
        $kos = Kos::find($id);

        if(!$kos) {
            return response()->json(['message' => 'Kos not found'], 404);
        }
        $kos->delete();
        return response()->json(['message' => 'Data sudah dihapus']);
    }
}
