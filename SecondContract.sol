pragma solidity ^0.5.1;

contract SecondContract{
    //Person[] public people;
    uint256 public peopleCount;
    address owner;
    uint256 openingTime = 1634999800;
    
    mapping(uint256 => Person) public people;
    
    struct Person{
        uint256 _id;
        string _firstName;
        string _lastName; 
    }
    
    constructor() public{
       // owner = msg.sender;
    }
    
    modifier onlyWhileOpen(){
        require(block.timestamp >= openingTime);
        _;
    }
    
    // modifier onlyOwner(){
    //   require(msg.sender == owner);
    //   _;
    // }
    
    function addPerson(string memory _firstName,string memory _lastName) 
        public //onlyOwner
        onlyWhileOpen{
            increment();
            people[peopleCount] = Person(peopleCount,_firstName,_lastName);
            //people.push(people(_firstName,_lastName));
    }
    
    function increment() internal{
        peopleCount++;
    }
}
