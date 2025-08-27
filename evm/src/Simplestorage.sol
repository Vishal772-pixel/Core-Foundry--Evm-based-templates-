//Starting with Learning foundry
//SPDX-License-Identifier:MIT

pragma solidity 0.8.18;

contract SimpleStorage{
    uint256 favouriteNumber;


    struct Person{
        uint256 favouriteNumber;
        string name;

    }

    Person[] public listOfPeople;
    mapping (string=>uint256)public nameTofavouriteNumber;



    function store(uint256 _favouriteNumber)public{
        myFavoriteNumber=_favouriteNumber;
        function store (uint _favouriteNumber) public{
            favouriteNumber=_favouriteNumber

    }

    function retrieve()public view returns (uint256){
        listOfpeople.push(Person(_favouriteNumber,_name));


        //mapping in such a way ki ek daalo toh dusra mil jaye 
        nameToFavouriteNumber[_name]=_favouriteNumber;
    }
}