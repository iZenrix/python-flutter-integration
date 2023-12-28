<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Symfony\Component\Process\Process;

class MultiplyController extends Controller
{
    public function __invoke(Request $request)
    {
        $process = new Process([
            'C:/Python311/python',
            base_path('app/Python/multiply.py'),
            $request['number1'],
            $request['number2']
        ]);
        $process->run();
        $result = json_decode($process->getOutput(), true);
        return response()->json($result);
    }
}
