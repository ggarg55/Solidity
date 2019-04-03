pragma solidity ^0.4.23;

contract BankAccount {
    address owner = msg.sender;
    mapping(address => uint256) public account;
    
    function deposit(uint256 money) public {
        account[msg.sender] += money;
    }
    
    function withdraw(uint256 money) public {
        require(msg.sender == owner);
        require(account[msg.sender] > money);
        account[msg.sender] -= money;
    }
}
