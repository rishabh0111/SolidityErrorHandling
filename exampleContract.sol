// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleValidationContract {
    address public owner;
    uint256 public value = 10;

    event ValueUpdated(uint256 newValue);

    constructor() {
        owner = msg.sender;
    }

    function updateValue(uint256 newValue) external {
        // Use require() to validate input
        require(newValue > 0, "Value must be greater than zero");
 
        // Use assert() to check for invariants
        assert(msg.sender == owner);

        // Use revert() to provide custom error message
        if (newValue > 100) {
            revert("Value cannot exceed 100");
        }

        value = newValue;
        emit ValueUpdated(newValue);
    }
}
