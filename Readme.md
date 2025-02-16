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
This script is designed to get the tools that the dots require installed and to support my hotkeys

#Additional hotkeys
## Use this to display all open applications in rofi
```
/usr/bin/rofi -show window -modi window -theme '~/.config/rofi/app-launcher/launch.rasi'
```
# Other stuff not in the script that needs to be added
## Oh-my-ZSH
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
## Plugins
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
## Fonts
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
