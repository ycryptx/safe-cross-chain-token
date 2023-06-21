RPC=${GOERLI_RPC_URL} 

.PHONY: # ignore

help:
	@perl -nle'print $& if m{^[a-zA-Z_-]+:.*?## .*$$}' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

local-testnet-deploy-native-token: # deploy native token to Anvil local testnet  (you might need to run `source .env` before calling this)
	forge script script/CustomMintableToken.s.sol:NativeTokenScript --fork-url http://localhost:8545 --broadcast

local-testnet-deploy-mock-xOIL-token: # deploy mock xOIL Anvil local testnet  (you might need to run `source .env` before calling this)
	forge script script/CustomMintableToken.s.sol:MockXOilTokenScript --fork-url http://localhost:8545 --broadcast

local-testnet-deploy-xOilSwap-contract: # deploy xOilSwap contract (you might need to run `source .env` before calling this, and ensure you update the script file with the correct token addresses)
		forge script script/XOilSwap.s.sol:XOilSwapScript --fork-url http://localhost:8545 --broadcast