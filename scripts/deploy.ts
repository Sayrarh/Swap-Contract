import { ethers } from "hardhat";

const main = async () => {
  //const StakingFactory = await ethers.getContractFactory("Staking");
  //const stakingJuliet = await StakingFactory.deploy();

  //await stakingJuliet.deployed();

  //console.log("Staking Contract deployed to:", stakingJuliet.address);

  const AGYTokes = await ethers.getContractFactory("AGYToken");
  const agyTokes = await AGYTokes.deploy();

  await agyTokes.deployed();

  console.log("Token contract Address is:", agyTokes.address);

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});