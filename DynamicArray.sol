pragma solidity ^0.4.23;

contract DynamicArray {
    uint8[] sequence;
    
    function getSequence() public view returns (uint8[]) {
        return sequence;
    }
    
    function addSequence(uint8 num) public payable returns (uint8[]) {
        sequence.push(num);
        return sequence;
    }
    
    function sequenceLength() public view returns (uint256) {
        return sequence.length;
    }
    
    function clearSequence() public payable returns (uint8[]) {
        delete sequence;
        return sequence;
    }
    
}
