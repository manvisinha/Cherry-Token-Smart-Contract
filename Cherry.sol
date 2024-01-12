// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract Cherry is ERC20, ERC20Burnable, Ownable, ERC20Permit {
constructor(address initialOwner)
    ERC20("Cherry Token", "CH")
    Ownable(initialOwner)
    ERC20Permit("Cherry Token")
{

/**
 * @dev Mint new Cherry Tokens.
 * @param to The recipient's address.
 * @param amount The desired amount of tokens.
 */
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}

/**
 * @dev Burn Cherry Tokens.
 * @param burnamt The amount of tokens to be burned.
 */
function burn(uint256 burnamt) public virtual override {
    _burn(msg.sender, burnamt);
}

/**
 * @dev Transfer Cherry Tokens.
 * @param transfer_to The recipient's address.
 * @param transfer_amount The amount of tokens to be transferred.
 * @return A boolean indicating the success of the transfer.
 */
function transfer(address transfer_to, uint256 transfer_amount) public virtual override returns(bool) {
    _transfer(msg.sender, transfer_to, transfer_amount);
    return true;
} 
}
