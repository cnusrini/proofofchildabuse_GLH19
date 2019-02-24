var HDWalletProvider = require("truffle-hdwallet-provider");

MNEMONIC = 'dune demise poet echo tell gauge come monster color road flock voyage'
INFURA_API_KEY = '2fb5d741e27d41338565a779e1d0f92d'

module.exports = {
  networks: {
    ganache: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*" // Match any network id
    },
        rinkeby: {
      provider: () =>
        new HDWalletProvider(MNEMONIC, "https://rinkeby.infura.io/" + INFURA_API_KEY),
      network_id: '4',
      from:'0xeCdeAcAFdc3C519aBA7EEf2aEd94F48B80c4EF15',
      gas:4700000
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(MNEMONIC, "https://ropsten.infura.io/" + INFURA_API_KEY );
      },
      network_id: 3,
      from:'0xeCdeAcAFdc3C519aBA7EEf2aEd94F48B80c4EF15',
      gas: 4700000

    }
  }
};
