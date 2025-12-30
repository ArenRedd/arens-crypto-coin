# Anand's Crypto Coin – Private Cryptocurrency on Solana

Anand's Crypto Coin is a custom, private cryptocurrency created on the Solana blockchain (Devnet). It is designed to explore blockchain technology, tokenomics, and self-managed finance in a decentralized and secure way.

## 🌐 Token Explorer Link

You can verify the token using the Solana Explorer:

**Mint Address:**  
[`mntQDgEQB1NnuC1KZq8jdAGpcmMy1oVgGLVCJtY4Td7`](https://explorer.solana.com/address/mntQDgEQB1NnuC1KZq8jdAGpcmMy1oVgGLVCJtY4Td7?cluster=devnet)

## 🔍 Key Features

- **Decentralized**: The token is hosted on Solana's distributed ledger — no central authority.
- **Fast & Low-Cost**: Solana’s network allows near-instant transactions at a fraction of a cent.
- **Secure**: Based on Solana's robust infrastructure and cryptographic protection.
- **Customizable**: Ideal for experimental, educational, or private project use cases.

## 🧱 Architecture Overview
![Architecture for this project](https://res.cloudinary.com/dke6ddkot/image/upload/v1748711927/solana-coin-architechture_dduenf.png)

## 📝 Usage
Open your terminal and navigate to the script location.

Make the script executable:

```bash
chmod +x create_token.sh
````
Run the script:

```bash
./create_token.sh
```
## Warning

This script operates on the Solana Devnet, a public test network meant for experimentation. Tokens created here have no real-world value.

Never expose or commit wallet keys (such as ~/.config/solana/id.json) or any file containing private credentials to version control (e.g., GitHub).

Always double-check mint and transfer commands before running them on mainnet.

## Tools Used

- **OS**: WSL-Ubuntu
- **Blockchain**: Solana (Devnet)
- **CLI Tools**:
  - `solana`
  - `spl-token`

## 🧠 Optional AI System Prompt

If using an AI assistant to manage or automate tasks:

You are a blockchain assistant helping Anand manage his private Solana-based token. Help with querying mint info, checking balances, and using Solana CLI inside a WSL-Ubuntu environment.


## 📄 License
This project is licensed under the MIT License.
