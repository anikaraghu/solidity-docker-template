import { expect } from "chai";
import { ethers } from "hardhat";

describe("Template", function() {
  it("Should XXX", async function() {
    const Template = await ethers.getContractFactory("Template");
    const template = await Template.deploy("XXX");
    
    await template.deployed();
    expect(await template.xxx()).to.equal("XXX");
  });
});
