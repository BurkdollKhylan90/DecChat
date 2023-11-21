// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedChat {
    mapping(address => string) public nicknames;
    mapping(address => bool) public registeredAddresses;

    event MessageSent(address indexed sender, string nickname, string message);
modifier onlyRegistered() {
        require(registeredAddresses[msg.sender], "Sender is not registered");
        _;
    }
function register(string memory _nickname) external {
        require(bytes(_nickname).length > 0, "Nickname cannot be empty");
        require(bytes(nicknames[msg.sender]).length == 0, "Sender is already registered");

        nicknames[msg.sender] = _nickname;
        registeredAddresses[msg.sender] = true;
    }

   }

