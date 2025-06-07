// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Logic {
    uint public value;

    function setValue(uint _value) external {
        value = _value;
    }

    function getValue() external view returns (uint) {
        return value;
    }
}