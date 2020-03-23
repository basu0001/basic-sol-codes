pragma solidity ^0.5.9; 

contract Bidder {
    string public name = "Bidder Name";
    uint public bidAmount;
    bool public eligible;
    uint constant minBid = 1000;

    function setName(string memory bidderName) public {
        name = bidderName;
    }

    function setBidAmount(uint x) public {
        bidAmount = x;
    }

    function determineEligibility() public {
        if (bidAmount >= minBid) eligible = true;
        else eligible = false;
    }

}
