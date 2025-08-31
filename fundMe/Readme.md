//  what can we do to work with addresses outside our system?
//  1. Unit - Testing a specific part of our code
//2. testing how our coe works with other parts of our code 
//3. Forked Testing our code on a simulated real enevironement
//4. Staging testing our code in a real environment taht is not prod


Unit testing
forge test --m testPriceFeedVersionIsAccurate 
-vvv --fork-url $RPC_URL