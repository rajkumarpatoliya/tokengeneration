pragma solidity ^0.4.2;

import "./DappToken.sol";

contract DappTokenSale{
    address admin;
    DappToken public tokenContract;
    uint256 public tokenPrice;
    uint256 public tokensSold;

    event Sell(address _buyer, uint256 _amount);

    constructor(DappToken _tokenContract, uint256 _tokenPrice) public {
        // Assign Admin
        admin = msg.sender;
        // Token contract 
        tokenContract = _tokenContract;
        // Token Price
        tokenPrice = _tokenPrice;
    }
    // Multiply method
    function multiply(uint x, uint y) internal pure returns (uint z) {
        require(y==0 || (z = x*y ) / y == x, "multiplying the numberOfTokens with tokenPrice");
    }
    // Buy tokens
    function buyTokens(uint256 _numberOfTokens) public payable{
        // Require that value is equal to tokens
        require(msg.value == multiply(_numberOfTokens, tokenPrice), "Require the value is equal to Token");
        // Require that contract has enough tokens
        require(tokenContract.balanceOf(this) >= _numberOfTokens, "Checking that contract has enough tokens");
        // Require that transaction is successful
        require(tokenContract.transfer(msg.sender, _numberOfTokens), "Transaction must be successful");
        // Keep track of tokensSold
        tokensSold += _numberOfTokens;
        // Trigger sell event
        emit Sell(msg.sender, _numberOfTokens);
    }
} 