
# Minimal-Proxy

# Minimal Proxy Clone (EIP-1167)

This repository demonstrates the Minimal Proxy Pattern as defined in [EIP-1167](https://eips.ethereum.org/EIPS/eip-1167), also known as the Clone Factory Pattern.

Minimal proxies are ultra-lightweight contracts that forward all logic to a shared implementation contract using `delegatecall`. This technique is widely used in modern smart contract development for gas efficiency, mass deployment, and upgradeability.

---

# What This Repo Covers

- ✅ The raw assembly that constructs a minimal proxy
- ✅ A `CloneFactory` that deploys clones of a logic contract

---

# What is a Minimal Proxy?

A minimal proxy is a tiny contract whose only purpose is to delegate calls to a shared implementation contract. It avoids duplicating code across contracts, significantly reducing deployment cost.
Add commentMore actions
It works by embedding the address of the logic contract into a predefined bytecode shell like this:
