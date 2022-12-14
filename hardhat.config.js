/** @type import('hardhat/config').HardhatUserConfig */
require("@nomiclabs/hardhat-ethers");

const privateKey =
  "46d5cce3f60bf3557f7f999a834850579708c4b0999f82376b629028dac44395";
const rinkebyApiUrl =
  "https://rinkeby.infura.io/v3/af3a5f690df8432f9ff9e410bcfe80ef";
const ethApiUrl =
  "https://eth-mainnet.g.alchemy.com/v2/Y_xw1QM67V3XuNVh-4AeWdcK2Eg9DbR-";

module.exports = {
  solidity: "0.8.12",
  defaultNetwork: "eth",
  networks: {
    rinkeby: {
      url: rinkebyApiUrl,
      accounts: [`0x${privateKey}`],
    },
    eth: {
      url: ethApiUrl,
      accounts: [`0x${privateKey}`],
    },
  },
};
