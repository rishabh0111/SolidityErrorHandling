# Error Handling in Solidity

This Solidity smart contract is designed to demonstrate basic validation and error handling techniques. It includes functions to update a stored value, while ensuring that certain conditions are met.


## Getting Started

To use or deploy this contract, you'll need a development environment with Solidity compiler and a suitable Ethereum development framework like Truffle or Remix.

### Prerequisites

- Solidity Compiler: Make sure you have a Solidity compiler version that is compatible with the contract (e.g., ^0.8.0).
- Ethereum Development Framework: Install and set up an Ethereum development framework like Truffle, Remix, or any other of your choice.

## Contract Overview

The `SimpleValidationContract` is a basic Ethereum smart contract that allows the owner to update a stored value. It demonstrates the usage of `require()`, `assert()`, and `revert()` statements for input validation, invariant checking, and custom error handling.

### Contract Variables

- `owner`: This is the address of the contract owner, set during contract deployment.
- `value`: A public unsigned integer variable initialized to 10, representing the stored value.

### Events

- `ValueUpdated(uint256 newValue)`: An event emitted whenever the `value` is successfully updated. It includes the new value as an argument.

### Constructor

The constructor of the contract initializes the `owner` address to the address of the sender who deploys the contract.

### Functions

- `updateValue(uint256 newValue) external`: This function allows the contract owner to update the `value` with the provided `newValue`. It includes the following validation steps:
  - It uses `require()` to ensure that the `newValue` is greater than zero.
  - It uses `assert()` to verify that the sender is the owner of the contract.
  - It uses `revert()` to provide a custom error message if `newValue` exceeds 100.
  If all validation checks pass, the `value` is updated, and the `ValueUpdated` event is emitted.

## Usage

1. Deploy the contract to the Ethereum network.
2. The `owner` of the contract can call the `updateValue(uint256 newValue)` function to update the stored `value`.
3. The function will perform input validation and revert the transaction if any of the validation conditions fail.
4. The contract emits the `ValueUpdated` event when the `value` is successfully updated.

