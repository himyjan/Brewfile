# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
export PATH="/Users/user/.bun/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
# bun completions
[ -s "/Users/user/.bun/_bun" ] && source "/Users/user/.bun/_bun"

export PATH="/opt/homebrew/opt/node@18/bin:$PATH"

# Load Angular CLI autocompletion.
source <(ng completion script)

export LANG=en_US.UTF-8

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
export PATH="/opt/homebrew/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
