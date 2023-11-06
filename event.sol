// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract EventContract {
    address public owner;
    uint256 public value;

    // Define an event
    event ValueSet(address indexed setter, uint256 value);

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint256 _newValue) public {
        require(msg.sender == owner, 'Only the owner can set the value');
        value = _newValue;
    
        // Log the event
        emit ValueSet(msg.sender, _newValue);
    }
}