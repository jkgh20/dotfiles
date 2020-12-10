#!/bin/bash

set -x

cp dotfiles/.bash_profile ~
cp dotfiles/.gitconfig ~
cp dotfiles/.vimrc ~

mkdir -p ~/.config/git/
cp dotfiles/ignore ~/.config/git/

mkdir -p ~/.config/karabiner/
cp dotfiles/karabiner.json ~/.config/karabiner/

mkdir -p ~/Library/Application\ Support/Spectacle/
cp dotfiles/Shortcuts.json ~/Library/Application\ Support/Spectacle/

mkdir -p ~/Library/Application\ Support/Code/User/
cp dotfiles/settings.json ~/Library/Application\ Support/Code/User/
ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code

mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
cp dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
