// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

 
contract MyNFT is ERC721, Ownable {

address initialOwner = msg.sender;
    constructor() ERC721("MyNFT", "NFT")  Ownable(initialOwner){}

    function mint(address to, uint256 tokenId) public onlyOwner payable {  
        _mint(to, tokenId);

    }

    function transfer(address from, address to, uint token) public{
        safeTransferFrom(from, to, token);
    }

    function balance(address _owner) public view  returns(uint) {
        uint _balance = balanceOf(_owner);
        return _balance;
    }

    function Stake(address from,address _owner,bytes memory data, uint tokenId ) public payable{
        _owner = msg.sender;
        safeTransferFrom(from, _owner,tokenId, data);
    }

    function unStake(address to,address _owner,bytes memory data, uint tokenId ) public payable{
        _owner = msg.sender;
        safeTransferFrom(to, _owner,tokenId, data);
    }
}
