# Safe Cross Chain Token

This project uses the Wormhole Bridge to safely make your token work cross-chain. It follows a simple design that aims to minimize bridge risk, as that is often the most risky part of any cross-chain solution.

Use this project if your token is already native to a chain (say, Solana) and you want to make it **natively** available on another chain (say, Ethereum).

## Design

We use an intermediary token called OIL (think engine oil...) that can be bridged to all chains supported by Wormhole (say Ethereum, Avalanche, Arbitrum, Osmosis). The `OIL token contract` is deployed to the chain your token natively lives on (say, Solana) and allows any user that wants to bridge your native token to another chain, to swap your native token for OIL, and using Wormhole to bridge it and receive xOIL on the destination chain.

On the destination chain,, you deploy a `swap contract` together with a `native mint contract` for your token. The `swap contract` allows anyone who bridged xOIL to swap it for your native token. You should periodically fund the swap contract with your native token by minting it and sending it to the `swap`.

## Local Development
Requires Docker and golang to be installed. Make sure [k8s is enabled](https://docs.docker.com/desktop/get-started/#kubernetes)

```bash
make install-devnet
make up-devnet
```