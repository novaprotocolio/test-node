# Ethereum test node

[![microbadger](https://images.microbadger.com/badges/image/novaprotocolio/ethereum-test-node.svg)](https://microbadger.com/images/novaprotocolio/ethereum-test-node)
[![Docker Pulls](https://img.shields.io/docker/pulls/novaprotocolio/ethereum-test-node.svg)](https://hub.docker.com/r/novaprotocolio/ethereum-test-node)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/novaprotocolio/ethereum-test-node.svg)](https://hub.docker.com/r/novaprotocolio/ethereum-test-node)
[![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/novaprotocolio/ethereum-test-node.svg)](https://hub.docker.com/r/novaprotocolio/ethereum-test-node)

- Powered by ganache-cli
- [NovaProtocol Contracts 1.1](https://github.com/novaprotocol/protocol) internally integrated

## How to use?

Please install docker first.

novaprotocolio/ethereum-test-node:latest

`docker build -q -t novaprotocolio/ethereum-test-node:latest .`

### Way 1: Use autobuild image

    docker run -it --rm -p 8545:8545 novaprotocolio/ethereum-test-node:latest

### Way2 2: Build from source

    docker run -it --rm -p 8545:8545 $(docker build -q .)

## Available Accounts

Some of them have special usage, see [Special Accounts](#special-accounts) section below.

### Addresses

    (0) 0x6766f3cfd606e1e428747d3364bae65b6f914d56 (~10000 ETH) # Owner Address
    (1) 0x31ebd457b999bf99759602f5ece5aa5033cb56b3 (~10000 ETH) # Test Address 1
    (2) 0x3eb06f432ae8f518a957852aa44776c234b4a84a (~10000 ETH) # Test Address 2
    (3) 0xd088fc0f4d5e68a3bb3d902b276ce45c598f858c (~10000 ETH) # Test Address 3
    (4) 0xc18b25b49f3125915046d6118ef622364cd2835b (~10000 ETH) # Test Address 4
    (5) 0x2e7eddae6a85ad377a958ca70718b673c277a54b (~10000 ETH) # Test Address 5
    (6) 0xe1dddc5026265fb253de1327742b0b0c0b8e1dd1 (~10000 ETH)
    (7) 0x6109d8fdb3104bc329f7fa1d29c6b4a9a4d3f6ac (~10000 ETH)
    (8) 0x126aa4ef50a6e546aa5ecd1eb83c060fb780891a (~10000 ETH) # Market Maker Address
    (9) 0x93388b4efe13b9b18ed480783c05462409851547 (~10000 ETH) # Relayer Address

### Corresponding Private Keys

    (0) 0xdc1dfb1ba0850f1e808eb53e4c83f6a340cc7545e044f0a0f88c0e38dd3fa40d
    (1) 0xb7a0c9d2786fc4dd080ea5d619d36771aeb0c8c26c290afd3451b92ba2b7bc2c
    (2) 0x1c6a05d6d52954b74407a62f000450d0a748d26a7cc3477cd7f8d7c41d4992ce
    (3) 0x0d1472f8bc07877bf06c8f4cfe3ea8a7dcd77f0929b3aab04047004f2318047a
    (4) 0x13442050b433eef764b0409fade4c3cb86521034f2fa8b59e49c6226382ae5b1
    (5) 0xafd4cd91a76745e11f8fd6262997fb20deef0cc3a9f3b9d77c157906b9cf52c6
    (6) 0xfa107bafe7be125d4e4a89fad1217405bdf3aeb2f1f18ccb0df8d35c35ef20d9
    (7) 0x91c689d4ad56feb3b5c8b405bfc711b4dbae75be01936a2490562c480ec4f586
    (8) 0xa6553a3cbade744d6c6f63e557345402abd93e25cd1f1dba8bb0d374de2fcf4f
    (9) 0x95b0a982c0dfc5ab70bf915dcf9f4b790544d25bc5e6cff0f38a59d0bba58651

## HD Wallet

Mnemonic: `diagram range remind capable strategy fragile midnight bunker garage ship predict curtain`

Base HD Path: `m/44'/60'/0'/0/{account_index}`

## Deployed Contracts Addresses

### Proxy:

0x1D52a52f5996FDff37317a34EBFbeC7345Be3b55

### HybridExchange v1.1:

0x7aCf426255a3DEbe19f664341De77e361e1F79db

### Nova Token:

0x224E34A640FC4108FABDb201eD85D909059105fA

### WETH Token:

0x7Cb242e4f8EE3FE4F1f244209c05B794F192353E

## Special Accounts

### Owner Address

Address: `0x6766f3cfd606e1e428747d3364bae65b6f914d56`

Private Key: `0xdc1dfb1ba0850f1e808eb53e4c83f6a340cc7545e044f0a0f88c0e38dd3fa40d`

- Proxy Owner
- HybridExchagne Owner
- Tokens contract creator
- All left ERC20 Coins belong to this address

### Relayer Address

Address: `0x93388b4efe13b9b18ed480783c05462409851547`

Private Key: `0x95b0a982c0dfc5ab70bf915dcf9f4b790544d25bc5e6cff0f38a59d0bba58651`

- Relayer Address
- Have approved all coins

### Market Maker Address

Address: `0x126aa4ef50a6e546aa5ecd1eb83c060fb780891a`

Private Key: `0xa6553a3cbade744d6c6f63e557345402abd93e25cd1f1dba8bb0d374de2fcf4f`

- Maker Address
- Have 100000 HOT Token
- Have 100000 USD Token
- Have 1000 WETH
- Have approved all coins

### Test Addresses

Please see Available Accounts. All addresses with index from 1 to 5.

- Have 100000 HOT
- Have 100000 USD COIN
- Have 1000 WETH
- Have approved all coins
