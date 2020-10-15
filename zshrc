[[ "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" && $TERM != "screen" ]] && exec tmux

export ZSH="/home/alessandro/.oh-my-zsh"

export TERM="xterm-256color"

ZSH_THEME="kafeitu"

plugins=(
  git
  dnf
  docker-compose
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias say='espeak-ng'

git_remove_dead_branches() {
  git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
}

[[ -f ~/.localrc ]] && source ~/.localrc
