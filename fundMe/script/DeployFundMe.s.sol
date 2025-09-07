//SPDX-License-Identifier:MIT

pragma solidity 0.5.11;
// forge script script/DeployFundMe.s.sol

import {FundMe} from "../src/Fundme.sol";
import {Script} from "forge-std/src/Script.sol";

contract DeployFundMe is Script {
    function run() external {
        vm.startBroadcast();
        new FundMe();
        vm.stopBroadcast();
    }
}
