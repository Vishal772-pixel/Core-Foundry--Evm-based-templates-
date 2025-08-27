foundry -zksync
--zksync

github :https://github.com/matter-labs/foundry-zksync

./install-foundry-zksync

forge  test --zksync --vvvv

forge fmt // to format our code 
forge build --zksync 

we can verify or interct with contract on sepolia.etherscan.io/verifyContract


installing foundry zksync 

curl -L https://raw.githubusercontent.com/matter-labs/foundry-zksync/main/install-foundry-zksync | bash


then run 
anvil-zksync


if got error or not installed it means u have to set up the path and be done by below command 

find /root -type f -name "anvil-zksync" 2>/dev/null


after this run below command 

echo 'export PATH="$HOME/.foundry/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc


then run 
which anvil-zksync

if it returns 
/root/.foundry/bin/anvil-zksync

congrats its done ...run below command to get started 
anvil-zksync

RPC_URL =  Listening on 0.0.0.0:8011




// docker 

docker --version

docker ps
sudo systemctl start docker 
'' ''' '''      stop          '' 




//zksync cli 

npx zksync-cli dev config


docker ps
npx zksync-cli dev start 





deploy the contrect in zksync




forge  --version
forge create Simplestorage --rpc-url https://127.0.0.1:8011 --private-key 0x7359874y69857695 --legacy --zksync



forge create src/SimpleStorage:SimpleStorage.sol:SimpleStorage --rpc-url https://127.0.0.1:8011 --private-key 0x7359874y69857695 --legacy --zksync
