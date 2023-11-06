// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract ControlStructure {
    function isEven(uint _number) pure external returns(bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function sum(uint _iterator) pure external returns(uint) {
        uint result = 0;
        for (uint i = 0; i < _iterator; i++) {
            result += i;
        }
        return result;
    }
}