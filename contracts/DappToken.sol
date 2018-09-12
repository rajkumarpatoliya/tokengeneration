pragma solidity ^0.4.2;

contract DappToken {
    // constructor 
    // Set total number of tokens
    // Read total number of tokens
    event Transfer (
        address indexed _from,
        address indexed _to,
        uint256 _value
    );
    // Name
    string public name = "DApp Token";
    // Symbol
    string public symbol = "DAPP";
    // Standard
    string public standard = "DApp Token v1.0";
    // Total supply of token
    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    function DappToken (uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
    }

    // Transfer
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Account balance is less then transaction amount");
        // Transfer the balance
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        Transfer(msg.sender, _to, _value);

        // Return boolean value
        return true;

    }
}