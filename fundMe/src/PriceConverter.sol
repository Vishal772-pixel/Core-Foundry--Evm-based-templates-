
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;


library PriceConverter{
    import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";



    function getPrice() internal view returns(uint256){
    // to get latest price of anything from chainlink
    //https://docs.chain.link/data-feed/price-feeds/addresses
    AggregatorV3Interface priceFeed = AggregatorV3Interface(0x5eFA2952593dc7658F1E5e04E6D455f314086495);
    // (uint256 roundId,uint256 price, uint256 startedAt, uint256 timestamps,uint80 answeredInRound)= priceFeed.latestRoundData();
        (,int256 price, , ,)= priceFeed.latestRoundData();
return  uint256 price * 1e10;// added a typecaster here

}
function getConversionRate(uint256 ethAmount) internal view  returns(uint256){
    // 1 ETh ?
    // 2000_000000000000000000
    uint256 ethPrice = getPrice();
    // (2000__00000000000000000 * 1_000000000000000000)/ 1e18
    uint256 ethAmountInUsd = (ethPrice * ethamount)/1e18;
    // so we will get 2000$ = 1 eth
    return ethAmountInUsd;
}

function getVersion() internal view returns(uint256){
    return AggregatorV3Interface(0x5eFA2952593dc7658F1E5e04E6D455f314086495).version();
}

}