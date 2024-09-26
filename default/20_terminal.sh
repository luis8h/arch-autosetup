#!/bin/bash

# homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> "${HOME}/.profile"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# packages
sudo pacman -S --noconfirm kitty
sudo pacman -S --noconfirm tree
sudo pacman -S --noconfirm fzf
sudo pacman -S --noconfirm zoxide
sudo pacman -S --noconfirm tmux

# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
# oh my posh - currently not used
brew install jandedobbeleer/oh-my-posh/oh-my-posh

# nerdfont
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source-file ~/.config/tmux/tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
