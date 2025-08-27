//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;
// forge script script/DeployFundMe.s.sol
import {FundMe} from "../src/Fundme.sol";
import {Script} from "forge-std/Script.sol";

contract DeployFundMe is Script {
    function run () external {
        vm.startBroadcast();
        new FundMe();
        vm.stopBroadcast();
        
    
    
    }
    
    }

