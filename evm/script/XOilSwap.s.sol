// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/XOilSwap.sol";

contract XOilSwapScript is Script {
    address private xOilTokenAddress;
    address private nativeTokenAddress;
    XOilSwap private xOilSwap;

    function setUp() public {
        xOilTokenAddress = 0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512; // TODO: change to actual xOIL token addres
        nativeTokenAddress = 0x5FbDB2315678afecb367f032d93F642f64180aa3; // TODO: change to actual native token addres
    }

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        xOilSwap = new XOilSwap(xOilTokenAddress, nativeTokenAddress);

        vm.stopBroadcast();
    }
}
