# Dotfiles Managed by Chezmoi

This repository contains my personal dotfiles managed by [chezmoi](https://www.chezmoi.io/). Chezmoi helps you manage your personal configuration files across multiple machines.

## Table of Contents

- [What's Inside?](#whats-inside)
- [Structure](#structure)
- [Installation](#installation)
  - [Setting Up a New Computer](#setting-up-a-new-computer)
  - [Useful Chezmoi Commands](#useful-chezmoi-commands)
- [Security](#security)
  - [Encrypting Files with Chezmoi](#encrypting-files-with-chezmoi)

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
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- init --apply <your-github-username>
```

### Setting Up a New Computer

**Install Chezmoi** 

You need to install chezmoi on your new computer. You can usually install it using your package manager or the provided script:
```sh
sh -c "$(curl -fsLS https://chezmoi.io/get)"
```

**Bootstrap Your Environment**

If your dotfiles are in a public GitHub repository named dotfiles, use your GitHub username to initialize and apply your dotfiles:
```sh
chezmoi init --apply <your-github-username>
```

If your repository has a different name or is hosted elsewhere (e.g., private repos, GitLab, Bitbucket), use the full URL of your repository:
```sh
chezmoi init --apply https://<repository-url>
```
**NOTE**: this command clones your dotfiles repository, sets up your source directory, and applies the dotfiles to your home directory.

**Install Dependencies**

If your dotfiles include a `Brewfile` (for macOS) or a similar script for other package managers, you should run it to install all necessary software:
```sh
brew bundle --file ~/Brewfile
```
For other systems, adjust the command based on your package manager or setup scripts included in your dotfiles.

### Useful Chezmoi Commands

**Init**
Initializes a source directory and pulls your dotfiles from the remote repository:
```sh
chezmoi init --apply <your-github-username>
```

**Add**
Adds a file or directory to your dotfiles repository:
```sh
chezmoi add ~/.zshrc
```

**Update**
Pulls the latest changes from your dotfiles repository and applies them:
```sh
chezmoi update
```

**Diff**
Shows the difference between your current files and what chezmoi would generate:
```sh
chezmoi diff
```

**Edit**
Opens your dotfiles in an editor for modification:
```sh
chezmoi edit ~/.zshrc
```

## Security

Sensitive data like SSH keys and GPG keys are managed securely. Ensure that private data is encrypted or not tracked by Git.

### Encrypting Files with Chezmoi

To encrypt files with chezmoi, you first need to have GPG (GNU Privacy Guard) set up on your machine. Once GPG is set up, you can use the following commands to encrypt your files:

**Encrypt a file**
```sh
chezmoi add --encrypt <path-to-file>
```

**Edit an encrypted file**
```sh
chezmoi edit --decrypt <path-to-encrypted-file>
```

**View the contents of an encrypted file**
```sh
chezmoi cat --decrypt <path-to-encrypted-file>
```
