# autoload
autoload -U zmv

# prompt
PROMPT='%U%B%F{cyan}%1~ %#%f%b%u '
set -o emacs

# alias
alias ll='ls -lGAh'
alias pbcopy='pbcopy && pbpaste'
alias sync='hub sync'
alias tree='tree --dirsfirst -a -N -F -I "\.DS_Store|\.git|node_modules|\.cache|dist|\.ts-cache"'

# hooks
eval "$(direnv hook zsh)"
eval "$(nodenv init - zsh)"
