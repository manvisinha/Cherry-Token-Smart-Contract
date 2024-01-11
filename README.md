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

## Usage

### Minting Tokens
To mint new Cherry Tokens, call the `mint` function, specifying the recipient's address and the desired amount of tokens.

```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount); 
}
```

### Burning Tokens
Token holders can burn their Cherry Tokens by calling the `burn` function, specifying the amount of tokens to be burned.

```solidity
function burn(uint256 burnamt) public virtual override {
    _burn(msg.sender, burnamt);
}
```

### Transferring Tokens
Cherry Tokens can be transferred using the standard ERC-20 `transfer` function.

```solidity
function transfer(address transfer_to, uint256 transfer_amount) public virtual override returns(bool) {
    _transfer(msg.sender, transfer_to, transfer_amount);
    return true;
}
```

# Author
Manvi Sinha
[@sinhamanvi17@gmail.com]

## License
This smart contract is licensed under the MIT License.
