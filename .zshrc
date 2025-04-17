export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

HIST_STAMPS="yyyy-mm-dd"
 
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
#alias config='/usr/bin/git --git-dir=/Users/al/.cfg/ --work-tree=/Users/al'
alias ls='eza'
alias l='eza -lbF --git'
alias ll='eza -lbGF --git'
alias cl='clear && ll'
alias code='windsurf'
alias c='windsurf .'

# Custom scripts
export PATH="/Users/ab/custom_scripts:$PATH"

# pnpm
export PNPM_HOME="/Users/ab/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by Windsurf
export PATH="/Users/ab/.codeium/windsurf/bin:$PATH"
alias claude="open -a Claude"
alias qclaude="echo \"👋 Goodbye from Claude\" && osascript -e 'quit app \"Claude\"'"

. "$HOME/.local/bin/env"

# Added by Windsurf
export PATH="/Users/al/.codeium/windsurf/bin:$PATH"
