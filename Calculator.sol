// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract Calculator {
    uint result;
    struct history{
        uint inputI;
        uint inputII;
        uint result;
    }
    history [] public additionHistory;
    history [] public subtractionHistory;
    history [] public divisionHistory;
    history [] public multiplicationHistory;

    function add(uint x, uint y) public {
        result = x + y;
        additionHistory.push(history(x,y,x+y));
        }

    function sub(uint x, uint y) public {
        result = x - y;
        subtractionHistory.push(history(x,y,x-y));
    }
    

    function multiply(uint x, uint y) public {
        result = x * y;
        multiplicationHistory.push(history(x,y,x*y));
        }

    function divide(uint x, uint y) public {
        require(y!=0,'Division by zero not possible');
        result = x / y;
        divisionHistory.push(history(x,y,x/y));
    }

    function get() public view returns (uint) {
        return result;
    }
}
