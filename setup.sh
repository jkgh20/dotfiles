#!/bin/bash

#################################### About #####################################
# For MacOS Catalina

# NOTE: Invoke `git` before running to install Xcode command line tools

# No-op sudo to get authentication out of the way
sudo echo "Starting setup.sh at $(date)"

############################# MacOS Configurations #############################
# Disable accents pop-up and enable key repeats
defaults write -g ApplePressAndHoldEnabled -bool false
# No animations for new windows
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
# Gray out hidden icons in dock
defaults write com.apple.dock showhidden -bool true
# No delay for showing dock during mouse hover
defaults write com.apple.dock autohide-delay -float 0
# No animation for showing/hiding dock
defaults write com.apple.dock autohide-time-modifier -float 0
# Change where screenshots are saved
defaults write com.apple.screencapture location ~/Downloads/
# To add option to disable developer searches in Spotlight
touch /Applications/Xcode.app

################################### Homebrew ###################################
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install \
    bash \
    vim \
    git \
    fzf \
    jq \
    python \
    node \
    openjdk \
    kotlin \
    groovy \
    gradle \
    go

brew cask install \
    google-chrome \
    spotify \
    spectacle \
    karabiner-elements \
    flycut \
    alt-tab \
    iterm2 \
    visual-studio-code \
    sublime-text \
    intellij-idea-ce \
    pycharm-ce

################################ More Downloads ################################
./export-dotfiles.sh

# Use Homebrew bash as default shell
sudo chsh -s /usr/local/bin/bash

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

# C-t, C-r, M-c with fzf
yes | /usr/local/opt/fzf/install

# These export paths are also in .bash_profile
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
gem install --user-install bundler jekyll

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
rm get-pip.py
pip3 install virtualenv flake8

npm install -g typescript

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

code --install-extension alefragnani.bookmarks
code --install-extension eamodio.gitlens
code --install-extension kaiwood.center-editor-window
code --install-extension ms-python.python
code --install-extension ryu1kn.partial-diff
code --install-extension tyriar.sort-lines
code --install-extension waderyan.gitblame
code --install-extension yzhang.markdown-all-in-one

# open https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en
# open https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb?hl=en
# open https://chrome.google.com/webstore/detail/dark-reader/eimadpbcbfnmbkopoojfekhnkhdbieeh?hl=en-US
# open https://support.logi.com/hc/en-us/articles/360025297893
