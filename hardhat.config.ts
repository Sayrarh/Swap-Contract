import "@nomiclabs/hardhat-ethers";
require("@nomiclabs/hardhat-etherscan")
require("dotenv").config({ path: ".env" });



const RINKEBY_API_KEY = process.env.RINKEBY_API_KEY;

const ROPSTEN_API_KEY = process.env.ROPSTEN_API_KEY;

const PRIVATE_KEY = process.env.PRIVATE_KEY;

const API_TOKEN = process.env.API_TOKEN;

module.exports = {
  solidity: "0.8.9",
  networks: {
    hardhat: {
      forking: {
        url: ROPSTEN_API_KEY,
      }
    },
    rinkeby: {
      url: RINKEBY_API_KEY,
      accounts: [PRIVATE_KEY],
    },
    ropsten: {
      url: ROPSTEN_API_KEY,
      accounts: [PRIVATE_KEY],
    }
  },
  etherscan: {
    apiKey: API_TOKEN
  },
  blockGasLimit: 200000000000,
  gasPrice: 10000000000,
};