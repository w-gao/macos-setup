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

Use `pyenv` to manage different Python versions. See: https://github.com/pyenv/pyenv#homebrew-in-macos

```shell
brew update
brew install pyenv
```

Create virtual environments

```shell
python -m venv ~/venv/toil_env
python -m venv ~/venv/binf_env
```


Put this in the *Python* section in `~/.zshrc`

```shell
# aliases
alias toil_env=". ~/venv/toil_env/bin/activate"
alias binf_env=". ~/venv/binf_env/bin/activate"
# ...
```


### _(optional)_ Jupyter notebook

```
# activate binf env
binf_env

pip install jupyterlab
pip install notebook
```

## _(optional)_ Set up web dev environment

### Install Node.js

https://nodejs.org/en/download/

This will install `node` and `npm`

### Install `yarn`

If you need to use this as the package manager

```shell
npm install --global yarn
```

**NOTE**: This may require sudo permission


## _(optional)_ Install Java

Following [this](https://stackoverflow.com/a/66891978), it looks like the best
way to install Java on a Apple Silicon machine is through Homebrew.

```
brew install openjdk

# then follow brew info openjdk:
# let the system Java wrappers find it
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# add to PATH
echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
```


