# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
if [[ "$(uname -s)" == 'Darwin' ]] ; then
  # Mac OS X specific code
  
  # Fig pre block. Keep at the top of this file.
    eval "$(/opt/homebrew/bin/brew shellenv)"
  #fortune .config/fortune_mod/quotes

  export ZSH=$HOME/.config/zsh
  export EDITOR="nvim"
  export HISTFILE=$HOME/.config/zsh/.zsh_history
  # export OPENAI_API_KEY="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"
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


  #Java
  JAVA=$(/usr/libexec/java_home -v11)
  export JAVA_HOME=$JAVA
  PATH=$JAVA_HOME/bin:$PATH

  ZSH_THEME="agnoster"

  #for autocompletion
  #zsh-autocomplete zsh-syntax-highlighting
  plugins=(copypath z zsh-vi-mode zshmarks shrink-path zsh-autosuggestions )

  source $ZSH/oh-my-zsh.sh

  # Aliases
  alias ll="exa -l -g --icons"
  alias lla="exa -l -g -a --icons --sort name"
  alias connect="ssh richard@192.168.100.97"
  alias tree="tree -C"
  alias g="git"
  alias gdir='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  
  export PATH=/Users/g3ar/minconda/bin/conda:$PATH


  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    
  # enable Vim mode
  # bindkey -v

  # Fig post block. Keep at the bottom of this file.
    # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/Users/g3ar/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "/Users/g3ar/miniconda/profile.d/conda.sh" ]; then
# . "/Users/g3ar/opt/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize  # commented out by conda initialize
      else
# export PATH="/Users/g3ar/miniconda/bin:$PATH"  # commented out by conda initialize
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<

  export PATH="/usr/local/opt/node@14/bin:$PATH"

  #Custom scripts location
  PATH=$HOME/scripts:$PATH

elif [[ "$(uname -s)" == 'Linux' ]] ; then
  # GNU/Linux specific code
  #fortune .config/fortune_mod/quotes
  if type "$(exa)" > /dev/null; then
    sudo apt install exa
    sudo apt install tree
  fi

  export ZSH=$HOME/.config/zsh
  export EDITOR="nvim"
  export HISTFILE=$HOME/.config/zsh/.zsh_history
  setopt extended_glob
  bindkey -v

  # set default prompt if zsh config can't be found   
 # if  [[ -z "$ZSH" ]] && export ZSH="${${(%):-%x}:a:h}"; then

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
  # fi

  ZSH_THEME="agnoster"

  #for autocompletion
  #zsh-autocomplete
  plugins=(copypath zsh-vi-mode z shrink-path zsh-autosuggestions zsh-syntax-highlighting)

  source "$ZSH/oh-my-zsh.sh"

  # Aliases 
  alias ll="exa -l -g --icons"
  alias lla="exa -l -g -a --icons --sort name"
  alias tree="tree -C"
  alias g="git"
  alias gdir='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

else
  # Unknown.
  echo "Unknown OS or Just windows :("  
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
