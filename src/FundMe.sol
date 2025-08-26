//SPDX-License_Identifier:MIT

pragma solidity ^0.8.18;

contract FundMe{
  using PriceConverter fro uint256;

  mapping(address=> uint256) public addressToAmountFunded;
  address[] public funders; 

// making the below address immutable
address public /*immutable*/ i_owner;
  uint256 public constant MINIMUM_USD = 5e18;

  constructor (){
    i_owner  msg.sender;
  }
  

  function fund() public payable{
    require(msg.value.getConversionRate()>=MINIMUM_USD, "U need to spend more Eth !");
    // require (PriceConverter.getConversionRate(msg.value)>=MINIMUM_USD, "You need to spend more Eth");
     addressToAmountFunded[msg.sender]+= msg.value;
     funders.push(msg.sender);
  } 

  function  getVersion() public view returns (uint256){
    AggregatorV3Interface priceFeed = AggregatorV3Interface()
  }

}