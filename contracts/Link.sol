// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract LinkToken is ERC20{
    uint public constant TotalSupply = 10000000 * 10 ** 18;

    constructor() ERC20("LinkToken", "LCT") {}

    function mint(uint _amount) internal {
        _mint(msg.sender, _amount);
    }
}