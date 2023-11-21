// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedChat {
    mapping(address => string) public nicknames;
    mapping(address => bool) public registeredAddresses;

    event MessageSent(address indexed sender, string nickname, string message);



   }

