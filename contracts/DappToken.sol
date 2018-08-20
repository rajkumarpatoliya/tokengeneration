pragma solidity ^0.4.2;

contract DappToken {
    // constructor 
    // Set total number of tokens
    // Read total number of tokens
    uint256 public totalSupply;
    function DappToken () public {
        totalSupply = 1000000;
    }
}