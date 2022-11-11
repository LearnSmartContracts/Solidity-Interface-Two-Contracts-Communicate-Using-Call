# Solidity-Interface-Two-Contracts-Communicate-Using-Call

Call another smart contract from a smart contract using an Interface.

There are two files the caller and the callee.

The callee has functions denoted as external and viewable.

The caller has an interface as well as functions to call those functions
and retreive information.

The deploy scripts are different for the callee and the caller contract.  The caller has console.log to print info 
from the callee contract thru the caller interface and pulls in the .env file to enable this. 
