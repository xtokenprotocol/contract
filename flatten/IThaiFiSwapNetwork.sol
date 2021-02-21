// Dependency file: contracts/interfaces/IERC20.sol

/**
 * Copyright 2017-2020, bZeroX, LLC. All Rights Reserved.
 * Licensed under the Apache License, Version 2.0.
 */

// pragma solidity >=0.5.0 <0.6.0;


contract IERC20 {
    string public name;
    uint8 public decimals;
    string public symbol;
    function totalSupply() public view returns (uint256);
    function balanceOf(address _who) public view returns (uint256);
    function transfer(address _to, uint256 _value) public returns (bool);
    function allowance(address _owner, address _spender) public view returns (uint256);
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool);
    function approve(address _spender, uint256 _value) public returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}


// Root file: contracts/swaps/connectors/interfaces/IThaiFiSwapNetwork.sol

pragma solidity >=0.4.26 <=0.5.17;

// import "contracts/interfaces/IERC20.sol";

contract IThaiFiSwapNetwork {

    function convertByPath(
        IERC20[] calldata _path,
        uint256 _amount,
        uint256 _minReturn,
        address _beneficiary,
        address _affiliateAccount,
        uint256 _affiliateFee
    ) external payable returns (uint256);

    function rateByPath(
        IERC20[] calldata _path,
        uint256 _amount
    ) external view returns (uint256);

    function conversionPath(
        IERC20 _sourceToken,
        IERC20 _targetToken
    ) external view returns (IERC20[] memory);
}


