# Cherry Token Smart Contract

Cherry Token(CH) is an ERC-20 token on the Ethereum blockchain that's not controlled by any single entity. It has built-in features like burning (reducing the number of tokens), minting (creating new tokens), and permit functionality (allowing transactions without directly spending gas). 

## Features

### 1. Minting
Cherry Token allows you to create more tokens, allowing you to easily control how many tokens there are. Only the owner of the contract is allowed to do this, ensuring safe and effectively-managed process for issuing tokens.

### 2. Burning
People who own the tokens can delete some of them, which reduces the total number of tokens. This comes off as useful when we want to manage the number of tokens.

### 3. Ownership
The majority control of this special contract is with the owner, like creating new tokens and working on the improvement of the contract. This helps in having a manageable ownership. 

### 4. Permit Functionality
Cherry Token smoothly adds a feature called ERC-20 Permit, making transactions possible without using gas. People can sign permissions for certain amounts, letting others make transactions for them. This not only makes it easier for users but also reduces transaction costs.

## Getting Started

To deploy your own instance of the Cherry Token, follow these steps:

1. Clone the repository to your local machine.
2. Install the necessary dependencies using `npm install`.
3. Deploy the smart contract on the Ethereum blockchain of your choice.

## Functionality
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
### - Minting Tokens
To make new Cherry Tokens, just use the "mint" function. Tell the contract where to send the tokens (recipient's address) and how many you want to create (desired amount).

### - Burning Tokens
If you own some Cherry Tokens and want fewer of them around, you can use the "burn" function. Just call it and say how many tokens you want to get rid of (burnamt).

### - Transferring Tokens
To send Cherry Tokens to someone else, use the "transfer" function. Tell the contract where to send the tokens (recipient's address or "transfer_to") and how many you want to send (amount or "transfer_amount").


# Author
Manvi Sinha
[@sinhamanvi17@gmail.com]

## License
This smart contract is licensed under the MIT License.
