-include .env

.PHONY: all test deploy

help:
	@echo "Useage:"
	@echo "make deploy [ARGS= ...]"

build:; forge build

install:; forge install chainaccelorg/foundry-devops@0.0.11 --no-commit && forge install smartcontractkit/chainlink-brownie-contracts@0.6.1 --no-commit && forge install foundry-rs/forge-std@v1.5.3 --no-commit && forge install transmissions11/solmate@v6 --no-commit

test:; forge test


ifeq($findstring --network sepolia, $(ARGS)), --network sepolia)
	NETWORK_ARGS := --rpc-url $(SEPOLIA_RPC_URL) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv
endif

anvil:
	anvil :; anvil -m 'test test test test test test test test test test test junk' --steps-tracing --block-time 1

deploy:
	forge script script/DeployRaffle.s.sol:DeployRaffle $(NETWORK_ARGS)