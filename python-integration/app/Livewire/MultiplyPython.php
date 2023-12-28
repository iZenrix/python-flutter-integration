<?php

namespace App\Livewire;

use Livewire\Component;
use Symfony\Component\Process\Process;

class MultiplyPython extends Component
{
    public $number1;
    public $number2;
    public $result;

    public function add()
    {
        $process = new Process([
            'C:/Python311/python',
            base_path('app/Python/multiply.py'),
            $this->number1,
            $this->number2
        ]);
        $process->run();
        $this->result = json_decode($process->getOutput(), true);
        return response()->json($this->result);
        // $this->reset('number1', 'number2');
    }
}
