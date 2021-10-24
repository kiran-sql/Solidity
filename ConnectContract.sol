pragma solidity ^0.5.1;

contract ERC20Token{
    string public name;
    mapping(address => uint256) public balances;
    
    function mint() public {
        //tx.origin => who originated the transaction
        balances[tx.origin] ++;
    }
}

contract Token{
    //wallet to add ether
    address payable wallet;
    address token;
    
    constructor(address payable _wallet,address _token) public{
        wallet = _wallet;
        token = _token;
    }
    
    function fallback() external payable{
        buyToken();
    }
    
    function buyToken() public payable{
        ERC20Token(address(token)).mint();
        wallet.transfer(msg.value);
    }
}