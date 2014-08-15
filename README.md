# localhost8080's dotfiles

This repository is a collection of all necessary configuration files and
related data to run my setup.

![snapshot of b52's setup](http://reaktor42.de/~b52/shots/2013-09-21-223903_1280x800_scrot.png)

The README shall also be a reminder of how to properly set it up, involving
the needed packages and configuration steps.


## Installation


./run_me

## Packages

The following packages are required in order to run the setup as it is
intended.

* zsh, tmux, gnupg2, rxvt-unicode-patched, gvim
* xmonad, xmonad-contrib, stalonetray, xmobar
* compton-git, notify-osd, xautolock, slock
* ttf-dejavu, proggyfonts, ttf-ms-win8, ttf-liberation
* elementary-icon-theme, gnome-icon-theme
* adwaita-x-dark-and-light-theme, xcursor-vanilla-dmz-aa
* cower, fb-client
* gmrun, parcellite

The following packages are just a reminder for myself.

* chrony, acpid
* ttf-droid
* dropbox, dropbox-cli
* texlive-most

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

