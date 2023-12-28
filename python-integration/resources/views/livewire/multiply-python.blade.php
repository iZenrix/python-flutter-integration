<div>
    <input type="number" wire:model='number1'>
    <input type="number" wire:model='number2'>
    <button wire:click='add'>Multiply</button>
    <p>Result : {{ $result }}</p>
</div>