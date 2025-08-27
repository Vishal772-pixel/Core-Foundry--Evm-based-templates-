//SPDX-License-Identifier:MIT

pragma solidity 0.5.11;


import {Test,console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol" ;

contract FundmeTest is Test {
    Fundme fundme;
    
    function setUp() external {
        FundMe fundMe = new FundMe();


    }

    function testMinimumDollarIsFive() public{
        assertEq(fundme.MINIMUM_USD(),5e18);   // fundme. lagana padta hai and phir MINIMUM_USD ...5e18 hai ki nahi
        
    }

    function testOwnerIsMsgSender() public {
        // assertEq(fundme.i_owner(), msg.sender);// fundme . lagana padta hau and phir i_owner ...msg.sender hai ki nahi
        // also we can check ki dono same hai ki nahi is by  below
        console.log(i_owner);
        console.log(msg.sender);
        assertEq(fundMe.i-owner(),address(this));// agar this case passed ..then dono same hai
    }
}
