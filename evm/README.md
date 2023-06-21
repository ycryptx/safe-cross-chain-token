# EVM Components of the ISC Bridge

To bridge ISC to an EVM chain (e.g. Ethereum) the user has to send OIL tokens via the Wormhole bridge to receive xOIL on the destination EVM chain. xOIL can then be converted to native ISC via the custom smart contract `xOilSwap`

## Contracts used

**xOilSwap**
This contract always stores a balance of ISC. 
It exposes a `Swap` function that enables any user to swap xOIL to ISC. `Swap` validates that xOIL is the correct Wormhole-wrapped-token of the original OIL token minted on Solana.

**CustomMintableToken**
A standard Ownable ERC20 with Mint/Burn functionalities.