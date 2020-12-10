############################### Common commands ################################
# You can always fall back to using the original commands with \command

# Human readable, exclude . .., list, dir/, color
alias ls='ls -GhAlp'

cd() {
  if [[ $# -eq 0 ]]; then
    pushd ~
  elif [[ $1 == '-' ]]; then
    pushd
  else
    pushd "$1"
  fi
}
alias pd='popd'

# Print one entry per line
alias dirs='dirs -p'

alias cddesktop='pushd ~/Desktop/'
alias cddocuments='pushd ~/Documents/'
alias cddownloads='pushd ~/Downloads/'

alias dsstore='find . -name .DS_Store -type f -delete'

trash() {
  if [[ $# -ge 1 ]]; then
    mv "$@" ~/.Trash/
  fi
}

alias sb='source ~/.bash_profile'
alias eb='vim ~/.bash_profile'
alias eg='vim ~/.gitconfig'
alias ev='vim ~/.vimrc'
alias es='vim ~/.ssh/config'
alias ea='vim ~/.aws/credentials'

################################ Miscellaneous #################################
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\n\[\033[35m\][\D{%a %D %r}] \w\$(parse_git_branch)\[\033[0m\]\n"

# Unlimited history and format like PS1
HISTSIZE=
HISTFILESIZE=
HISTTIMEFORMAT='[%a %D %r]: '

# Unset C-S and C-Q
stty -ixon -ixoff

################################# Export PATHs #################################
# Homebrew ruby path
export PATH="/usr/local/opt/ruby/bin:$PATH"
# Add installed gems to path
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"

# Rust cargo path
export PATH="$HOME/.cargo/bin:$PATH"

############################## Source other files ##############################
if [[ -f ~/.git-completion.bash ]]; then
  source ~/.git-completion.bash
fi

if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi
