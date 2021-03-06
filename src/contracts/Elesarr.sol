pragma solidity ^0.5.1;

contract Elesarr{
    //constructor
    // set the total number of tokens
    /// read the total number of tokens
    // keep track of the balance of each account
    uint256 public totalSupply;
    string public name;
    string public symbol;
    string public standard="Goody Token v1.0";
    mapping(address => uint256) public balanceOf;

   // allowance

   // transferFrom event
    event Transfer(address indexed _from,address indexed _to, uint256 _value);

    constructor(uint256 _totalSupply,string memory _name,string memory _symb) public{
        name=_name;
        symbol =_symb;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }

    function transfer(
            address  _to,
            uint256 _value) public returns(bool success){
                require(balanceOf[msg.sender] >= _value, "NOT ENOUGH TOKEN");
                balanceOf[msg.sender] -= _value;
                balanceOf[_to] += _value;
                emit Transfer(msg.sender,_to, _value);
            }
    function aprove(address _spender, uint256 _value) public returns(bool success){
       
    }
    // approve function
    // transferFrom function
 
}