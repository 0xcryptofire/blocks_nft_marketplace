//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
//OpenZeppelin's NFT Standard Contracts. We will extend functions from this in our implementation
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTMarketplace is ERC721URIStorage {
    constructor() ERC721("CryptoFireNFT", "CFN") {}

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    Counters.Counter private _itemsSold;

    address payable owner;
    uint256 listPrice = 0.001 ether;

    struct ListedToken {
        uint256 tokenId;
        address payable owner;
        address payable seller;
        uint256 price;
        bool currentlyListed;
    }

    event TokenListedSuccess(
        uint256 tokenId,
        address owner,
        address seller,
        uint256 price,
        bool currentlyListed
    );

    mapping(uint256 => ListedToken) private id2ListedToken;


    
}
