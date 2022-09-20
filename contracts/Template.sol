//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.15;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Template {
    IERC20 public immutable token;

	constructor(IERC20 _token) {
        token = _token;
    }
}
