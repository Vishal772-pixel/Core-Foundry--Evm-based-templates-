//SPDX-License-Identifier:MIT
pragma solidity ^0.8.25



library PriceConverter{
    function convertAmount(){
        
    }
}

contract FundMe{

/*  Errors */
error FundMe_needMoreUsd();

   uint256 public constant MINIMUM_USD = 5eth;
   address immutable i_owner;
  uint256 public s_totalAmount;
  address[] private s_funders ;

//mapping
mapping(uint256 MINIMUM_USD => address s_funders) public s_amountToAddress;


  modifiers{

  }

  constructor{

  }

  function funds public payable (uint256 MINIMUM_USD, address i_owner){
    // require(msg.value.convertedAmount>=MINIMUM_USD,needMoreUsd());
     msg.value.convertAmount();
    // condition laga di 
    if(msg.value.convertAmount()<MINIMUM_USD){
        revert(needMoreUsd());
        s_funders.push(msg.sender);
        mapping(uint256 s_MINIMUM_USD=> address s_funders) public s_amountToAddress;


      

    }



    function withdraw() owner {}
  }

  




}