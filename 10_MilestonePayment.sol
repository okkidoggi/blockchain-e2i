// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract ProgressPayment {
    address payable public vendor;
    address public owner;
    bool public isMilestoneReached;
    uint256 public paymentAmount;

    constructor(address payable _vendor) payable {
        owner = msg.sender;
        vendor = _vendor;
        isMilestoneReached = false;
        paymentAmount = 1 ether; // Set the default paymentAmount
        require(msg.value == 20 ether, 
            "Incorrect initial balance. Please send exactly 20 ether.");
    }

    modifier onlyOwner() {
        require(msg.sender == owner, 
            "Only Contract Owner can access this function.");
        _;
    }

    function declareMilestone1Achieved() external onlyOwner {
        require(!isMilestoneReached, 
            "Milestone has already been declared.");
        require(address(this).balance >= paymentAmount, 
            "Insufficient funds for payment.");

        isMilestoneReached = true;
        vendor.transfer(paymentAmount);
    }

    // Function to check contract balance
    function getContractBalance() external view onlyOwner returns (uint256) {
        return address(this).balance;
    }
}
