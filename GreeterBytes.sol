pragma solidity ^0.5.9; 

contract GreeterBytes {
    bytes32 public yourName;

    constructor() public {
        yourName = "World";
    }

    function set(bytes32 name) public {
        yourName = name;
    }

    function hello() view public returns (bytes32) {
        return yourName;
    }
}
