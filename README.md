# Voting Contract

This is a simple Ethereum smart contract written in Vyper that allows users to vote for candidates. The contract provides basic functionalities for casting votes and retrieving vote counts.

## Features

- Cast votes for candidates
- Retrieve the number of votes for a candidate
- Emits events when votes are cast

## Prerequisites

To work with this contract, you need the following:

- **Python**: Ensure Python 3.x is installed.
- **Vyper**: The Vyper compiler for compiling Vyper smart contracts.

## Getting Started

### Installation

1. **Install Vyper**:
   You can install Vyper using pip:
```bash
   pip install vyper
```
## Compile the Contract
1. Save the contract code in a file named Voting.vy.
2. Compile the Vyper contract to EVM bytecode using the Vyper compiler:

```bash
vyper Voting.vy -f json > Voting.json
```
## Deploy the Contract
Deploy the compiled contract using a tool like Remix IDE, Truffle, or directly with a web3 library such as web3.py. Here’s a brief guide for deployment using Remix IDE:
1. Open Remix IDE.
2. Create a new file and paste the contract code into it.
3. Select the Vyper compiler from the compiler tab and compile the contract.
4. Deploy the contract using the `Deploy` button in the Deploy & Run Transactions tab.

## Interact with the Contract
Once deployed, you can interact with the contract using the provided functions:

1. Cast a Vote:
Call the vote function with the candidate's name:
```
vote("Alice")
```
2. Get Votes for a Candidate:
Call the get_votes function with the candidate's name:

```
get_votes("Alice")
```
