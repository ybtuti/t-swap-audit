// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import { Test, console2 } from "forge-std/Test.sol";
import { TSwapPool } from "src/TSwapPool.sol";
import { ERC20Mock } from "test/mocks/ERC20Mock.sol";

contract Handler is Test {
    TSwapPool pool;
    ERC20Mock weth;
    ERC20Mock poolToken;

    constructor(TSwapPool _pool) {
        pool = _pool;
        weth = ERC20Mock(_pool.getWeth());
        poolToken = ERC20Mock(_pool.getPoolToken());
    }

    // deposit, swapExactOutput

    function deposit(uint256 wethAmount) public {
        // Lets make sure its a reasonable Amount
        // avoid wierd overflow errors
        wethAmount = bound(wethAmount, 0, type(uint64).max);
    }
}
