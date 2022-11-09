// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract dataContract {

  receive( ) external payable {}

fallback( ) external payable {}

      function getBalance() external view returns (uint) { 
      return address (this).balance; 
      } 
    
  function getAge() external pure returns(uint) {
    return 25;
  }
  
  function getHeight() external pure returns(uint) {
    return 6;
  }
  
  function getName() external pure returns(string memory) {
    return 'Bob';
  }

  function getCar() external pure returns(string memory) {
    return 'truck';
  }

  function getCar2() external pure returns(string memory) {
    return 'truck2';
  }
}
