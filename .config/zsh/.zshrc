  # ** Not working **
  # if type "$(exa)" > /dev/null; then
  #   sudo apt install exa
  #   sudo apt install tree
  # fi

  export ZSH=$HOME/.config/zsh
  export EDITOR="nvim"
  export HISTFILE=$HOME/.config/zsh/.zsh_history
  export OPENAI_API_KEY="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" # money
  # export OPENAI_API_KEY="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" # free
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
  export PATH="$HOME/Documents/__core__/bin:$PATH"
  #zsh-autocomplete
  plugins=(copypath zsh-vi-mode z zshmarks shrink-path zsh-autosuggestions zsh-syntax-highlighting)

  source "$ZSH/oh-my-zsh.sh"

  # Aliases 
  alias ll="exa -l -g --icons"
  alias lla="exa -l -g -a --icons --sort name"
  alias tree="tree -C"
  alias g="git"
  alias gdir='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  alias meconfig='mycroft-config edit user'
  alias mra='$HOME/Documents/__core__/start-mycroft.sh all restart'
  alias mrs='$HOME/Documents/__core__/start-mycroft.sh skills restart'
  alias mraudio='$HOME/Documents/__core__/start-mycroft.sh audio restart'
  
  cd "$HOME/Documents/__core__/" || exit
  source "$HOME/Documents/__core__/venv-activate.sh" -q




# JINA_CLI_BEGIN

## autocomplete
if [[ ! -o interactive ]]; then
    return
fi

compctl -K _jina jina

_jina() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(jina commands)"
  else
    completions="$(jina completions ${words[2,-2]})"
  fi

  reply=(${(ps:
:)completions})
}

# session-wise fix
ulimit -n 4096
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# JINA_CLI_END



