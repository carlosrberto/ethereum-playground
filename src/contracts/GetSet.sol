pragma solidity ^0.4.16;


contract GetSet {
    string value;

    function setValue(string _value) public {
        value = _value;
    }

    function getValue() public returns (string) {
        return value;
    }
}