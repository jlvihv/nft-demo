// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract HANFT is ERC721URIStorage, Ownable {
    using Strings for uint256;
    uint256 public tokenID;
    uint256 public maxSupply = 105;

    constructor() ERC721("Hamster", "HANFT") {
        tokenID = 0;
        Run();
    }

    function create(string memory jsonAddr) private {
        require(tokenID < maxSupply, "Max supply reached");
        _safeMint(msg.sender, tokenID);
        _setTokenURI(tokenID, jsonAddr);
        tokenID = tokenID + 1;
    }

    function Run() private {
        string memory baseUrl = "https://hamsternet.io/nft/metadata/";
        for (uint256 i = 0; i < maxSupply; i++) {
            create(string.concat(baseUrl, (i + 1).toString(), ".json"));
        }
    }
}
