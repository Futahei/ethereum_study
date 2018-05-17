pragma solidity ^0.4.0;
contract SingleNumRegister {
    uint storedData;
    function set(uint x) public{
        storedData = x;
    }

    function get() public view returns (uint retVal){
        return storedData;
    }
}

contract ValTypeTest {
    function valType() public view returns (uint retVal){
        uint a;
        a = 10;
        uint b = a;
        b = 20;
        return a; // result shows 10
    }

    function refType() public view returns (uint[2] retVal){
        uint[2] x;
        x[0] = 100;
        x[1] = 200;
        uint[2] y = x;
        y[0] = 500;
        y[1] = 600;
        return x; // result shows [500,600]
    }
}