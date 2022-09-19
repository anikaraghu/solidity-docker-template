//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.15;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Template {
    IERC20 public immutable myToken;

	constructor(IERC20 token) {
        myToken = token;
    }

    function addLiquidity(uint256 liquidityToAdd) external {
        addLiquiditySuccess = token.transferFrom(msg.sender, address(this), liquidityToAdd);
        require(addLiquiditySuccess == true, "could not add liquidity");
    }
}
