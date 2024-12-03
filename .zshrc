export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking

HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

alias config='/usr/bin/git --git-dir=/Users/ab/.cfg/ --work-tree=/Users/ab'
alias pvc='python3.10 -m venv .venv'
alias pva='source .venv/bin/activate'
alias pvd='deactivate'
alias pvn='python3.10 -m venv .venv && source .venv/bin/activate'
alias pvr='rm -rf .venv'
alias dss='osascript /Applications/DocsScreenshots.scpt'
alias wod='cd ~/Desktop/devrel/documentation/analytics/ && pva && git checkout master && gfa && git pull && cd docs'
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
