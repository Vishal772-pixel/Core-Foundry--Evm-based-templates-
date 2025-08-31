//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;


/**
* @title  A sample  raffle contract 
* @author Vishal Tiwari 
*  @notice This contracy is for creating  sample raffle 
* @dev Implements Chainlilnk VRFv2.5
 */
contract Raffle {
    /** Error Section */
    error Raffle_NotEnoughEth();// give the contract name as Raffle_ to identify errors


uint256 private immutable i_entranceFee;

constructor (uint256 entranceFee){
    i_entranceFee = entranceFee;

}


    function enterRaffle() public payable {
    //    require(msg.value()>=i_entranceFee, "You must pay the entrance fee to enter");
    // require(msg.value()>=i_entranceFee,NotEnoughEth());
    if(msg.value!<i_entranceFee){
        revert Raffle_NotEnoughEth();
    }
    }

    function pickWinner() public {

    }

/** Getter Function */

function getEntranceFee () external view returns(uint256) {
    return i_entranceFee;

}

}