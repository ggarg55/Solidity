pragma solidity ^0.4.23;

contract FixedSizeArray {
    uint8[3] sequence = [11, 12, 13];
    
    function getSequence() public view returns(uint8[3]) {
        return sequence;
    }
    
    function getSequenceLength() view public returns (uint256) {
        return sequence.length;
    }
}
