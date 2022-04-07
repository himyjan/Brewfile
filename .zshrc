export PATH="/Users/user/.bun/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
# bun completions
[ -s "/Users/user/.bun/_bun" ] && source "/Users/user/.bun/_bun"

# clone antidote if necessary
if ! [[ -e ${ZDOTDIR:-~}/.antidote ]]; then
  git clone https://github.com/mattmc3/antidote.git ${ZDOTDIR:-~}/.antidote
fi

# source antidote and load plugins from `${ZDOTDIR:-~}/.zsh_plugins.txt`
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

autoload -U promptinit; promptinit
prompt pure
