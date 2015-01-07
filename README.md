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
* source-code-pro fonts
* tmux
* gnome-do
* xcompmgr

## Additional Instructions

### Vim plugins

Start ``vim`` and run ``:BundleInstall``, which automatically installs all vim plugins.

### Qt4 theme

Use _qtconfig-qt4_ to tell Qt4 to use the GTK+ theme and font.

### SSH key management

gpg-agent can handle GPG keys as well as SSH keys. In order to use your SSH key
with gpg-agent you have to run ``ssh-add`` once to store the key's fingerprint
in ~/.gnupg/sshcontrol.

