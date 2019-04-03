pragma solidity ^0.4.23;

contract StorageMemory {
    uint8[] public sequence;
    
    function updateSequence() public returns (uint256) {
        firstUpdate(sequence);
        secondUpdate(sequence);
        return sequence.length;
    }
    
    function firstUpdate(uint8[] storage arr) internal {
        arr.push(5); //storage passes refrence of array, so it will directly work on state varialbe.
    }
    
    function secondUpdate(uint8[] arr) internal pure {
        arr[1] = 2; // it will not update the actual array, because it array type is memory.
    }
}
