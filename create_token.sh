#!/bin/bash

# This script will:
# 1. Airdrop SOL to your wallet (Devnet only)
# 2. Create a new SPL token
# 3. Create an associated token account
# 4. Mint tokens to your account

# CONFIGURATION
TOKEN_AMOUNT=1000000
DECIMALS=2
CLUSTER="devnet"

echo "🔄 Setting Solana config to devnet..."
solana config set --url https://api.devnet.solana.com

echo "📥 Airdropping 1 SOL to fund the wallet..."
solana airdrop 1

echo "🪙 Creating new SPL token..."
MINT_ADDRESS=$(spl-token create-token --decimals $DECIMALS | grep -oP '(?<=Creating token ).*')
echo "✅ Token created: $MINT_ADDRESS"

echo "📦 Creating token account for the new token..."
TOKEN_ACCOUNT=$(spl-token create-account "$MINT_ADDRESS" | grep -oP '(?<=Creating account ).*')
echo "✅ Token account created: $TOKEN_ACCOUNT"

echo "💸 Minting $TOKEN_AMOUNT tokens to your token account..."
spl-token mint "$MINT_ADDRESS" "$TOKEN_AMOUNT"

echo "📊 Displaying token balance..."
spl-token accounts

echo "🔗 View your token on Solana Explorer:"
echo "https://explorer.solana.com/address/$MINT_ADDRESS?cluster=$CLUSTER"
