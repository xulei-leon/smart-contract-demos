// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    function test_Increment() public {
        assertEq(counter.count(), 0, "Initial count should be 0");
        counter.increment();
        assertEq(counter.count(), 1, "Count should be 1 after increment");
    }

    function test_SetNumber() public {
        counter.setNumber(5);
        assertEq(counter.count(), 5, "Count should be set to 5");
    }

    function testFuzz_Increment(uint256 _x) public {
        if (_x > type(uint256).max - 1) {
            _x = type(uint256).max - 1; // Prevent overflow in test
        }

        counter.setNumber(_x);

        uint256 newCount = counter.increment();
        assertEq(newCount, _x + 1, "Count should be incremented by 1");
    }
}
