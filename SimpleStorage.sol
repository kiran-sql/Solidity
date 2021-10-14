//SPDX=License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage{
    //this will get initialized to 0
    uint256 favouriteNumber;
    bool favouriteBool = true;
    // string favouriteString = "string";
    // int256 favouriteInt = -4;
    // address favouriteAddress = 0x3254neuvnuu429gh8958ut0509;
    // bytes32 favouriteByte = "cat";
    
    //   ***like an object***
    struct People {
        string name;
        uint256 favNum;
    }
    
    //People public person = People({favNum:6, name:"kiran"});
    
    // ***array in solidty***
    People[] public people;
    
    // ***mapping***
    // mapping takes a key and gives the value of the variable with which it is mapped
    mapping(string => uint256) public nameToFavNum;
    
    function store(uint256 _favouriteNumber) public{
        favouriteNumber = _favouriteNumber;
    }
    function retrieve() public view returns(uint256){
        return favouriteNumber;
    }
    function addPerson(string memory _name , uint256 _favNum) public {
        people.push(People(_name, _favNum));
        nameToFavNum[_name] = _favNum;
    }
}


//type of functions
// view - read from the blockchain
// pure - this function does some type of mathematical calculation only and does not stores it
//does not changes the state of the blockchain

//type of store - memory or storage
//memory - only be stored during execution delete after execution
//for string it should be memory
// storage - value will be there even after function is executed

