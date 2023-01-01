# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv)"
#fortune .config/fortune_mod/quotes
#echo ""
#  export EDITOR="/Applications/Sublime\ Text.apllap/Contents/MacOS/sublime_text"
# If ZSH is not defined, use the current script's directory.
#zsh config dir
#export ZDOTDIR=$HOME/.config/zsh

export ZSH=/Users/g3ar/.config/zsh
export HISTFILE=$HOME/.config/zsh/.zsh_history
setopt extended_glob


[[ -z "$ZSH" ]] && export ZSH="${${(%):-%x}:a:h}"

# Set ZSH_CACHE_DIR to the path where cache files should be created
# or else we will use the default cache/
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZSH/cache"
fi

ZSH_CACHE_DIR="$ZSH/cache"

# Make sure $ZSH_CACHE_DIR is writable, otherwise use a directory in $HOME
if [[ ! -w "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
fi

# Create cache and completions dir and add to $fpath
mkdir -p "$ZSH_CACHE_DIR/completions"
(( ${fpath[(Ie)"$ZSH_CACHE_DIR/completions"]} )) || fpath=("$ZSH_CACHE_DIR/completions" $fpath)

export EDITOR="nvim"


#Java
export JAVA_HOME=$(/usr/libexec/java_home -v11)
export PATH=$JAVA_HOME/bin:$PATH


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# Fig pre block. Keep at the top of this file.
# to know which specific one was loaded, run: echo $RANDOM_THEME
# Load the theme

ZSH_THEME="agnoster"

#for autocompletion
#zsh-autocomplete
plugins=(copypath z shrink-path zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ll="exa -l -g --icons"
alias lla="exa -l -g -a --icons --sort name"
alias v="nvim" 
alias vim="nvim"
alias c="ssh richard@192.168.100.97"
alias tree="tree -C"
alias gdir='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/g3ar/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
  
bindkey -v

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
