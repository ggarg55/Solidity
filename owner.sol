pragma solidity ^0.4.23;

contract owner {
    address addr;
    uint money;
    constructor() public {
        addr = msg.sender;
        money = 100;
    }
    
    modifier onlyOwner {
        require(addr == msg.sender);
        _;
    }
    
    function withdraw() public onlyOwner {
        money -= 10;
    }
    
    function getMoney() public view returns (uint) {
        return money;
    }
}
