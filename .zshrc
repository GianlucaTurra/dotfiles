# This is from brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Startship
eval "$(starship init zsh)" 

# Set nvim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH=$(go env GOPATH)/bin:$PATH # golang
export PATH="/home/linuxbrew/.linuxbrew/opt/node@22/bin:$PATH"

# Plugin manager Zinit

# Home directory for zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local.share}/zinit/zinit.git"

# Download Zinit, if not present
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source the zinit file
source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit light zsh-users/zsh-completions 
zinit light zsh-users/zsh-autosuggestions 
zinit light Aloxaf/fzf-tab
# Snippets
zinit snippet OMZP::git
zinit snippet OMZP::docker

zinit cdreplay -q

autoload -U compinit && compinit

# NOTE fzf
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
export FZF_DEFAULT_OPTS="--height 50% --layout=default --border"

# bat configuration
export BAT_THEME="ansi"

# yazi configuration
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Aliases
source ~/.zsh_aliases

# Always allow vi-mode
bindkey -v

# Keybindings
bindkey '^y' autosuggest-accept
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History for autosuggestions
HISTSIZE=2500
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors '${(s.:.)LS_COLORS}'
zstyle ':completion:*' menu no 
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# True color ?
export TERM="tmux-256color"

# True color ?
export TERM="tmux-256color"

# Syntax-Highlight ALWAYS AT THE END
zinit light zsh-users/zsh-syntax-highlighting
