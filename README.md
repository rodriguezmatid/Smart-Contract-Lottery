Forge init
initialize a new project
Forge build
Compile the contracts

# Probably random raffle contracts
## About
This code is to create a probability random smart contract lottery

1. Users can enter by paying for a ticket
    The ticket fees are going to go to the winner during the draw
2. After X period of time, the lottery will automatically draw a winner
    And this will be done programatically
3. Using chainlink VRF and chainlink automation
    1. Chainlink VRF -> Randomless
    2. Chainlink automation -> Time Based trigger

## Test!
1. Write some deploy scripts
2. Write our tests
    1. Work on a local chain
    2. Forked Testnet
    3. Forked Mainnet