pragma solidity ^0.5.9; 

contract Mortal {
    address payable owner;

    constructor() public {
        owner = msg.sender;
    }

    function kill() public {
        if (msg.sender == owner) selfdestruct(owner);
    }
}

contract Greeter is Mortal {
    string greeting;

    constructor(string memory _greeting) public {
        greeting = _greeting;
    }

    function greet() view public returns (string memory) {
        return greeting;
    }
}
