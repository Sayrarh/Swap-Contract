import { ethers } from "hardhat";

const main = async () => {

  const AGYTokes = await ethers.getContractFactory("AGYToken");
  const agyTokes = await AGYTokes.deploy();

  await agyTokes.deployed();

  console.log("Token contract Address is:", agyTokes.address);

  const LinkTokes = await ethers.getContractFactory("LinkToken");
  const linkTokes = await LinkTokes.deploy();

  await agyTokes.deployed();

  console.log("Token contract Address is:", linkTokes.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});