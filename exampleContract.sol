
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ExampleContract {
    uint256 public balance;

    function deposit(uint256 amount) external {
        // Use require() to check for conditions that users must satisfy.
        // In this example, we require the deposit amount to be greater than zero.
        require(amount > 0, "Amount must be greater than zero");

        // Use assert() to check for internal errors that should never occur.
        // In this example, we assert that the contract's balance after the deposit will not overflow.
        assert(balance + amount >= balance);

        // Perform the deposit.
        balance += amount;
    }

    function withdraw(uint256 amount) external {
        // Use require() to check for conditions that users must satisfy.
        // In this example, we require the withdraw amount not to exceed the contract's balance.
        require(amount <= balance, "Insufficient balance");

        // Use revert() to handle various error cases explicitly.
        // In this example, we revert if the withdraw amount is zero.
        if (amount == 0) {
            revert("Withdraw amount must be greater than zero");
        }

        // Perform the withdraw.
        balance -= amount;
    }
}
