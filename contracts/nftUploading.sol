// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Creative is ERC721, Ownable {

    string public _baseTokenURI;
    uint256 public tokenIds;

    constructor(string memory baseURI, string memory name, string memory symbol, address initialOwner) ERC721(name, symbol) Ownable(initialOwner) {
    _baseTokenURI = baseURI;
    
    }

    function mintNFT(address to) public onlyOwner {
        tokenIds++;
        _mint(to, tokenIds);
    }
}

