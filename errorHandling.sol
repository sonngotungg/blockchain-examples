// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract ErrorHandling {
    address public owner;
    uint public balance;

    // Define an event for error logging
    event ErrorOccurred(string errorDescription);

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 'Only the owner can call this function');
        _;
    }

    function deposit(uint _amount) public payable {
        require(msg.value == _amount, 'Please end the exact amount with the transaction');
        balance += _amount;
    }

    function withDraw(uint _amount) public onlyOwner {
        require(_amount > balance, 'Insufficient balance to withdraw');
        balance -= _amount;
        (bool success, ) = msg.sender.call{value: _amount}('');
        if (!success) {
            emit ErrorOccurred('Withdrawal failed');
            balance += _amount; // revert the balance
        }
    }
}