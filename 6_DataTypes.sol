// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract DataTypes {
    // Fundamental Data Types
    string name = "Teng Wei Yuen";  // string type
    uint unitPrice = 50;            // uint (unsigned integer) type
    bool isJobDone = true;          // bool (boolean) type
    address walletAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;  // address type
    
    // Bytes Data Type
    bytes32 hashedData = keccak256("some data");  // bytes32 type

    // Composite Data Types
    string[] salesTeam = ["Andy","Lynn","Kelly","Ben", "Jerry"];  // dynamic array of strings

    // User-Defined Data Type
    struct Product {
        string productID;
        string productName;
        uint unitPrice;
        bool isExpired;
    }  // struct type

    // Enum Data Type
    enum Status { Pending, Shipped, Delivered }  // enum type
    Status currentStatus = Status.Pending;

    // Mapping Data Type
    mapping (address => uint) balances;  // mapping type
    
    /* double averageScore = 95.5; 
    There is no floating point in Solidity. You should keep numbers in whole number format.
    You can place decimal place in your front-end code.
    https://stackoverflow.com/questions/58277234/does-solidity-supports-floating-point-number */

}
