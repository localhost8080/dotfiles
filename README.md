# localhost8080's dotfiles

This repository is a collection of all necessary configuration files and
related data to run my setup. 
It includes numix-solarised gtk themes, and solarized configs for as many things as I can add.

![snapshot of localhosts setup](https://raw.githubusercontent.com/localhost8080/dotfiles/master/screenshot.png)

The README shall also be a reminder of how to properly set it up, involving
the needed packages and configuration steps.


## Installation

./run_me

## Packages

The following packages are recommended:

* terminator
* tmux
* vim
* tint2
* openbox
* mc
* source-code fonts
* tmux

## Additional Instructions

### Vim plugins

In order to automatically install all Vim plugins you have to initialize and
update all git submodules, e.g. by running ``./install.py --submodules``, and
link the Vundle plugin ``./install -sf vim``.

Once you have all files in place, you simple start ``vim`` and run
``:BundleInstall``, which automatically installs all vim plugins.

The plugin _YouCompleteMe_ requires an additional step to build the completer
core ``~/.vim/bundle/YouCompleteMe/install.sh --clang-completer``.

### Qt4 theme

Use _qtconfig-qt4_ to tell Qt4 to use the GTK+ theme and font.

### SSH key management

gpg-agent can handle GPG keys as well as SSH keys. In order to use your SSH key
with gpg-agent you have to run ``ssh-add`` once to store the key's fingerprint
in ~/.gnupg/sshcontrol.

