pragma solidity ^0.5.9; 

contract SimpleStorageReimagined {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() view public returns (uint) {
        return storedData;
    }

    function increment(uint n) public {
        storedData = storedData + n;
    }

    function decrement(uint n) public {
        storedData = storedData - n;
    }
}
