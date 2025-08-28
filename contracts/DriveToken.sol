// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract DriveToken is ERC20, ERC20Burnable {
    uint256 private constant TOTAL_SUPPLY = 369_000_000 * 10**18; // 369M tokens with 18 decimals
    
    constructor(address initialOwner) ERC20("Drive369", "DRIVE") {
        _mint(initialOwner, TOTAL_SUPPLY);
    }
    
    function decimals() public pure override returns (uint8) {
        return 18;
    }
}