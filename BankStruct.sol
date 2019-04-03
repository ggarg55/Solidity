pragma solidity ^0.4.23;
pragma experimental ABIEncoderV2;

contract BankStruct {
    struct Account {
        address addr;
        uint money;
    }
    
    Account public acc0 = Account({addr: 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a, money: 100});
    
    function addMoeny(uint _money) public {
        acc0.money += _money; 
    }
    
    function withdraw(uint _money) public {
        require(_money > acc0.money);
        acc0.money -= _money;
    }
    
    Account public accSecond = Account({ addr: 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a, money: 0 });
    
    function tranfer(Account _from, Account _to, uint _money) public pure {
        require((_from.money > 0) && (_from.money >= _money) );
        _from.money -= _money;
        _to.money += _money;
    }
}
