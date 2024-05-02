# Dotfiles Managed by Chezmoi

This repository contains my personal dotfiles managed by [chezmoi](https://www.chezmoi.io/). Chezmoi helps you manage your personal configuration files across multiple machines.

## What's Inside?

- **Shell Configurations**: Configurations for Zsh and Bash.
- **Git**: Global `.gitconfig` and `.gitignore`.
- **Vim/Neovim**: Editor configurations and plugins.
- **Tmux**: Terminal multiplexer setup.
- **SSH**: SSH client configuration.
- **GPG**: GnuPG configurations for encryption, signing, and authentication purposes.
- **AWS**: AWS CLI configuration files.
- **Ansible**: Ansible configurations for provisioning and automation.
- **ASDF**: Version manager configurations for managing multiple runtime versions.

## Installation

To apply the dotfiles to your system, first install `chezmoi`:

```sh
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply <your-github-username>
```

## Structure

- `.chezmoiexternal.toml`: External resources managed by chezmoi.
- `dot_aws/`: AWS CLI configurations.
- `dot_ssh/`: SSH client configurations and keys.
- `private_dot_gnupg/`: Encrypted GPG configuration files.
- `Brewfile`: Homebrew dependencies and applications.
- `dot_ansible.cfg`: Ansible configurations.
- `dot_asdfrc`: Version management configurations.
- `dot_vimrc`, `dot_tmux.conf`, `dot_zshrc`, etc.: Various tool configurations.

## Security

Sensitive data like SSH keys and GPG keys are managed securely. Ensure that private data is encrypted or not tracked by Git.
