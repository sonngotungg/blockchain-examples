// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

// contract TransferEtherContract {
//     function SendEther(address payable to, uint amount) external {
//         to.transfer(amount);
//     }

//     function BuySth() external payable {
//         msg.value;
//         address(this).balance;
//     }

//     receive() external payable {
//         //
//     }
// }

contract TransferEtherContract {
    address public owner;
    uint public contractBalance;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        require(msg.value > 0, 'Please send some Ether to deposit.');
        contractBalance += msg.value;
    }

    modifier isOwner() {
        require(msg.sender == owner, 'Only the owner can withdraw');
        _;
    }

    modifier isBalanceEnough(uint _amount) {
        require(_amount > contractBalance, 'Insufficient contract balance');
        _;
    }

    function withDraw(uint _amount) public isOwner isBalanceEnough(_amount) {
        // require(msg.sender == owner, 'Only the  owner can withdraw');
        // require(_amount > contractBalance, 'Insufficient contract balance');

        payable (msg.sender).transfer(_amount);
        contractBalance -= _amount;
    }

    function sendEther(address payable to, uint _amount) public isOwner isBalanceEnough(_amount) {
        // require(msg.sender == owner, 'Only the owner can withdraw');
        // require(contractBalance < _amount, 'Insufficient contract balance');

        to.transfer(_amount);
        contractBalance -= _amount;
    }

    receive() external payable { 
        // Fallback function to receive Ehter
        contractBalance += msg.value;
    }
}