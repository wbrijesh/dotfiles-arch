if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

GPG_TTY=$(tty)
export GPG_TTY

export PATH=/home/$USER/.fnm:$PATH
eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"

# aliass
alias tmsrc="tmux source ~/.config/tmux/.tmux.conf"
alias ls="ls -lah --color=auto"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export SOFT_SERVE_INITIAL_ADMIN_KEYS="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH74MNOO2LAlDGERKsg1LxKlX3ibV2sFwhT60MDCrJhS brijesh@wawdhane.com"

# Turso
export PATH="/home/brijesh/.turso:$PATH"

if [ "$TERM_PROGRAM" = tmux ]; then
  tmux source ~/.config/tmux/.tmux.conf
else
  echo 'This terminal is not in TMUX, (todo: session selector)'
fi

# Shut Powerlevel10k up
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
