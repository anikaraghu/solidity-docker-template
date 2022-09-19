import type { SignerWithAddress } from "@nomiclabs/hardhat-ethers/signers";
import { task } from "hardhat/config";
import type { TaskArguments } from "hardhat/types";

import type { Template } from "../../src/types/contracts/Template";
import type { Template__factory } from "../../src/types/factories/contracts/Template__factory";

task("deploy")
  .setAction(async function (taskArguments: TaskArguments, { ethers }) {
    const templateFactory: Template__factory = <Template__factory>await ethers.getContractFactory("Template");
    const template: Template = <Template>await templateFactory.deploy();
    await template.deployed();
    console.log("Template deployed to: ", template.address);
  });
  