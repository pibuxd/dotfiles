export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"

plugins=(
	git
	history-substring-search
	colored-man-pages	        
	zsh-autosuggestions	    
	zsh-syntax-highlighting	        
	zsh-z		
)

source $ZSH/oh-my-zsh.sh

# remove '%' at the end of a line
unsetopt prompt_cr prompt_sp

# aliases
alias h='htop'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rsu'
alias boost='sudo pacman -Syyu'
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

export TERM=xterm-256color
export EDITOR="vim"
export PATH=$HOME/.local/bin/:$HOME/v:$PATH
