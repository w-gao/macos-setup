# Created by wlgao on 03/23/2021


# Colors
# ------
alias ls="ls -hG"

export LSCOLORS="gxfxcxdxbxhxhxhxhxcxcx"
# same as LSCOLORS, but for the tree command
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=37:cd=37:su=37:sg=37:tw=32:ow=32"

alias grep="grep --color=auto"
alias tree="tree -C"


# Aliases
# -------
alias toil_env="source ~/venv/toilenv/bin/activate"
alias binf_env="source ~/venv/binf_env/bin/activate"


# Env
# ---
export PATH="$HOME/.local/bin:$PATH";
export PATH="/usr/local/opt/python/libexec/bin:$PATH"  # python


export LESSHISTSIZE=0
export LESSHISTFILE=-

# disable for now since the cache locations can't be customized.
# export AWS_CONFIG_FILE="~/.config/.aws/config"
# export AWS_SHARED_CREDENTIALS_FILE="~/.config/.aws/credentials"


export IPYTHONDIR="~/.config/.ipython"
export JUPYTER_CONFIG_DIR="~/.config/.jupyter"

