pragma solidity ^0.5.1;

library Math {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    function subtract(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0);
        return a / b;
    }
}
