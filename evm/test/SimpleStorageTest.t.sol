//SPDX-License-Identifier:MIT

pragma solidity 0.8.18;
import {DeploySimpleStorage}from "../scripts/DeploySimpleStorage.s.sol";
import{SimpleStorage}from "../src/SimpleStorage.sol";
import{Test}from "forge-std/Test.sol";



contract SimpleStorageTest is Test{
    SimpleStorage public simpleStorage;


    function setUp() external{

        DeploySimpleStorage deployer=new DeloySimpleStorage();
        simpleStorage=deployer.run();

    }

    function testStoreNumber()  public {

    //Arrange
    // src/SimpleStorage.sol mai store function favourite number input le raha hai wahi daala hai 
    uint256 expectedFavouriteNumber=777;


    //Act
    simpleStorage.store(expectedFavouriteNumber);

    //Assert.. use to test the function 
    assert(expectedFavouriteNumber==simpleStorage.retrieve());



    }





    function testCreatePerson()public{

        //Arrange
        string memory name="john";
        uint256 expectedNumber=25;


        //Act 
        simpleStorage.addPerson(expectedNumber,name);

        //Assert
        uint256 retreievedNumber=simpleStorage.nameToFavouriteNumber(name);
        assert(retreievedNumber==expectedNumber);



    }
}