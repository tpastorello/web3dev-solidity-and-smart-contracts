// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    constructor() {
        console.log("Ueba, eu sou um contrato e eu sou inteligente");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s deu tchauzinho!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("Temos um total de %d tchauzinhos!", totalWaves);
        return totalWaves;
    }

    function getLoopWaves() public view returns (uint256) {
        for (uint256 index = 0; index < totalWaves; index++) {
            console.log("Tchauzinho %d", index);
        }

        return totalWaves;
    }
}
