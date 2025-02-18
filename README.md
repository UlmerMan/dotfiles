<div align="center">

# ⚡️ UlmerMan's Dotfiles

> 🧪 **EXPERIMENTAL - NOT FOR DAILY USE** 🧪
> 
> This configuration is currently under heavy development and experimentation.
> It may break, change significantly, or eat your homework.
> Use at your own risk!

<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png" width="600px" />

![Hyprland](https://img.shields.io/badge/Hyprland-✨_WM-8839ef?style=flat-square)
![Ghostty](https://img.shields.io/badge/Ghostty-🚀_Terminal-f5a97f?style=flat-square)
![Yazi](https://img.shields.io/badge/Yazi-📁_File_Manager-a6da95?style=flat-square)
![YADM](https://img.shields.io/badge/YADM-⚙️_Dotfiles-8bd5ca?style=flat-square)
![Status](https://img.shields.io/badge/Status-Experimental-red?style=flat-square)

*My current Dotfiles*

[Installation](#installation) • [Components](#components) • [Screenshots](#screenshots) • [Themes](#themes)

---
⚠️ **Current Status**: Pre-alpha, expect frequent breaking changes
</div>

## 💡 Key Features

- **Window Manager**: [Hyprland](https://hyprland.org/) - A dynamic tiling Wayland compositor
- **File Manager**: [yazi](https://yazi-rs.github.io/) - Terminal file manager with git integration
- **Terminal**: [ghostty](https://github.com/mitchellh/ghostty) with zsh + powerlevel10k
- **Theme**: Catppuccin color schemes across applications

## 📦 Key Components

- **Shell**: zsh with Oh My Zsh
  - Plugins: git, zsh-autosuggestions, zsh-syntax-highlighting, and more
- **Terminal Multiplexer**: tmux
- **System Monitor**: btop
- **Additional Tools**: 
  - superfile (with multiple themes)
  - fastfetch
  - eza (modern ls replacement)

## 🛠️ Installation

### 1. Install yadm

Choose your package manager:

#### Arch Linux
```bash
pacman -Syu yadm
```

#### Ubuntu/Debian
```bash
sudo apt-get install yadm
```

#### macOS (Homebrew)
```bash
brew install yadm
```

### 2. Clone Dotfiles
```bash
yadm clone https://github.com/UlmerMan/dotfiles.git
```

When prompted about running the bootstrap script (which installs Homebrew), type "y" to proceed.

### 3. Set Environment Class
```bash
yadm config local.class <desktop-environment>
```

---
*Managed with [yadm](https://yadm.io/) - Yet Another Dotfiles Manager*
