export ZSH=$HOME/.config/zsh

if [[ "$OSTYPE" == "darwin"* ]] ; then
  source $ZSH/darwin.sh
fi

  # GNU/Linux specific code
if [[ "$OSTYPE" == "linux-gnu"* ]] ; then
  source $ZSH/linux.sh
fi
