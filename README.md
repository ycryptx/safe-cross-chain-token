# ISC Cross-Chain Bridge

This is the Solana <--> Ethereum bridge for [ISC (International Stable Currency)](isc.money). It uses Wormhole to bridge tokens, following a mesh topology, whereby funds are bridged via an intermediary contract on each chain (Cross Chain Claims). When bridging, funds are burnt at the origin chain and are then claimable in the destination chain.

## Local Development
Requires Docker and golang to be installed. Make sure [k8s is enabled](https://docs.docker.com/desktop/get-started/#kubernetes)

```bash
make install-devnet
make up-devnet
```