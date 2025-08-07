# autoload
autoload -U zmv
autoload -U compinit && compinit

# setopt
setopt share_history

# prompt
PROMPT='%U%B%F{cyan}%1~ %#%f%b%u '
bindkey -e

# alias
alias ll='ls -lGAh'
alias pbcopy='pbcopy && pbpaste'
alias sync='hub sync'
#alias tree='tree --dirsfirst -a -N -F -I "\.DS_Store|\.git|node_modules|\.cache|dist|\.ts-cache"'

alias escli='node <(curl -fsSL https://$GITHUB_TOKEN:x-oauth-basic@raw.githubusercontent.com/quipper/es-web-tool/HEAD/escli)'

# hooks
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(direnv hook zsh)"

# misc
export PATH="$HOME/bin:$PATH"
export SAVEHIST=100000

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# zsh-autosuggestions
# To activate the autosuggestions, add the following at the end of your .zshrc:
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

## gcloud
#source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
#source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# https://zenn.dev/mizchi/articles/experimental-node-typescript
alias nodets="node --experimental-strip-types --experimental-transform-types --experimental-detect-module --no-warnings=ExperimentalWarning"
