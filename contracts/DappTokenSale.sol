pragma solidity ^0.4.2;

import "./DappToken.sol";

contract DappTokenSale{
    address admin;
    DappToken public tokenContract;
    uint256 public tokenPrice;

    constructor(DappToken _tokenContract, uint256 _tokenPrice) public {
        // Assign Admin
        admin = msg.sender;
        // Token contract 
        tokenContract = _tokenContract;
        // Token Price
        tokenPrice = _tokenPrice;
    }
} 