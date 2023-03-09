// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Counter{

    uint public counter;

    constructor(){
        counter = 0;
    }

    function count() public{
        counter += 1;

    }

    function add(uint _num) public view returns(uint) {
        return (counter + _num);
    }

    //通过abi.encodeWithSignature可以计算合约里的方法对应的字节码
    function caluBytes() public pure returns(bytes memory functionCalldata) {
        functionCalldata = abi.encodeWithSignature("counter()");
    }


}