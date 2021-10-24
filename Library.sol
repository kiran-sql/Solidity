pragma solidity ^0.5.1;

import "./Math.sol";

contract Token {
    uint256 public value;
    using Math for uint256;

    function calculate(uint256 _value1, uint256 _value2) public {
        value = _value1.divide(_value2);
    }
}
