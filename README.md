# macos-setup

This repo contains scripts and files for William Gao to set up his macOS.  Note that the scripts are specifically made for Z shell 
(default after macOS 10.15 Catalina). 


Created around March, 2021.


## Steps

### Pre-install

- Install Git

```
xcode-select --install

# check version
git --version
```

- Install Homebrew

https://brew.sh/


### Installation scripts

A compiled version of all installations as a shell script is located at `./install.sh`. Or, install manually by following the commands below:


- brew packages

```shell
# tree command
brew install tree
```

- Python

```shell
brew install python

# install pipx
brew install pipx

# install virtualenv
pipx install virtualenv


# create environments
# virtualenv ~/venv/toil_env -p 3.8
# virtualenv ~/venv/binf_env -p 3.8
```

Make sure to append the following to `~/.zshrc`, otherwise some commands might not be recognized.

```shell
export PATH="$HOME/.local/bin:$PATH";
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

alias toil_env="source ~/venv/toilenv/bin/activate"
alias binf_env="source ~/venv/binf_env/bin/activate"
```

- Jupyter notebook

```
# activate binf env
binf_env

pip install jupyterlab
pip install notebook
```


### Further customization

- System preferences

Follow [this gist](https://gist.github.com/w-gao/ce9b03298e918c6d2e2e3d151aff2e90) to customize the system.  These can probably be done with a script but I'm too lazy to look them up.

