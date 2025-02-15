#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# --- Update and Install Packages ---
echo "[*] Updating package lists..."
sudo apt update

echo "[*] Installing packages: flameshot, kitty, fastfetch, rofi, neovim, cargo, git"
sudo apt install -y flameshot kitty fastfetch rofi neovim cargo git

# --- Ensure Cargo’s bin directory is in your PATH ---
if ! echo "$PATH" | grep -q "$HOME/.cargo/bin"; then
    echo "export PATH=\$PATH:\$HOME/.cargo/bin" >> ~/.bashrc
    export PATH="$PATH:$HOME/.cargo/bin"
    echo "[*] Added \$HOME/.cargo/bin to PATH (and updated ~/.bashrc)"
fi

# --- Install rustscan via Cargo ---
echo "[*] Installing rustscan with cargo..."
cargo install rustscan --root ~/.cargo

# --- Set Up NVChad for Neovim ---
# Clone NVChad starter config if it doesn't already exist.
if [ ! -d "$HOME/.config/nvim" ]; then
    echo "[*] Cloning NVChad configuration into ~/.config/nvim..."
    git clone https://github.com/NvChad/starter "$HOME/.config/nvim"
else
    echo "[!] ~/.config/nvim already exists; skipping NVChad clone."
fi

# Copy NVChad config to /etc/skel so that future users will have it by default.
echo "[*] Copying NVChad configuration to /etc/skel for new users..."
sudo mkdir -p /etc/skel/.config
sudo cp -r "$HOME/.config/nvim" /etc/skel/.config/

# --- Launch Neovim ---
echo "[*] Launching Neovim to complete NVChad setup..."
nvim
