pragma solidity ^0.4.16;


contract GetSet {
    string private value;

    function setValue(string _value) public payable {
        value = _value;
    }

    function getValue() public constant returns (string) {
        return value;
    }
}