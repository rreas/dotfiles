# Dial V for Vim
alias v='vim'

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~='cd ~'
alias q="cd ~/qcentrix"
alias aliases="v ~/.dotfiles/zsh/aliases.sh"
alias update_dotfiles='cd ~/.dotfiles && rake dotfiles:update'
alias c="clear"

# Starting a work session
alias work='tmuxinator new rails'

# Joining a work session
alias attach='tmux attach-session'

# Git Aliases
alias amend="echo 'use gca'; git commit --amend"
alias ga='git add'
alias gad='git add --all .'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit'
alias gca='git commit --amend'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gfo='git fetch origin --prune'
alias gd='git diff'
alias gg='git log'
alias gpush='echo "Use gp!"; git push'
alias gp='git push'
alias gpf='git push -f'
alias gpo='git push origin'
alias gpr='git pull'
alias grc='git rebase --continue'
alias gpom='git push -u origin master'
alias gs='git status'

# Ruby
alias b="bundle exec"
alias be="echo 'use b'; bundle exec"
alias bake="bundle exec rake"
alias bi="bundle install"
alias bu="bundle update"

# Postgresql
alias pgs="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgt="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"

# Show and hide files in Finder
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
