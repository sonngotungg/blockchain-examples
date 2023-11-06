// SPDX-License-Identifier: none
pragma solidity 0.8.3;

contract VariableAndDatatype {
    // fixed-size variable
    string public intro = 'hello world';
    bool isExist;
    uint number;
    address sender; // 0x...
    // dynamic-size variable
    string myString;
    uint[] myArr = [1,2,3];
    // user-defined variable
    struct Person {
        string name;
        uint age;
    }
    mapping (address => Person) PersonList;
    enum Color {
        red,
        blue,
        green
    }
}