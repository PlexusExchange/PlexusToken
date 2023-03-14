// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Plexus is ERC20("Plexus", "PLX"), Ownable {
    
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    constructor() public {
        uint256 initSupply = 5 * (10**8) * (10**18);
        _mint(owner(), initSupply);
    }
}