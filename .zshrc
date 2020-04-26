# Open .zshrc to be edited in VS Code
alias change="code-insiders ~/.zshrc"

# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"

alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long'

# Source NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvmfpath=($fpath "/home/brian/.zfunctions")

fpath=($fpath "/home/brian/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Path to .z
source $HOME/.scripts/zsh-z/zsh-z.plugin.zsh
autoload -U compinit && compinit
zstyle ':completion:*' menu select

export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

source $(dirname $(gem which colorls))/tab_complete.sh

# Add colors to terminal commands (green command means that the command is valid)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
