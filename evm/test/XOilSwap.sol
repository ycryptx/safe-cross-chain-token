// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/XOilSwap.sol";

contract OilSwapTest is Test {
    XOilSwap public oilSwap;

    function setUp() public {
        oilSwap = new OilSwap();
        oilSwap.setNumber(0);
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
