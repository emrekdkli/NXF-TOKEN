// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NXFToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("NXF Token", "NXF") {
        _mint(msg.sender, initialSupply);
    }

    /// @notice Opsiyonel: daha sonra yeni token basmak istersen
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    /// @notice Opsiyonel: token yakmak istersen
    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
