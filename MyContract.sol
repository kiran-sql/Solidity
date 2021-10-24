pragma solidity ^0.5.1;

contract MyContract {
    enum State{Waiting, Ready, Active}
    State public state;
    
    constructor() public{
        state = State.Waiting;
    }
    
    function activate() public{
        state = State.Active;
    }
    
    function ready() public{
        state = State.Ready;
    }
    
    function isActive() public view returns(bool){
        return state == State.Active;
    }
    
    function isReady() public view returns(bool){
        return state == State.Ready;
    }
    
    function isWaiting() public view returns(bool){
        return state == State.Waiting;
    }
}
