// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract FunctionAndVariableVisibility {
    uint externalNumber;
    uint internal internalNumber;
    uint private privateNumber;
    uint public publicNumber;

    constructor() {
        externalNumber = 0;
        internalNumber = 1;
        privateNumber = 2;
        publicNumber = 3;
    }

    function setIntervalNumber(uint _newNumber) internal {
        internalNumber = _newNumber;
    }

    function setPrivateNumber(uint _newNumber) public {
        privateNumber = _newNumber;
    }

    function getIntervalNumber() view internal returns(uint){
        return internalNumber;
    }

    function getPrivateNumber() view public returns(uint) {
        return privateNumber;
    }
}