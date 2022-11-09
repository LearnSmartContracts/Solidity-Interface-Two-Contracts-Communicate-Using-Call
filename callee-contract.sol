// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract dataContract {

  receive( ) external payable {}

fallback( ) external payable {}

      function getBalance() external view returns (uint) { 
      return address (this).balance; 
      } 
  
  function getHeight() external pure returns(uint) {
    return 6;
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
