pragma solidity ^0.4.23;

contract IntegerTest {
    
    
    function overflow() public pure returns (uint8){
        uint8 max = 2**8 - 1;
        max = max + 1;
        return max;
    }
    
    function underflow() public pure returns(uint8) {
        uint8 min = 0;
        min = min - 1;
        return min;
    }
}
