export ZSH="/home/pibu/.oh-my-zsh"
ZSH_THEME="half-life"

plugins=(
	git
	history-substring-search
	colored-man-pages	        
	zsh-autosuggestions	    
	zsh-syntax-highlighting	        
	zsh-z		
)

source $ZSH/oh-my-zsh.sh

# aliases
#alias ls='lsd'
#alias l='ls -l'
#alias la='ls -a'
#alias lla='ls -la'
#alias lt='ls --tree'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle :compinstall filename '/home/pibu/.zshrc'

autoload -Uz compinit
compinit



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=/home/pibu/.local/bin/:$PATH
