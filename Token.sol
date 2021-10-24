pragma solidity ^0.5.1;

contract Token{
    //for token
    mapping(address => uint256) public balances;
    
    //wallet to add ether
    address payable wallet;
    
    //listen to an event in smart contract
    //event Purchase(address indexed _buyer, uint256 _amount);
    
    constructor(address payable _wallet) public{
        wallet = _wallet;
    }
    
    function fallback() external payable{
        buyToken();
    }
    
    function buyToken() public payable{
        //buy a token
         balances[msg.sender] ++;
         
        //add ether to wallet
        wallet.transfer(msg.value);
        
        //emit Purchase(msg.sender,1);
    }
}

//payable => accept ether
//public => so that someone can call the function inside and outside the smart contract
//external => can be called only outside the smart contract
