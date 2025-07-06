name: Listen for Private Trigger

on:
  repository_dispatch:
    types: [update-safe-dashboard]

jobs:
  deploy-dashboard:
    name: Build & Deploy Safe Dashboard
    runs-on: ubuntu-latest

    steps:
      - name: Checkout public repo
        uses: actions/checkout@v3

      - name: Setup Node
        uses: actions/setup-node@v3
        with:
          node-version: 18

      - name: Install dependencies
        run: npm install

      - name: Build the app
        run: npm run build

      - name: Deploy (Vercel CLI or other method)
        run: echo "🚀 Add your Vercel deploy command here"
