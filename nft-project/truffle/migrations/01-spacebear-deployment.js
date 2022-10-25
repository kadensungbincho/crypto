const Spacebear = artifacts.require("Spacebear");

module.exports = function(deployer) {
    // console.log(network, accounts);
    deployer.deploy(Spacebear);
}