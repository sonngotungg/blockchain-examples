// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract MappingContract {
    struct Person {
        string name;
        uint age;
    }

    mapping (address => Person) PersonList;

    function addPerson(Person memory _newPerson) public {
        PersonList[msg.sender] = _newPerson;
    }

    function getPersonList(address _address) view public returns(Person memory) {
        return PersonList[_address];
    }
}