//SPDX-License-Identifier:MIT
pragma solidity 0.8.28;
//Forge Standard Library is used to deploy 
import {scripts} from "forge-std/Script.sol";
// import which contract to deploy
import {SimpleStorage} from "../src/SimpleStorage.sol"

contract DeploySimpleStorage is Script {

function run() external returns(SimpleStorage)
{



vm.startBroadcast();

SimpleStorage simpleStorage = new SimpleStorage();

vm.StopBroadcast();

return SimpleStorage ;

}}

// forge script  scripts/DeploySimpleStorage.s.sol

//forge script script/DeploySimpleStorage.s.sol--rpc-url https://127.0.0.1:8545

//Dry Run => It is used to make interaction when u didn't have blockchain running 
