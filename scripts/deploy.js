const hre = require("hardhat");

async function main() {
 
  const MyToken = await ethers.deployContract("MyNFT");
  await MyToken.waitForDeployment();


  console.log("MyToken deployed to:", MyToken.target);

 
}

main()
    .catch((error) => {
    console.error(error);
    process.exit(1);
  });
