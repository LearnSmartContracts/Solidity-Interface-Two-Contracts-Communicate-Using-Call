const API_KEY = process.env.API_KEY;
const PRIVATE_KEY = process.env.PRIVATE_KEY;
const CONTRACT_ADDRESS = process.env.CONTRACT_ADDRESS;

const contract = require("../artifacts/contracts/Caller.sol/Caller.json");

// provider - Alchemy
const alchemyProvider = new ethers.providers.AlchemyProvider(network="goerli", API_KEY);

// signer - you
const signer = new ethers.Wallet(PRIVATE_KEY, alchemyProvider);

// contract instance
const dataCalleeContract = new ethers.Contract(CONTRACT_ADDRESS, contract.abi, signer);

async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  console.log("Account balance:", (await deployer.getBalance()).toString());

  const Token = await ethers.getContractFactory("Caller");
  const token = await Token.deploy();

  console.log("Token address:", token.address);

  const getTruck = await dataCalleeContract.getTruck();
  console.log("The truck is: " + getTruck); 
}

main();
