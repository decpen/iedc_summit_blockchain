// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.18;

contract YourNameInBlockChain {
    string public yourName;

    function store(string memory name) public {
        yourName = name;
    }

    function retrieve() public view returns (string memory) {
        return yourName;
    }
}

