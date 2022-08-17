// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AGYToken is ERC20, Ownable {
    uint public constant TotalSupply = 10000000 * 10 ** 18;

    constructor() ERC20("TosinToken", "AGY") {}

    function mint(uint _amount) internal {
        _mint(msg.sender, _amount);
    }
}