pragma solidity ^0.4.2;

import "./DappToken.sol";

contract DappTokenSale{
    address admin;
    DappToken public tokenContract;
    constructor(DappToken _tokenContract) public {
        // Assign Admin
        admin = msg.sender;
        tokenContract = _tokenContract;
        // Token contract 

        // Token Price

    }
} 