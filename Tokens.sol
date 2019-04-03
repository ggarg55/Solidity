pragma solidity ^0.4.23;

contract Tokens {
    address owner;
    mapping(address => uint256) public accounts;
    
    constructor(uint256 initial) public {
        owner = msg.sender;
        accounts[owner] = initial; 
    }
    
    function tranfer(uint256 money) public {
        require(msg.sender == owner);
        require(accounts[msg.sender] > money);
        accounts[owner] -= money;
    }
}
