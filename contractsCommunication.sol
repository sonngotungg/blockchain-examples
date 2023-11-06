// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract Receiver {
    uint public receivedValue;

    function receiveValue(uint _value) external  {
        receivedValue = _value;
    }
}

contract Sender {
    Receiver public receiverContract;

    constructor(address _receiverContractAddress) {
        receiverContract = Receiver(_receiverContractAddress);
    }

    function sendValue(uint _value) public {
        receiverContract.receiveValue(_value);
    }
}