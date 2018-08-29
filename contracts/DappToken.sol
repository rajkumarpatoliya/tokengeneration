pragma solidity ^0.4.2;

contract DappToken {
    // constructor 
    // Set total number of tokens
    // Read total number of tokens
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    function DappToken (uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        //allocate initial supply
    }
}