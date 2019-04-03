pragma solidity ^0.4.23;

contract Inheritance {
    address addr;
    constructor () public {
        addr = msg.sender;
    }
    
    modifier ownerOnly {
        require(addr == msg.sender);
        _;
    }
}

contract subclass is Inheritance {
    function printAddress() public ownerOnly view returns (address) {
        return addr;
    }
}

contract mortal is subclass {
    function close() public ownerOnly {
        selfdestruct(addr);
    }
}

