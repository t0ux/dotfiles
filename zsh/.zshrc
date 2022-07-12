# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export PATH=/opt/homebrew/bin:$PATH
export NVM_DIR="$HOME/.nvm"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

plugins=(zsh-autosuggestions)
#
###########################################
### +++++++ ADD COSTUMS BELOW ++++++++ ###
#########################################

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
export PATH="/Users/toux/.local/bin:$PATH"
export PATH="~/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server:$PATH"

# Golang
export GOPATH=$HOME/go
export GOROOT=/usr/local/go

# Python
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/bin/python3
export PATH=$PATH:$HOME/Library/Python/3.8/lib/python/site-packages/
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

######################################
### ----> DIRECTORY ALIASES <---- ###
####################################

alias src="source ~/.zshrc"
alias code="cd ~/Projects"
alias dl="cd ~/Downloads"
alias dots="cd ~/dotfiles"
alias vi="nvim"
alias she="vi ~/dotfiles/zsh/.zshrc"
alias kit="vi ~/dotfiles/kitty.conf"
alias nvi="vi ~/dotfiles/nvim"
alias tmu="vi ~/dotfiles/.tmux.conf"
alias x="exit"
alias gco="git checkout"
alias gc="git commit"
alias ga="git add"
alias gp="git push"

echo "
████████╗░█████╗░██╗░░░██╗██╗░░██╗
╚══██╔══╝██╔══██╗██║░░░██║╚██╗██╔╝
░░░██║░░░██║░░██║██║░░░██║░╚███╔╝░
░░░██║░░░██║░░██║██║░░░██║░██╔██╗░
░░░██║░░░╚█████╔╝╚██████╔╝██╔╝╚██╗
░░░╚═╝░░░░╚════╝░░╚═════╝░╚═╝░░╚═╝"
echo "[+] .zshrc configuration loaded [+]"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

