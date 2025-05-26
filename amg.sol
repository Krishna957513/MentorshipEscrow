// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MentorshipEscrow {
    enum Status { Created, Funded, Completed, Released, Cancelled }
 address public mentee;
 address public mentor;
  uint256 public amount;
  Status public status;

    bool public menteeConfirmed;
    bool public mentorConfirmed;
    
    modifier onlyMentor() {
        require(msg.sender == mentor, "Only mentor can call this");
        _;
    }
    modifier onlyMentee() {
        require(msg.sender == mentee, "Only mentee can call this");
        _;
    }
    modifier inStatus(Status _status) {
        require(status == _status, "Invalid contract state");
        _;
    } 

  
    
    

     

    
