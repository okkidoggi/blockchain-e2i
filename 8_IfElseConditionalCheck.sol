// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract InventoryLevel {
    string public inventoryStatus;

    function checkInventoryLevel(uint quantity) public {
        if (quantity < 10) {
            inventoryStatus = "Need to Topup";
        } else if (quantity >= 10 && quantity <= 100) {
            inventoryStatus = "Safe Level";
        } else {
            inventoryStatus = "Overstock";
        }
    }
}
