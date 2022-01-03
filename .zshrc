export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"

plugins=(
	git
	history-substring-search
	colored-man-pages	        
	zsh-autosuggestions	    
	zsh-syntax-highlighting	        
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
alias cl='clear'
alias ht='htop'

alias ins='brew install'
alias rem='brew uninstall'
alias upd='brew update && brew upgrade'
alias list='brew list'
alias info='brew info'
alias comp='brew install --build-from-source'
alias monobrew='arch -x86_64 /usr/local/bin/brew'

alias arm='arch -arm64'
alias i386='arch -x86_64'

alias lsa='ls -a'
#alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias python='python3'
alias pip='pip3'

alias sh='bash'

alias vim='nvim'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle :compinstall filename '/home/pibu/.zshrc'

autoload -Uz compinit
compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color
export EDITOR="nvim"

source $HOME/.path
