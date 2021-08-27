export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"

plugins=(
	git
	history-substring-search
	colored-man-pages	        
	zsh-autosuggestions	    
	zsh-syntax-highlighting	        
	zsh-z
  zsh-256color
)

source $ZSH/oh-my-zsh.sh

# remove '%' at the end of a line
unsetopt prompt_cr prompt_sp

# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[command]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=cyan'

# aliases
alias sear='yay -Ss'
alias cl='clear'
alias ht='htop'
alias ins='yay -S'
alias rem='yay -Rsu'
alias upd='yay -Syu'
alias exi='yay -Q'
alias info='yay -Qi'
alias lsa='ls -a'
#alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

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
export PATH=$HOME/.local/bin/:$HOME/go/bin/:/usr/local/sbin:$PATH
