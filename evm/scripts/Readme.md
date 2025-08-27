5Install Foundry with

curl -L https://foundry.paradigm.xyz|bash


Check whether foundry is install or not 
foundry up


forge create --help
forge create Simple storage --rpc-url


For Deployment Related
run anvil in terminal




command to convert hex into decimel

cast --to-base 0x714c2 dec


cast --help



private key safety =>


run command 
source .env ( it will help our command line to get about entities in .env(can access too)

echo PRIVATE_KEY(it will show your private key )

echo RPC_URL( it will show your Rpc url in command line)


so the command to run the scripts changes to 

forge script/DeploySimpleStorage.sol --rpc url $RPC_URL --broadcast --private-key $PRIVATE_KEY

More security 
1.keystore files( search and get about it)
2.Ethsign (search and get about it)


// encrypt private key ..and then use
run the command 
cast wallet import defaultKey --interactive

after adding private key and password..


forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url https://localhost:8545 --account defaultKey --sender 0x(senders address) --broadcast -vvvv


// Interacting with smart cotractvwitj CLI

cast --help
cast send --help


// command to store value 
cast send 0x(address)"store(uint256)"123 --rpc-url $RPC_URL --private-key $PRIVATE_KEY

here 123 is a amount 

cast call --help(it calls the function ..just like blue buttons in remix)


// suppose command for retrieve function 

cast call 0x(address) "retrieve()"

it will give a hex code

cast --to-base 0x(hexcode) dec 123


here 123 is a amount to be stored



// Deploying contract to test net sepolia 

