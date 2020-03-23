pragma solidity ^0.5.9; 

contract FundRaise {

    address payable public owner;
    bool paused;

    // modifiers
    modifier onlyOwner() {
        require(owner == msg.sender);
        _;
    }
   

    modifier whenNotPaused() {
        require(!paused);
        _;
    }

    // @dev constructor function. Sets contract owner

    constructor() public {
        owner = msg.sender;
    }

    function() whenNotPaused payable external  {

    }

    function pause() public onlyOwner {
        paused = true;
    }

    function unpause() public onlyOwner {
        paused = false;
    }

    function removeFunds() public {
        owner.transfer(address(this).balance);
    }

}
