export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/Users/david.eriksson/.dotnet/tools"
export PATH="$PATH:/Users/david.eriksson/.local/nvim/lsp_servers/omnisharp/omnisharp/OmniSharp:$PATH"
export PATH="$PATH:/usr/local/go/bin"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GOPATH=$GOPATH:/Users/david.eriksson/Development/godev

ZSH_THEME="cloud"

plugins=(
	git
	zsh-autosuggestions
  zsh-interactive-cd
  fzf
)

source $ZSH/oh-my-zsh.sh

alias nv="nvim"
alias nvdev="nv --cmd 'set rtp+=.' ."
alias sz="source ~/.zshrc"
alias gcm="git checkout main"
alias gct="git checkout test"
alias gcs="git checkout stage"
alias gcb="git checkout -b"
alias gdb="git branch | grep -v 'main' | grep -v 'stage' | xargs git branch -D"

alias nvz="nv ~/.zshrc"
alias nvn="cd ~/.config/nvim"
alias nvk="cd ~/.config/kitty"
alias dev="cd ~/Development"
alias devm="cd ~/Development/monza"
alias deva="cd ~/Development/monza-admin"
alias devcat="cd ~/Development/category-svc"
alias devc="cd ~/Development/cheat.nvim"
alias dwr="dotnet watch run"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcud="docker-compose up -d"
alias ys="yarn start"
alias ytu="yarn test:unit"
alias yti="yarn test:integration"
alias yta="yarn test"
alias e="exit"
alias cov="open coverage/lcov-report/index.html"
alias godev="cd ~/Development/godev"

alias luamake=/Users/david.eriksson/.config/nvim/lua-language-server/3rd/luamake/luamake

_-accept-line () {
    emulate -L zsh
    local -a WORDS
    WORDS=( ${(z)BUFFER} )
    local -r FIRSTWORD=${WORDS[1]}
    local -r GREEN=$'\e[32m' RESET_COLORS=$'\e[0m'
    [[ "$(whence -w $FIRSTWORD 2>/dev/null)" == "${FIRSTWORD}: alias" ]] &&
        echo -nE $'\n'"${GREEN}Executing -> ${$(which $FIRSTWORD)//"$FIRSTWORD: aliased to "/""}${RESET_COLORS}"
    [[ "$(whence -w $FIRSTWORD 2>/dev/null)" == "${FIRSTWORD}: function" ]] &&
        echo -nE $'\n'"${GREEN}Executing -> ${$(which $FIRSTWORD)//"$FIRSTWORD () {
    "/""}${RESET_COLORS}"
    zle .accept-line
}
zle -N accept-line _-accept-line
