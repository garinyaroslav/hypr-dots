#!/bin/sh

check_error() {
    if [ $? -ne 0 ]; then
        echo "Error: $1"
        exit 1
    fi
}

echo "Updating system and installing base-devel..."
sudo pacman -Syu --noconfirm --needed git base-devel
check_error "Unable to update system or install base-devel."

sudo pacman -S --noconfirm --needed ghostty firefox discord telegram-desktop neovim hyprland hyprpaper hyprlock wayland xorg-xwayland docker tmux yazi zoxide curl jq vim sudo thunar chromium btop wofi libreoffice-still flameshot gimp freerdp openvpn zsh lazygit tree-sitter-cli gcc go nodejs code jdk21-openjdk jdk25-openjdk fzf ripgrep fd zoxide
check_error "Unable to install required packages."

echo "Enabling and starting Docker service..."
sudo systemctl enable --now docker
check_error "Unable to enable/start Docker."
sudo usermod -aG docker "$USER"
check_error "Unable to add user to docker group."
echo "Для применения группы docker перелогиньтесь (logout/login)."

echo "Yay installation..."
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    check_error "Unable to clone yay repository."
    cd yay
    makepkg -s --noconfirm
    check_error "Unable to build yay package."
    sudo pacman -U --noconfirm yay-*.pkg.tar.zst
    check_error "Unable to install yay package."
    cd ..
    rm -rf yay
else
    echo "Yay already installed, skipping."
fi

echo "Updating AUR packages..."
yay -Syu --noconfirm
check_error "Unable to update AUR packages."

echo "Installing AUR packages..."
yay -S --noconfirm postman-bin ashell ttf-firacode-nerd clipse calcure peazip
check_error "Unable to install AUR packages."

echo "Setting zsh as default shell..."
sudo chsh -s /usr/bin/zsh "$USER"
check_error "Unable to set zsh as default shell."
echo "Zsh установлен как дефолтный. Перелогиньтесь для применения."

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc
check_error "Unable to install oh-my-zsh."

echo "Installation completed successfully!"
