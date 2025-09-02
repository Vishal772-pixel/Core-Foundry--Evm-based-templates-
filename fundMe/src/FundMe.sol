// Get funds fron user
// withdraw funds 
// set a minimum funding value in USD
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;
import {Priceconverter} from "./PriceConverter.sol"

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract fundMe {

//*****  error s///
error getMoreUsd();


address[] public funders;
uint256 totalAmount;
uint256  public MINIMUM_USD= 5e18;

mapping(address funder =>uint256 amountFunded) public addressToAmountFunded;




function fund(uint256 _MINIMUM_USD, address _owner) public payable {
    // allow user to send money..and it should be MINIMUM_USD

    // require(msg.value>=MINIMUM_USD, "didnt send enough eth")
    require(getConversionRate(msg.value)>=MINIMUM_USD,getMoreUsd())
funders.push(msg.sender);
addressToAmountFunded[msg.sender]= addressToAmountFunded[msg.sender]+ msg.value;
}
function withdraw() public {}




//chain link data feed or chainlink pricefeed to get external pricing information



// Nonce :tx count for the account
// gas Price : Price per unit of gas (in wei)
//gas limit :max gas that this tx can use around 21k
//to :address that the tx is sent to
//Value: amount of wei to send
// data:What to send to the To address (empty)
//v,r,s:components of tx signature



}