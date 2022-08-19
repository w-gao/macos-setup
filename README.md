# macos-setup

This repo contains scripts and files for William Gao to set up his macOS.


Created around March, 2021. Updated on Aug 18, 2022.


## System customization

Follow [this gist](https://gist.github.com/w-gao/ce9b03298e918c6d2e2e3d151aff2e90) to set System preferences.


## Install Developer Tools

```shell
xcode-select --install
```

This also installs Git:

```shell
git --version
```

## Configure Git

1. Set global identity config

```shell
git config --global user.name "William Gao"
git config --global user.email "XXX"
```

2. Set up SSH keys


## Install Homebrew

https://brew.sh/


### Useful packages

```shell
brew install tree

```


## _(optional)_ Install Python

```shell
brew install python

# install virtualenv
brew install pipx
pipx install virtualenv

# create environments
# virtualenv ~/venv/toil_env -p 3.8
# virtualenv ~/venv/binf_env -p 3.8
# ...
```


Put this in the *Python* section in `~/.zshrc`

```shell
# add to $PATH
export PATH="$HOME/.local/bin:$PATH";
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# aliases
alias toil_env="source ~/venv/toilenv/bin/activate"
alias binf_env="source ~/venv/binf_env/bin/activate"
# ...
```


### _(optional)_ Jupyter notebook

```
# activate binf env
binf_env

pip install jupyterlab
pip install notebook
```

## Set up web dev environment

### Install Node.js

https://nodejs.org/en/download/

This will install `node` and `npm`

### Install `yarn`

If you need to use this as the package manager

```shell
npm install --global yarn
```

*NOTE*: This may need sudo permission


