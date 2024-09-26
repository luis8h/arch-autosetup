#!/bin/bash

# cargo/rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 20

# packages
sudo pacman -S --noconfirm kitty
sudo pacman -S --noconfirm zsh
sudo pacman -S --noconfirm tree
sudo pacman -S --noconfirm fzf
sudo pacman -S --noconfirm zoxide
sudo pacman -S --noconfirm tmux
sudo pacman -S --noconfirm postgresql-client
sudo pacman -S --noconfirm neovim
sudo pacman -S --noconfirm xclip
sudo pacman -S --noconfirm ripgrep
sudo pacman -S --noconfirm fd
sudo pacman -S --noconfirm silicon
sudo pacman -S --noconfirm less
sudo pacman -S --noconfirm ttf-jetbrains-mono-nerd

cargo install tree-sitter-cli


# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

# oh my posh - currently not used (needs homebrew)
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> "${HOME}/.profile"
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# brew install jandedobbeleer/oh-my-posh/oh-my-posh

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source-file ~/.config/tmux/tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
