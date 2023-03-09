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

    //ͨ��abi.encodeWithSignature���Լ����Լ��ķ�����Ӧ���ֽ���
    function caluBytes() public pure returns(bytes memory functionCalldata) {
        functionCalldata = abi.encodeWithSignature("counter()");
    }


}