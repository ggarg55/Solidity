pragma solidity ^0.4.23;

contract Properties {
    string private money = "200";
    
    function getMoney() public constant returns(string) {
        return money;
    }
    
    function setMoeny(string input) public {
        money = input;
    }
}
