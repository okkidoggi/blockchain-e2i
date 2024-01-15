// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract SimpleFunction {
    uint private sumResult;
    uint private productResult;

    function calculate(uint a, uint b) public {
        sumResult = a + b;
        productResult = a * b;
    }

    function getResults() public view returns (uint sum, uint product) {
        return (sumResult, productResult);
    }
}
