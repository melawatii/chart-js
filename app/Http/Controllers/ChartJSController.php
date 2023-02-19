<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use DB;

class ChartJSController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = DB::table('chart')
            ->select('bulan', 'value')->get();

        $bulan = [];
        $value = [];

        foreach ($data as $row) {
            $bulan[] = $row->bulan;
            $value[] = $row->value;
        }

        $chartData = [
            'labels' => $bulan,
            'datasets' => [
                [
                    'type' => 'bar', // tipe chart
                    'label' => 'Chart Pendapatan',
                    'data' => $value,
                    'backgroundColor' => '#a0ced9',
                    'borderColor' => '#a0ce02',
                    'borderWidth' => 1,
                ]
            ]
        ];

        return view('index', compact('chartData'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        //
    }
}
