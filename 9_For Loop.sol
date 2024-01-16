// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ProductContract {
    // Array to store the list of product names
    string[5] public productNames = 
        ["Probe I", "Tester 29", "Socket 77", "Connector A", "Connector B"];

    // Function to get the list of product names as a comma-separated string
    function getProductList() public view returns (string memory) {
        string memory productList;

        // Loop through the product names and concatenate them
        for (uint256 i = 0; i < 5; i++) {
            productList = string(abi.encodePacked(productList, productNames[i], ","));
            /* abi.encodePacked is used to join the arguments. It returns a byte array.
            string(...) is used to convert the  byte array into a string.*/
        }
       
        return productList;
    }
}
