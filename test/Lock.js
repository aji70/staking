const {expect} = require("chai"); // Mocha-framework, chai-library
const { ethers } = require("hardhat");

describe("myNFT", function(){
let MyNft;
let myNFT;
let owner;
beforeEach(async function(){
  [owner, addr1, addr2,...addrs] = await ethers.getSigners();

  MyNft = await ethers.getContractFactory("MyNFT");
  myNFT = await MyNft.deploy();
});

describe('deployment', function(){
  it('should mint an Nft', async function(){
      expect(await myNFT.mint(owner)).to.equal(votersStatus);
  })

  it('should respond you have voted if voterStatus is true', async function(){
      expect(await inec.hasAddressVoted(owner)).to.not.equal(true).to.be.revertedWith("You have already voted");
      
  })
})

})