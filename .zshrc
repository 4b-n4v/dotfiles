export ZSH="$HOME/.config/.oh-my-zsh/"

# Set zsh theme
# Put "random" for a random theme everytime zsh boots
ZSH_THEME="ys"
autoload _zellij
set -o vi

# Omz updates:
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Which plugins would you like to load?
plugins=(git gh fzf archlinux zsh-syntax-highlighting zsh-autosuggestions web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export TERMINAL=kitty
## Meson Environment Variables
export CC='clang'
export CXX='clang++'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"


#  Flutter Environment Variables
export PATH="$HOME/.dev/flutter/bin:$PATH"
export ANDROID_HOME="$HOME/.dev/android_sdk"

# Language
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8 
# Preferred editor for local and remote sessions

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# ALIASES 
export wd=/run/media/n4v/Angelo_s\ Passport/

# -COMMAND ALIASES- 
alias tetrs="tetrs_terminal"
alias p="sudo pacman"
alias c="clear"
alias z="zellij"
alias zh="nvim ~/.zsh_history"
alias s="sudo"
alias v="nvim"
alias n="NVIM_APPNAME=\"nvim-neorg\" nvim"
alias lg="lazygit"
alias tvim="NVIM_APPNAME=\"nvim-typecraft\" nvim"
alias zc="zellij -l compact"
alias rm="rm -i"
alias mv="mv -i"
alias ls="eza --group-directories-first -l"
alias lst="eza -a -l -h -U -T --ignore-glob=\"git\""
alias wdunlock="sudo sg_raw -s 40 -i ~/.wdpassport-utils/password.bin /dev/sda c1 e1 00 00 00 00 00 00 28 00"
alias neorg="NVIM_APPNAME=\"nvim-neorg\" nvim"
alias pacinstalldates="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 10000"

# -SHELL SCRIPT ALIASES-
alias bak="~/.scripts/create_backup.sh"
alias vim="nvim"
alias bt="bluetuith"
alias mkClassDir="~/.scripts/mkClassDir.sh"

# -EDIT CONFIGS-
alias zshconf="nvim ~/.zshrc"
alias roficonf="nvim ~/.config/rofi/config.rasi"
alias keyconf="sudo nvim /etc/keyd/default.conf"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias zellconf="nvim ~/.config/zellij/config.kdl"
alias neorgconf="nvim ~/.config/nvim-neorg/lua/custom/plugins/neorg.lua"
alias hyprconf="nvim ~/.config/hypr/"
alias wbarconf="nvim ~/.config/waybar/"

# -CD CONFIGS-
alias zshdir="cd ~/.config/.oh-my-zsh/"
alias nvimdir="cd ~/.config/nvim"
alias rofidir="cd ~/.config/rofi"
alias zelldir="cd ~/.config/zellij"
alias hyprdir="cd ~/.config/hypr/"
alias wbardir="cd ~/.config/waybar/"
alias neorgdir="cd ~/.config/nvim-neorg/"
alias spicedir="cd ~/.config/spicetify/"


# Setting zellij to autostart
# eval "$(zellij -l compact setup --generate-auto-start zsh)"
eval "$(zoxide init --cmd cd zsh)"
