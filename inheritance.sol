// SPDX-License-Identifier: MIT
pragma solidity 0.8.3;

contract Parent {
    uint public parentData;

    constructor(uint _data) {
        parentData = _data;
    }

    function parentFunction() public pure returns (string memory) {
        return 'this is function in the Parent contract';
    }
}

// Child contract that inherits from Parent
contract Child is Parent {
    uint public childData;

    constructor(uint _parentData, uint _childData) Parent(_parentData) {
        childData = _childData;
    }

    function childFunction() public pure returns (string memory) {
        return 'this is function in the child contract';
    }
}

contract MyParent {
    uint private  parentData;

    constructor() {
        parentData = 0;
    }

    function setParentData(uint _number) internal {
        parentData = _number;
    }

    function getParentData() internal view returns(uint) {
        return parentData;
    }
}

contract MyChild is MyParent {
    uint childData;

    constructor() MyParent() {
        childData = 0;
    }

    function getParentFromChild() view public returns(uint) {
        return getParentData();
    }

    function getChildData() view public returns(uint) {
        return childData;
    }

    function setParentDataFromChild(uint _number) public {
        // parentData = _number;
        setParentData(_number);
    }

    function setChildData(uint _number) public {
        childData = _number;
    }
}