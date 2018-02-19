# Ethereum Playground

## Goals

- Setup a private Ethereum network
- Build a Smart Contract with Solidity compiler
- Deploy contract to private network
- Interact with the contract using `web3.js`

## Setup

### Install Ethereum and Solidity

Install Ethereum:

```
brew tap ethereum/ethereum
brew install ethereum
```

Install Solidity:

```
brew update
brew upgrade
brew tap ethereum/ethereum
brew install solidity
brew linkapps solidity
```

### Setup a private Ethereum network

I've created a Makefile to simplify the proccess of get Ethereum running. You can take a look at the Makefile to see the commands.

#### Create a new Ethereum account
First run the following command to create a new local account:

```
make account
```
This command will generate a diretory `./data` with the account data.

Copy the addres for the new generated account.

#### Update de genesis file

Open the genesis file located in `config/genesis.json` and replace with the address in the `alloc` section of your new account address.

#### Create a password file

Create `password.txt` file inside the `config` diretory with the raw password for your create account.

#### Update the mine command in `Makefile`

In the `mine` command inside the Makefile update the `--unlock` param with your new account address.

### Initialize your private blockchain

Run the command to initialize your blockchain inside the `./data` diretory.

```
make init
```

### Start mining

Initialize the minning proccess
```
make mine
```

### Attach a console

Run this command in a new terminal window to initialize the Ethereum console:

```
make attach
```

Now you can interacte with your private blockchain.

## Running the `GetSet` contract

First compile the contact:

```
make contracts
```

TODO...