# Cherry Token Smart Contract

Cherry Token(CH) is a decentralized ERC-20 token built on the Ethereum blockchain. It incorporates features such as burning, minting, and permit functionality, making it a versatile and secure token for various use cases. This smart contract is developed with transparency and community governance in mind.

## Features

### 1. Minting
The Cherry Token allows for the minting of new tokens, providing flexibility for the token supply. Minting can only be performed by the owner of the contract, ensuring a controlled and secure token issuance process.

### 2. Burning
Token holders have the ability to burn their Cherry Tokens, reducing the total supply. This feature can be useful for various scenarios, such as controlling inflation or implementing a deflationary mechanism.

### 3. Ownership
The smart contract incorporates the Ownable pattern, allowing the owner to execute specific functions like minting and managing contract upgrades. This ensures a clear and manageable ownership structure.

### 4. Permit Functionality
Cherry Token implements the ERC-20 Permit extension, enabling gasless transactions by allowing users to sign a permit for a specific amount, allowing others to execute transactions on their behalf. This enhances user experience and reduces transaction costs.

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
