autoload -U zmv

export EDITOR=vim
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

PROMPT='%U%B%F{cyan}%1~ %#%f%b%u '
set -o emacs

alias load-config='\
curl -L https://gist.githubusercontent.com/kazuma1989/c2b454669a5acce2f225ab7d122dd1ea/raw/.zshrc        -o ~/.zshrc &&\
curl -L https://gist.githubusercontent.com/kazuma1989/c2b454669a5acce2f225ab7d122dd1ea/raw/settings.json -o ~/Library/Application\ Support/Code/User/settings.json'

alias python='python3'

alias ll='ls -lGAh'
alias pbcopy='pbcopy && pbpaste'
alias tree='tree --dirsfirst -a -N -F -I "\.DS_Store|\.git|node_modules|\.cache|dist|\.ts-cache"'

realpath () {
  echo "$(pwd)/$1"
}
mkdircd () {
  mkdir $1
  cd $1
}

alias sync='hub sync'
alias escli='npx quipper/es-web-tool#master'

eval "$(direnv hook zsh)"
eval "$(anyenv init - zsh)"

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi
