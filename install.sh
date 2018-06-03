#!/usr/bin/env bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install base packages
brew install git wget

# Install FZF, Z & FZ
brew install fzf
mkdir ~/.bash_completion.d
curl "https://raw.githubusercontent.com/rupa/z/master/{z.sh}" -o ~/.bash_completion.d/"#1"
curl "https://raw.githubusercontent.com/changyuheng/fz/master/{fz.sh}" -o ~/.bash_completion.d/z"#1"
reload

# Install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
reload
nvm install 9

# Install SDKMan
curl -s "https://get.sdkman.io" | bash
reload
sdkman install java

brew install goenv
brew install rbenv
brew install emacs --with-cocoa --with-gnutls --with-rsvg --with-imagemagick

brew install kylef/formulae/podenv
podenv install 1.5.2

# Install Emacs
brew install emacs --with-cocoa --with-gnutls --with-rsvg --with-imagemagick

# Install fonts
sh ./fonts/install.sh
