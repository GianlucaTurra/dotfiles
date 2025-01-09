# Startship
eval "$(starship init zsh)" 

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

zinit light zsh-users/zsh-completions # completions


# Syntax-Highlight ALWAYS AT THE END
zinit light zsh-users/zsh-syntax-highlighting
