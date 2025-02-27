// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract lecture2{
    // string message = "hello ji";
    // function getMessage() public view returns(string memory){
    //     return message;
    // }
    receive() external payable { }
    address payable owner = payable (msg.sender);
    uint public contractBalance = address(this).balance;

    function sendEther() public payable{
        require(msg.value>=1 ether,"Not Enough Money");
        contractBalance=address(this).balance;
        payable (msg.sender).transfer(address(this).balance);
        } 
    }