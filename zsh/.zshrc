export ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/Users/david.eriksson/.dotnet/tools"

ZSH_THEME="cloud"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias nv="nvim"
alias sz="source ~/.zshrc"

alias nvz="nv ~/.zshrc" 
alias nvn="cd ~/.config/nvim" 
alias dev="cd ~/Development"
alias devm="cd ~/Development/monza"
