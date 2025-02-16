# About
This is roughly what I use to set up my Kali XFCE VM. This will work on other display managers, with exception of the stuff that is unique to XFCE, such as the blur, and the config files in xfce4.

I have stollen allot from TypeCraft (https://github.com/typecraft-dev/dotfiles) (https://www.youtube.com/@typecraft_dev) inregards to the starship theme. All of the color themes are dracula. 

# Terminal Rice
![image](https://github.com/user-attachments/assets/70479c75-8ece-4e10-af46-ad1e0ff5ef12)

# Fastfestch
![image](https://github.com/user-attachments/assets/09447906-763c-44ce-889f-977dbc6133ca)

# XFCE Blur
https://github.com/dev-andi/xfce-blur-effects

# Xfwm Theme
https://github.com/addy-dclxvi/xfwm4-theme-collections#xfwm-gaps-joy

# Terminal
I use ghostty, but there is not any good ways to install ghostty just yet. My .zshrc uses soar to install it, but check the official site for updates. 
https://ghostty.org/docs/install/binary

# Baseline.sh
This script is designed to get the tools that the dots require installed and to support my hotkeys (tested on XFCE)

# Additional hotkeys
## Use this to display all open applications in rofi
```
/usr/bin/rofi -show window -modi window -theme '~/.config/rofi/app-launcher/launch.rasi'
```
# Other stuff not in the script that needs to be added
## Starship
```
curl -sS https://starship.rs/install.sh | sh
```

## Oh-my-ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
## ZSH Plugins
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
## Install Fonts
CaskaydiaCoveNerdFont
```
wget -O ~/Downloads/CaskaydiaCoveNerdFontComplete.ttf "https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/CaskaydiaCove/CaskaydiaCove%20Nerd%20Font%20Complete.ttf"
```
```
mkdir -p ~/.local/share/fonts
```
```
mv ~/Downloads/CaskaydiaCoveNerdFontComplete.ttf ~/.local/share/fonts/
```
```
fc-cache -fv
```
