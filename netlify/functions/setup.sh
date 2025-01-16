#!/bin/bash

# Check if Bun is installed, if not, install it
if ! command -v bun &> /dev/null
then
    echo "Bun not found, installing..."
    curl -fsSL https://bun.sh/install | bash
else
    echo "Bun is already installed"
fi

# Ensure Bun is available in the PATH
export PATH=$HOME/.bun/bin:$PATH

# Verify Bun installation
bun --version
