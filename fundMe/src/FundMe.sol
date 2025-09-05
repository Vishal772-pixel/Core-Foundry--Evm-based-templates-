// Get funds fron user
// withdraw funds 
// set a minimum funding value in USD
  // Functions Order:
    //// constructor
    //// receive
    //// fallback
    //// external
    //// public
    //// internal
    //// private
    //// view / pure

    
//SPDX-License-Identifier:MIT

pragma solidity ^0.8.20;
import {Priceconverter} from "./PriceConverter.sol"


contract fundMe {

//*****  error s///
error FundMe_getMoreUsd();
error FundMe_notOwner();
error FundMe_withdrawCallFailed();


/**
 * @title A sample Funding Contract
 * @author Vishal Tiwari
 * @notice This contract is for creating a sample funding contract
 * @dev This implements price feeds as our library
 */


using PriceConverter for uint256;
address[] private s_funders;
uint256 totalAmount;
uint256  public constant MINIMUM_USD= 5e18;

mapping(address funder =>uint256 amountFunded) public s_addressToAmountFunded;

address public  immutable i_owner;

// Events( we dont have any)

modifier onlyOwner(){
    // require(msg.sender== i_ owner,"Sender is not the Owner");
    if(msg.sender!=i__owner){
        revert notOwner();
    }
    _;
}
constructor(){
    //the one who deploys this become owner
    i_owner=msg.sender;
}

function fund(uint256 _MINIMUM_USD, address i_owner) public payable {
    // allow user to send money..and it should be MINIMUM_USD

    // require(msg.value>=MINIMUM_USD, "didnt send enough eth")
    // require(getConversionRate(msg.value)>=MINIMUM_USD,getMoreUsd())
    msg.value.getConversionRate();
    require(msg.value.getConversionRate>=MINIMUM_USD,FundMe_getMoreUsd())
    //SafeMath, Oveflow, Checking and the unchecked keyword
     s_funders.push(msg.sender);
s_addressToAmountFunded[msg.sender]= addressToAmountFunded[msg.sender]+ msg.value;


function withdraw() public onlyOwner{
    
    // require(msg.sender==owner,"Must be owner");//can also be done in each contract 
    for(uint256 funderIndex = 0; funderIndex < funders.length;funderIndex++){
        address funder =s_funders[funderIndex];
        s_addressToAmountFunded[funder]=0;

    }
    s_funders=new address[](0);
{bool callSuccess ,}= payable(msg.sender).call{value:address.balance}("");
  
//   require(callSuccess,"Call Failed");
//   revert();
// more Gas Efficient 
if(!callSuccess){
    revert withdrawCallFailed();
}
   

   
    //3 ways to send etherum
    //transfer(2300 gas, throws error)
    //send(2300 gas, returns bool)
    // call(forward all gas or set gas , returns bool)

//Transfer
//     payable(msg.sender).transfer(address(this).balance);
//     //Send
//    bool sendSuccess =  payable(msg.sender).send(address(this).balance);
//    require(sendSuccess,"Send failed");
//   //Call
//   {bool callSucces,bytes ,}= payable(msg.sender).call{value:address.balance}("");
//   require(callSuccess,"Call Failed");

  //solidity-by-example.org/sending-ether/


}



receive () external payable {
    fund();
}

fallback() external payable {
    fund();

}

//chain link data feed or chainlink pricefeed to get external pricing information



// Nonce :tx count for the account
// gas Price : Price per unit of gas (in wei)
//gas limit :max gas that this tx can use around 21k
//to :address that the tx is sent to
//Value: amount of wei to send
// data:What to send to the To address (empty)
//v,r,s:components of tx signature




//receive()

// Enums
// Events
// Try/catch
// function selectors
// abi.encode/decode
//hashing
// yul/ Assumbly
}