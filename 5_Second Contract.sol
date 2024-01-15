// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

// Contract or Class
contract SecondContract {
    // state variable
    uint payment;

    // modifier is a conditional
    modifier onlyPositive() {
        require(
            payment >= 0, 
            "Payment must be greater than or equal to zero"
            );
        _;
    }

    // functions
    function setPayment(uint x) public onlyPositive {
        payment = x;

        // Emit the updated payment event
        emit paymentUpdated(msg.sender, x);
    }

    function getPayment() public view returns (uint) {
        return payment;
    }

    // event
    event paymentUpdated(address indexed account, uint newPayment);
}
