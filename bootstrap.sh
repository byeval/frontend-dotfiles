#!/usr/bin/env bash
# Get current dir
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Update dotfiles
git pull origin master
echo $DOTFILES_DIR
# Create symlinks 
ln -sfv "$DOTFILES_DIR/bash/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/bash/.bash_promot" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~

# Package managers & packages
source "$DOTFILES_DIR/install/brew.sh"
source "$DOTFILES_DIR/install/node.sh"
source "$DOTFILES_DIR/install/vim.sh"

# Install extra stuff
if [ -d "$EXTRA_DIR" -a -f "$EXTRA_DIR/install.sh" ]; then
    source "$EXTRA_DIR/install.sh"
fi
