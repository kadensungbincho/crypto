//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SampleUnits {
    modifier betweenOneAndTwoEth() {
        require(msg.value >= 1 ether && msg.value <= 2 ether);
        _;
    }

    uint startTimestamp;
    uint runUntilTimestamp;
    
    constructor(uint startInDays) {
        startTimestamp = block.timestamp + (startInDays * 1 days);
        runUntilTimestamp = startTimestamp + (7 days);
    }
}