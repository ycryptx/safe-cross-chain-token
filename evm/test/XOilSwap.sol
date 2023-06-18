// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/XOilSwap.sol";

contract OilSwapTest is Test {
    XOilSwap private xOilSwap;
    address private xOilTokenAddress;

    function setUp() public {
        xOilTokenAddress = 0x6d2e03b7EfFEae98BD302A9F836D0d6Ab0002766;
    }

    function testConstructor() public {
        xOilSwap = new XOilSwap(xOilTokenAddress);
        assertEq(xOilSwap.xOIL(), xOilTokenAddress);
    }

    function testSwap() public {
        xOilSwap = new XOilSwap(xOilTokenAddress);
        uint256 result = xOilSwap.swap(100);
        assertEq(result, 100);
    }
}
