#!/bin/bash
set -e

# Optional: Import test library bundled with the devcontainer CLI
# See https://github.com/devcontainers/cli/blob/HEAD/docs/features/test.md#dev-container-features-test-lib
source dev-container-features-test-lib

# Feature-specific tests
check "execute command" nvim --version
check "execute command" tmux -V
check "execute command" fish --version
check "execute command" starship --version
check "execute command" just --version

# Report results
reportResults
