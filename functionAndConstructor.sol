// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract FunctionAndConstructor {
    uint number;
    constructor() {
        number = 0;
    }

    function setNumber(uint _newNumber) external {
        number = _newNumber;
    }

    function getNumber() external view returns(uint) {
        return number;
    }
}