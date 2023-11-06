// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract ArrayContract {
    // storage array
    uint[] myArr = [1];
    function addNumber(uint _newNumber) public {
        _newNumber;
        myArr.push(_newNumber);
        myArr;
    }
    function getArray() view public returns(uint[] memory) {
        return myArr;
    }
    // memory array
    function doSomething() pure public returns(uint[] memory) {
        uint[] memory myMemoryArr = new uint[](4);

        myMemoryArr[0] = 1;
        myMemoryArr[2] = 5;

        return myMemoryArr;
    }
    // array as parameters
}