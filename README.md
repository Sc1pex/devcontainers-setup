# My devcontainer setup

This features installs and configures using [my dotfiles](https://github.com/Sc1pex/dotfiles) neovim 0.10, the fish shell and starship prompt and tmux

## Example setup

```jsonc
{
  "name": "PROJECT_NAME",
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu-22.04",
  "features": {
    "ghcr.io/sc1pex/devcontainers-setup/setup:0": {
      "git_username": "GIT_USERNAME",
      "git_email": "GIT_EMAIL",
    },
  },
  "mounts": ["source=${localEnv:HOME}/.ssh,target=/home/vscode/.ssh,type=bind"],
}
```
