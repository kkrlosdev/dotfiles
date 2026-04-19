#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/dotfiles"

echo ">> Iniciando instalación de dotfiles..."

# -------- helpers --------

backup_if_exists() {
    local target="$1"

    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo ">> Backup: $target → $target.backup"
        mv "$target" "$target.backup"
    fi
}

create_symlink() {
    local source="$1"
    local target="$2"

    if [ -L "$target" ]; then
        echo ">> Symlink ya existe: $target"
    else
        backup_if_exists "$target"
        echo ">> Link: $target → $source"
        ln -s "$source" "$target"
    fi
}

# -------- estructura --------

mkdir -p "$HOME/.config"

# -------- archivos --------

create_symlink "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/bash/.bashrc" "$HOME/.bashrc"
create_symlink "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"

# -------- directorios --------

create_symlink "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
create_symlink "$DOTFILES_DIR/kitty" "$HOME/.config/kitty"

echo ">> Instalación completa."