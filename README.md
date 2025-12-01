# KVIM

A highly customized, aesthetic, and performance-oriented Neovim configuration built on **Arch Linux**.

![Screenshot](screenshot.png)

## Features

* **Package Manager**: Managed by `lazy.nvim` for blazing fast startup times.
* **UI & Aesthetic**:
    * **Dashboard**: Custom ASCII art dashboard powered by `snacks.nvim`.
    * **Theme**: Cyberdream / TokyoNight with transparency support.
    * **Notifications**: Slick UI with `noice.nvim` and `nvim-notify`.
    * **Statusline**: Clean and functional setup.
* **Coding Experience**:
    * **LSP**: Full support via `mason.nvim` and `nvim-lspconfig`.
    * **Treesitter**: Advanced syntax highlighting for all major languages.
    * **Formatting**: Auto-formatting on save.
* **Workflow**:
    * **Git**: Integrated `lazygit` floating window.
    * **File Explorer**: Neo-tree for sidebar navigation.
    * **Fuzzy Finder**: Telescope for finding files and text instantly.

## Requirements

Ensure you have the following installed on your system (Arch Linux):

* Neovim >= 0.10.0
* Git
* A Nerd Font (e.g., JetBrains Mono Nerd Font)
* Ripgrep (for Telescope grep)
* LazyGit (optional, for git integration)

```bash
# Arch Linux dependencies
sudo pacman -S neovim git ripgrep lazygit ttf-jetbrains-mono-nerd