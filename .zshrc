# Open .zshrc to be edited in VS Code
alias change="code-insiders ~/.zshrc"

# Re-run source command on .zshrc to update current terminal session with new settings
alias update="source ~/.zshrc"

# Source NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source ~/.nvm/nvm.sh
fpath=($fpath "$HOME/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Path to .z
source $HOME/.zsh/zsh-z/zsh-z.plugin.zsh
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select

# Add colors to terminal commands (green command means that the command is valid)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
