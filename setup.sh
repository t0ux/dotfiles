#!/bin/bash

# Install xcode command-line tools
xcode-select --install

# Make sure we’re using the latest Homebrew
brew update
brew upgrade

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

# Install more recent versions of some OS X tools
brew install neovim
brew install ripgrep
brew install tmux 
brew install tree-sitter

# packer.nvim for neovim plugin managing 
# git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 # ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install other useful binaries
brew install ffmpeg --with-libvpx
brew install fzf
brew install git
brew install gnupg
brew install imagemagick --with-webp
brew install rename
brew install the_silver_searcher
brew install awscli
brew install gh
brew install openssl

# language servers 
brew install cppcheck
brew install clang-format
brew install golangci-lint
brew install black
brew install flake8

# Remove outdated versions from the cellar
brew cleanup
