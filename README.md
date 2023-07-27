# Error Handling in Solidity

ExampleContract is a simple Solidity smart contract that allows users to deposit and withdraw funds. The contract demonstrates the use of `require()`, `assert()`, and `revert()` functions to ensure secure and reliable execution of operations.

## Getting Started

To use or deploy this contract, you'll need a development environment with Solidity compiler and a suitable Ethereum development framework like Truffle or Remix.

### Prerequisites

- Solidity Compiler: Make sure you have a Solidity compiler version that is compatible with the contract (e.g., ^0.8.0).
- Ethereum Development Framework: Install and set up an Ethereum development framework like Truffle, Remix, or any other of your choice.

### Contract Details
The contract includes the following functions:

deposit(uint256 amount) external
Allows users to deposit funds into the contract. The function requires the amount parameter to be greater than zero. The deposited amount will be added to the contract's balance.

withdraw(uint256 amount) external
Allows users to withdraw funds from the contract. The function requires the amount parameter not to exceed the contract's current balance. If the amount is zero, the function will revert with a custom error message.

### Safety Measures
The contract uses the following safety measures to prevent common issues:

- require(): Ensures that certain conditions are met before executing a transaction. It provides meaningful error messages to users in case of failure.
- assert(): Checks for internal errors that should never occur. If an internal error is detected, the transaction will be reverted.
- revert(): Used to explicitly revert the transaction with custom error messages for specific error cases.
