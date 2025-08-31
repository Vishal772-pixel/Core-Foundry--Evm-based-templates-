//SPDX-License-Identifier:MIT

pragma solidity 0.8.18;

import {Test,console} from "../lib/forge-std/src/Test.sol";

import {FundMe} from "../src/FundMe.sol";

contract FundmeTest is Test {
    Fundme fundme;
    // setup always runs first
    function setUp() external {
        FundMe fundMe = new FundMe();


    }

    function testMinimumDollarIsFive() public{
        assertEq(fundMe.MINIMUM_USD(),5e18);   // fundme. lagana padta hai and phir MINIMUM_USD ...5e18 hai ki nahi
        
    }

    function testOwnerIsMsgSender() public {
        // kya msgsend karne wala banda owner hai ? 
        // assertEq(fundme.i_owner(), msg.sender);// fundme . lagana padta hau and phir i_owner ...msg.sender hai ki nahi
        // also we can check ki dono same hai ki nahi is by  below
        console.log(i_owner);
        console.log(msg.sender);
        assertEq(fundMe.i_owner(),address(this));// agar this case passed ..then dono same hai
    }


    function testFund()public{
        console.log(msg.value.getConversionrate());
        console.log(MINIMUM_USD);
        assertEq(fundMe.msg.value.getConversionrate(),MINIMUM_USD)

    }
 

 
    function testPriceFeedVersionIsAccurate() public{
        uint256 version = fundMe.getVersion();
        assertEq(version,4);
    }
}


//  what can we do to work with addresses outside our system?
//  1. Unit - Testing a specific part of our code
//2. testing how our coe works with other parts of our code 
//3. Forked Testing our code on a simulated real enevironement
//4. Staging testing our code in a real environment taht is not prod