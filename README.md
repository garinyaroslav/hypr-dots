# Dotfiles

Arch Linux and Hyprland desktop environment.

## 🚀 Quick Installation

### Prerequisites

- Arch Linux or derivative (EndeavourOS, Manjaro, etc.)
- Internet connection
- `sudo` privileges

### Installation Steps

1. **Clone the repository to your home directory:**

   ```bash
   cd ~
   git clone https://github.com/garinyaroslav/hypr-dots.git

    Run the installation script:

cd ~/hypr-dots
chmod +x install.sh
./install.sh

Set up the configuration files:

# Copy configs to appropriate locations
cp -r .config ~/
cp .zshrc ~/

Reload your shell:

    source ~/.zshrc

    Or log out and log back in.

📁 Configuration Structure

~/
├── .config/
│   ├── ashell/        # Ashell terminal configuration
│   ├── flameshot/     # Screenshot tool settings
│   ├── ghostty/       # Ghostty terminal config
│   ├── alacritty/     # Alacritty terminal config
│   ├── hypr/          # Hyprland WM configuration
│   ├── nvim/          # Neovim editor setup
│   ├── tmux/          # Tmux multiplexer config
│   └── wofi/          # Application launcher
├── .zshrc             # Zsh configuration
├── .gitignore         # Git ignore rules
├── install.sh         # Package installation script
└── README.md          # This file

🛠️ Included Software

The installation script installs the following software:
Essential Packages

    Terminals: Ghostty, Alacritty, Zsh with Oh My Zsh

    Desktop: Hyprland, Hyprpaper, Hyprlock, Wayland

    Browsers: Firefox, Chromium

    Communication: Discord, Telegram

    Editors: Neovim, Vim

    Tools: Docker, Tmux, Yazi, FZF, Ripgrep, FD

    Productivity: LibreOffice, GIMP, Flameshot

Development Tools

    Languages: Go, Node.js, Java (JDK 21 & 25)

    Utilities: LazyGit, Tree-sitter, GCC

    Fonts: FiraCode Nerd Font
