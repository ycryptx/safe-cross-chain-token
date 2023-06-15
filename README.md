# ISC Cross-Chain Bridge

This is the Solana <--> Ethereum bridge for [ISC (International Stable Currency)](isc.money). It uses Wormhole to bridge tokens, following a mesh topology, whereby fundsbridged via a bridgind token (OIL) that is swappable on each chain to native ISC.

## Local Development
Requires Docker and golang to be installed. Make sure [k8s is enabled](https://docs.docker.com/desktop/get-started/#kubernetes)

```bash
make install-devnet
make up-devnet
```