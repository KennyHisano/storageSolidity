pragma solidity ^0.4.0;

contract Mystorage {
    
    uint storedData;
    address owner;
    
    function Owner(){
        //this gives auth to executer.
        owner = msg.sender;
    }
    
    
    modifier OwnerAuth {
        //if the owner has changed, it will call revert
        require(msg.sender == owner);
        //_ is the sign to execute the fuctions ended in ;
        _;
    }
    
    
    function set(uint t) OwnerAuth {
        storedData = t;
    }
    
    function get() constant returns (uint){
        return storedData;
    }
}