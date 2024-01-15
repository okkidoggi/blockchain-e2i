// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract FirstContract {
    string private productName = "Probe Pin";

    function getProductName() public view returns (string memory) {
        return productName;
    }

     function setProductName(string memory newProductName) public {
        productName = newProductName;
    }

}
