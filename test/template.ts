const { expect } = require("chai");

describe("Template", function() {
  it("Should XXX", async function() {
    const Template = await ethers.getContractFactory("Template");
    const template = await Template.deploy("XXX");
    
    await template.deployed();
    expect(await template.xxx()).to.equal("XXX");
  });
});
