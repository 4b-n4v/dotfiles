export ZSH="$HOME/.config/oh-my-zsh/.oh-my-zsh"
fpath=(~/.config/oh-my-zsh/custom/functions $fpath)
# Set zsh theme
# Put "random" for a random theme everytime zsh boots
ZSH_THEME="ys"
autoload _zellij

# For case sensitive completion
# CASE_SENSITIVE="true"

# Omz updates:
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Which plugins would you like to load?
plugins=(git zoxide gh fzf archlinux zsh-syntax-highlighting zsh-autosuggestions web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export TERMINAL=kitty
## Meson Environment Variables
export CC='clang'
export CXX='clang++'
# export MANPATH="/usr/local/man:$MANPATH"

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

# -COMMAND ALIASES- 
alias p="sudo pacman"
alias c="clear"
alias z="zellij"
alias s="sudo"
alias lg="lazygit"
alias zc="zellij -l compact"
alias rm="rm -i"
alias mv="mv -i"
alias ls="exa --group-directories-first -l"
alias lst="exa -a -l -h -U -T --ignore-glob=\"git\""
alias wdunlock="sudo sg_raw -s 40 -i ~/.wdpassport-utils/password.bin /dev/sda c1 e1 00 00 00 00 00 00 28 00"

# -SHELL SCRIPT ALIASES-
alias lvim="~/.dotfiles/Documents/scripts/learnvim.sh"
alias reset_tty="~/.dotfiles/Documents/scripts/reset_tty.sh"
alias bak="~/.dotfiles/Documents/scripts/create_backup.sh"
alias vim="nvim"
alias bt="bluetuith"

# -EDIT CONFIGS-
alias zshconf="nvim ~/.zshrc"
alias i3conf="nvim ~/.config/i3/config"
alias alacconf="nvim ~/.config/alacritty/alacritty.toml"
alias barconf="nvim ~/.config/polybar/config.ini"
alias roficonf="nvim ~/.config/rofi/config.rasi"
alias keyconf="sudo nvim /etc/keyd/default.conf"
alias picconf="nvim ~/.config/picom/picom.conf"
alias kittyconf="nvim ~/.config/kitty/kitty.conf"
alias yaziconf="nvim ~/.config/yazi/yazi.toml"
alias zellconf="nvim ~/.config/zellij/config.kdl"
alias neorgconf="nvim ~/.config/nvim/lua/custom/plugins/neorg.lua"
alias hyprconf="nvim ~/.config/hypr/"
alias wbarconf="nvim ~/.config/waybar/"

# -CD CONFIGS-
alias zshdir="cd ~/.oh-my-zsh"
alias nvimdir="cd ~/.config/nvim"
alias i3dir="cd ~/.config/i3"
alias aladir="cd ~/.config/alacritty"
alias bardir="cd ~/.config/polybar"
alias rofidir="cd ~/.config/picom"
alias yazidir="cd ~/.config/yazi"
alias autodir="cd ~/.config/autorandr"
alias zelldir="cd ~/.config/zellij"
alias hyprdir="cd ~/.config/hypr/"
alias wbardir="cd ~/.config/waybar/"
alias minecraftdir="cd ~/.local/share/PrismLauncher/instances/1.21/.minecraft/"
alias spicedir="cd ~/.config/spicetify/"

# For changing displays and speaker outputs
alias speaker="pactl set-default-sink"
alias display="autorandr -l"

# YAZI
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}


# OPTIONAL INSTALLS 

# Dart 2.12.0
export PATH="/opt/dart-sdk-2-12-0/bin:$PATH"

# Setting zellij to autostart
# eval "$(zellij -l compact setup --generate-auto-start zsh)"
