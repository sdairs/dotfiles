export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

HIST_STAMPS="yyyy-mm-dd"
 
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias config='/usr/bin/git --git-dir=/Users/ab/.cfg/ --work-tree=/Users/ab'
alias ls='eza'
alias l='eza -lbF --git'
alias ll='eza -lbGF --git'
alias cl='clear && ll'
alias code='windsurf'
alias c='windsurf .'

export GPG_TTY=$(tty)
gpgconf --launch gpg-agent

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
