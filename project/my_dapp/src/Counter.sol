// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public count;

    function setNumber(uint256 _number) public {
        count = _number;
    }

    function increment() public returns (uint256) {
        count++;
        return count;
    }
}
