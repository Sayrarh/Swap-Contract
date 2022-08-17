//SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "./AGYToken.sol";


contract SwapToken is AGYToken{
    address public tokenAddress;

    address public constant AGYContractAddress = 0x4486D59620E4dAf36C67E33a7Aac562fE69823ad;

    struct TokenOrder{
        uint256 deadline;
        uint256 amountInputed;
        address tokenAddrToSwap;
        address tokenAddrToReceive;
    }
    uint ID = 1; 

    mapping(uint => TokenOrder) _tokenOrder;

    function createOrder( uint256 inputTok,
        uint256 outputTok, address _tokenAddrToSwap, address _tokenAddrToReceive, uint256 _amount, uint256 _deadline) external returns (uint){  
        require(_tokenAddrToSwap != address(0), "not a valid address");
        require(_tokenAddrToReceive != address(0), "not a valid address"); 
        require(_amount > 0, "You can't swap zero token");
        TokenOrder storage TO = _tokenOrder[ID];
        TO.deadline = _deadline + block.timestamp;
        TO.amountInputed = _amount;
        TO.tokenAddrToReceive = _tokenAddrToReceive;
        TO.tokenAddrToSwap = _tokenAddrToSwap;
        uint256 amountWithFee = _amount * 5;
        uint256 AO = amountWithFee * outputTok;
        uint256 div = (inputTok * 10) + amountWithFee;

        mint(_amount);
        return AO/div;
    }

    function getContractBalance() public view returns(uint){
        return balanceOf(address(this));
    }

}