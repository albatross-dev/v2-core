pragma solidity ^0.8.9;

interface IUniswapV2Factory {
    // event PairCreated(address indexed token0, address indexed token1, address pair, uint256);

    function feeSetter() external view returns (address);
    function feeBase() external view returns (uint256);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint256) external view returns (address pair);
    function allPairsLength() external view returns (uint256);

    function createPair(address tokenA, address tokenB, address router) external returns (address pair);

    function setFeeBase(uint256 _feeBase) external;
    function setFeeSetter(address _feeSetter) external;
}
