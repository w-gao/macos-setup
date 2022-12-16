# macos-setup

This repo contains scripts and files for William Gao to set up his macOS.


Created around March, 2021. Updated on Dec 15, 2022.


## System customization

Follow [this gist](https://gist.github.com/w-gao/ce9b03298e918c6d2e2e3d151aff2e90) to set System preferences.


## Install Developer Tools

```shell
$ xcode-select --install
```

This also installs Git:

```shell
$ git --version
```

## Configure Git

1. Set global identity config

```shell
$ git config --global user.name "William Gao"
$ git config --global user.email "me@wlgao.com"
```

2. Set up SSH keys


## Install Homebrew

Install Homebrew by following the command here: https://brew.sh/


### Useful packages

```shell
$ brew install tree
$ brew install jq
```


## _(optional)_ Install Python

Use `pyenv` to manage different Python versions. See: https://github.com/pyenv/pyenv#homebrew-in-macos

```shell
$ brew update
$ brew install pyenv
```

Create virtual environments:

```shell
$ python -m venv ~/venv/toil_env
$ python -m venv ~/venv/binf_env
```

Put this in the *Python* section in `~/.zshrc`:

```
alias toil_env=". ~/venv/toil_env/bin/activate"
alias binf_env=". ~/venv/binf_env/bin/activate"
# ...
```


### _(optional)_ Jupyter notebook

```shell
$ binf_env
$ pip install jupyterlab
$ pip install notebook
```

## _(optional)_ JavaScript/TypeScript

### Install Node.js

Download and install Node.js here: https://nodejs.org/en/download/.
This will install `node` and `npm`.

### Install `yarn`

If you prefer `yarn` as your package manager.

```shell
$ npm install --global yarn
```

**NOTE**: This requires sudo permission.


## _(optional)_ Install Java

Following [this](https://stackoverflow.com/a/66891978), it looks like the best
way to install Java on a Apple Silicon machine is through Homebrew.

```shell
$ brew update
$ brew install openjdk

# then follow `brew info openjdk`:

# let the system Java wrappers find it
$ sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# add to PATH
$ echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
```


## _(optional)_ Docker

Download Docker Desktop for Mac here: https://docs.docker.com/desktop/install/mac-install/


Check installation:

```shell
$ docker --version
```


## _(optional)_ Kubernetes (k8s) client

If you are working with k8s clusters, you probably need `kubectl`.

### Install `kubectl`

```shell
$ brew update
$ brew install kubectl
```

It may be a good idea to alias kubectl to `k`:

```shell
$ echo 'alias k=kubectl' >> ~/.zshrc
$ . ~/.zshrc
```

### Configure `~/.kube/config`

This depends on the k8s cluster setup.
If working with multiple contexts, consider installing `kubectx` (and alias to `kx`) as well.


Check installation/configuration:

```shell
$ k version
```

This should display the versions of the client and server.


## _(optional)_ Kubernetes local cluster


If you want to set up a local kubernetes cluster for development, consider using `minikube`:

```shell
$ brew update
$ brew install minikube
```

**NOTE**: `minikube` needs a driver such as VirtualBox, hyperkit, or Docker. Docker works great.


Check installation:

```shell
$ minikube version
```


