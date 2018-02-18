var Web3 = require('web3');
var fs = require('fs');
var web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
var abi = JSON.parse(fs.readFileSync('../build/contracts/GetSet.abi', 'utf8'));

web3.eth.defaultAccount = '0x1a819cf8c813697f8480319e844ebcc272d82592';

var Contract = web3.eth.contract(abi);
var instance = Contract.at('0x824be165b0b6cb47ff3342615a4fddeb0e28d70c');

module.exports = instance;