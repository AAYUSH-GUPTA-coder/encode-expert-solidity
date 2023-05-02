/// @notice Problem statement
// Write a function that will delete items (one at a time) from a dynamic array without
// leaving gaps in the array. You should assume that the items to be deleted are chosen at
// random, and try to do this in a gas efficient manner.
// For example imagine your array has 12 items and you need to delete the items at indexes
// 8, 2 and 7.
// The final array will then have items {0,1,3,4,5,6,9,10,11}

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract DeleteFromArray {
    uint[] public dataArray;

    constructor() {
        dataArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
    }

    function removeAtIndex(uint _index) external {
        require(_index < dataArray.length, "Index out of bounds");

        if (_index != dataArray.length - 1) {
            dataArray[_index] = dataArray[dataArray.length - 1];
        }
        dataArray.pop();
    }

    function getArray() external view returns (uint[] memory) {
        return dataArray;
    }
}