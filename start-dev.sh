#!/bin/bash

# Navigate to source code directory
cd "$(dirname "$0")/source-code" || exit

# Check if npm packages are installed
if [ ! -d "node_modules" ]; then
  echo "Installing dependencies..."
  npm install
fi

# Start the development server
echo "Starting development server..."
npm run dev