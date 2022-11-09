// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract InfoCalleeContract {

// One of these built in functions has to be present to receive funds.  I added them so a balance can be called and displayed by the Interface in the caller-contract.sol
  receive( ) external payable {}
  fallback( ) external payable {}

// Shows balance  
      function getBalance() external view returns (uint) { 
      return address (this).balance; 
      } 
  
  function getName() external pure returns(string memory) {
    return 'Jim';
  }

  function getTruck() external pure returns(string memory) {
    return 'raptor';
  }

  function getTruck2() external pure returns(string memory) {
    return 'f-150';
  }
}
