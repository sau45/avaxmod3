# SauravToken

SauravToken is an ERC-20 token implemented in Solidity. It inherits from OpenZeppelin's ERC20 and Ownable contracts, allowing for standard token functionality and ownership control.

## Overview

- **Contract Name:** SauravToken

## Features

1. **Token Creation:** SauravToken is created with an initial supply of 10 tokens, minted to the contract deployer.

2. **Minting:** Only the owner of the contract (presumably the deployer) can mint additional tokens.

3. **Burning:** Token holders can burn their own tokens, reducing the total supply.

4. **Transfer:** Standard ERC-20 transfer and transferFrom functions are implemented.
