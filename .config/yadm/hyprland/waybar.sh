#!/bin/bash

detect_distro() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo "$ID"
    else
        echo "unknown"
    fi
}

install_waybar() {
    local distro=$(detect_distro)
    
    case "$distro" in
        "arch")
            echo "Installing Waybar and dependencies for Arch Linux..."
            
            # Check if packages are already installed
            if ! pacman -Qs waybar ttf-jetbrains-mono ttf-font-awesome pavucontrol xdg-desktop-portal-hyprland > /dev/null; then
                # Install required packages
                sudo pacman -S --noconfirm \
                    waybar \
                    ttf-jetbrains-mono \
                    ttf-font-awesome \
                    pavucontrol \
                    xdg-desktop-portal-hyprland
            else
                echo "Waybar and dependencies are already installed."
            fi
            ;;
            
        "debian"|"ubuntu")
            echo "Installing Waybar and dependencies for Debian/Ubuntu..."
            sudo apt-get update
            sudo apt-get install -y \
                waybar \
                fonts-jetbrains-mono \
                fonts-font-awesome \
                pavucontrol \
                xdg-desktop-portal \
                xdg-desktop-portal-gtk
            ;;
            
        "fedora")
            echo "Installing Waybar and dependencies for Fedora..."
            sudo dnf install -y \
                waybar \
                jetbrains-mono-fonts \
                fontawesome-fonts \
                pavucontrol \
                xdg-desktop-portal \
                xdg-desktop-portal-gtk
            ;;
            
        *)
            echo "Unsupported distribution: $distro"
            echo "Please install Waybar and dependencies manually:"
            echo "- waybar"
            echo "- JetBrains Mono font"
            echo "- Font Awesome"
            echo "- pavucontrol"
            echo "- xdg-desktop-portal"
            echo "- xdg-desktop-portal-hyprland (for Hyprland)"
            return 1
            ;;
    esac

    # Ensure Waybar config directory exists
    mkdir -p "$HOME/.config/waybar"

    # Reload Waybar if it's running
    if pgrep waybar > /dev/null; then
        echo "Restarting Waybar..."
        killall waybar
        waybar &
    fi

    echo "Waybar setup completed."
}

# Run the installation
install_waybar
