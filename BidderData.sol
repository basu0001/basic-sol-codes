pragma solidity ^0.5.9; 

contract BidderData {

    string public name;
    uint public bidAmount = 20000;
    bool public  eligible;
    uint constant minBid = 1000;


}
