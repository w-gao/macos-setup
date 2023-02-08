# wlgao's .zshrc template
# Updated on Dec 15, 2022
# Updated on Feb 08, 2023


# zsh prompt ----------------------------------------------

PROMPT='%F{cyan}%n%f %1~ %# '


# zsh settings --------------------------------------------

setopt +o nomatch


# Colors --------------------------------------------------

alias ls="ls -hG"
export LSCOLORS="gxfxcxdxbxhxhxhxhxCxCx"

alias grep="grep --color=auto"


# history settings ----------------------------------------

export LESSHISTSIZE=0
export LESSHISTFILE=-


# Python --------------------------------------------------

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias toil_env=". ~/venv/toil_env/bin/activate"
alias bme205_env=". ~/venv/bme205_env/bin/activate"
alias cse144_env=". ~/venv/cse144_env/bin/activate"
alias ecnet_env=". ~/venv/ecnet_env/bin/activate"


# frontend web development --------------------------------


# Golang --------------------------------------------------

export PATH=~/go/bin:$PATH

# Java ----------------------------------------------------

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"


# Aliases -------------------------------------------------

alias k=kubectl


# Docker --------------------------------------------------

export TOIL_DOCKER_REGISTRY=quay.io/wlgao

