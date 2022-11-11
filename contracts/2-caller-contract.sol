// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//defined interface with functions that do not contain an implementation
//declared as type external

interface IdataCalleeContractInterface {
  function getBalance() external view returns(uint);
  function getName() external pure returns(string memory);
  function getTruck() external pure returns(string memory);
  function getTruck2() external pure returns(string memory);
}


contract MainContract {
    
    // state variable that represents the address of the data callee contract.  can find it on etherscan or remix deployed contracts
    
    address private constant dataCalleeContractAddress = PASTECALLEECONTRACTADDRESSHERE;
    
    
    // to access the functions in the data contract
    // use the interface declared above and wrap the data contract address in ()
    // example interfaceName(address).functionName
   
    function getBalance() external view returns(uint) {
        return IdataCalleeContractInterface(dataCalleeContractAddress).getBalance();
  }

    function getName() external pure returns(string memory) {
        return IdataCalleeContractInterface(dataCalleeContractAddress).getName();
  }
  
    function getTruck() external pure returns(string memory) {
        return IdataCalleeContractInterface(dataCalleeContractAddress).getTruck();
  } 
  
    function getTruck2() external pure returns(string memory) {
        return IdataCalleeContractInterface(dataCalleeContractAddress).getTruck2();
  }
}
