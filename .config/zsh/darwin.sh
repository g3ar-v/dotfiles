[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
       # GREEN="$(tput setaf 2)"
      BLUE="$(tput setaf 4)"
      # CYAN="$(tput setaf 6)"
      # YELLOW="$(tput setaf 3)"
      RESET="$(tput sgr0)"
        
  # echo "            #######:                      "
  # echo "            #:.   ##                      "
  # echo "   :###:##        ##   :####     ##.####  "
  # echo "  .#######        ##   ######    #######  "
  # echo "  ###  ###    #####    #:  :##   ###.     "
  # echo "  ##.  .##    #####.    :#####   ##       "
  # echo "  ##    ##        ##  .#######   ##       "
  # echo "  ##.  .##        ##  ## .  ##   ##       "
  # echo "  ###  ###  #:    ##  ##:  ###   ##       "
  # echo "  .#######  #######:  ########   ##       "
  # echo "   :###:##  :#####:     ###.##   ##       "
  # echo "   #.  :##                                "
  # echo "   ######                                 "
  # echo -e "${RESET}"


# Fig pre block. Keep at the top of this file.

  eval "$(/opt/homebrew/bin/brew shellenv)"
  #fortune .config/fortune_mod/quotes
  export ZSH=$HOME/.config/zsh
  export EDITOR="nvim"
  export PAGER="most"
  export HISTFILE=$HOME/.config/zsh/.zsh_history

  setopt extended_glob


# set default prompt if zsh config can't be found   
# [[ -z "$ZSH" ]] && export ZSH="${${(%):-%x}:a:h}"

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

  ZSH_THEME="agnoster"

  #for autocompletion
  #zsh-autocomplete zsh-syntax-highlighting
  plugins=(copypath zsh-z zsh-vi-mode zshmarks shrink-path zsh-autosuggestions )

  source $ZSH/oh-my-zsh.sh

  # Aliases
  alias ll="exa -l -g --icons"
  alias lla="exa -l -g -a --icons --sort name"
  alias connect="ssh richard@192.168.100.97"
  alias tree="tree -C"
  alias g="git"
  alias gdir='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  
  [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
  
  eval "$(/opt/miniconda3/bin/conda shell.zsh hook)"

  export PATH="/usr/local/opt/node@14/bin:$PATH"

  #Custom scripts location
  PATH=$HOME/scripts:$PATH

  # >>> conda initialize >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ $? -eq 0 ]; then
      eval "$__conda_setup"
  else
      if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
          . "/opt/miniconda3/etc/profile.d/conda.sh"
      else
          export PATH="/opt/miniconda3/bin:$PATH"
      fi
  fi
  unset __conda_setup
  # <<< conda initialize <<<

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
