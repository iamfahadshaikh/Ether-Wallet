// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;
contract wallet
{
    uint256 mineth=100 gwei;
    
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function depositcrypto() public payable
    {
        require(msg.value>= mineth, "error check condition");
        
    }
    function sendEther(address payable recipient) public payable {
    uint256 amount = msg.value;
    require(address(this).balance >= amount, "Insufficient balance in the contract");
    
    recipient.transfer(amount);
    }
    function withdrawcrypto(uint256 _amt) public
    {
        (bool callsuccess,)= payable(msg.sender).call{value: _amt}("");
        require(callsuccess, "my call failed");
    }
    function generateAddress() public view returns (address) {
        bytes32 hash = keccak256(abi.encodePacked(block.timestamp, block.prevrandao));
        address randomAddress = address(uint160(uint256(hash)));
        return randomAddress;
    }
}

