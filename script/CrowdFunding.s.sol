// SPDX-License-Identifier: MIT;
pragma solidity ^0.18.13;

import "forge-std/Script.sol";
import {CrowdFunding} from "../src/CrowdFund.sol";

contract CrowdFundingScript is Script {
    function setUp() public {}

    // default anvil key => 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80

    function run() public {
        uint256 privateKey = 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80;

        vm.startBroadcast(privateKey);
        new CrowdFunding();
        vm.stopBroadcast();
    }
}
