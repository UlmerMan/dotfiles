# 🏠 UlmerMan's Dotfiles

A carefully curated collection of dotfiles managed with [yadm](https://yadm.io/), featuring configurations for:

## 🚀 Featured Configurations

- **Window Manager**: [Hyprland](https://hyprland.org/) - A dynamic tiling Wayland compositor
- **File Manager**: [yazi](https://yazi-rs.github.io/) - Terminal file manager with git integration
- **Terminal**: [ghostty](https://github.com/mitchellh/ghostty) with zsh + powerlevel10k
- **Theme**: Catppuccin color schemes across applications

## 📦 Key Components

- **Shell**: zsh with Oh My Zsh
  - Plugins: git, zsh-autosuggestions, zsh-syntax-highlighting, and more
- **Terminal Multiplexer**: tmux with custom plugins
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
