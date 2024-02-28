
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SauravToken is ERC20, Ownable {
    constructor(string memory name, string memory symbol) 
    ERC20(name, symbol) 
    Ownable(msg.sender) {
          _mint(msg.sender, 10 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) external onlyOwner {
        assert(amount > 0 );
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        require(amount>0 , "amount should be greater than 0");
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public override returns (bool) {
        _transfer(from, to, amount);
        return true;
    }
}
