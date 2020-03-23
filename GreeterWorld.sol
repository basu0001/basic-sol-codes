pragma solidity ^0.5.9; 

contract GreeterWorld {
    string public yourName;

    constructor() public {
        yourName = "World";
    }

    function set(string memory name) public {
        yourName = name;
    }

    function hello() view public returns (string memory) {
        return yourName;
    }
}
