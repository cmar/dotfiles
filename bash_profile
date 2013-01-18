source ~/.git-prompt.sh
source ~/.git-completion.bash

PS1='\! \e[0;36m\w/\e[m\e[0;33m$(__git_ps1 " (%s)")\e[m \e[0;35m⌘\e[m '

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Use Custom VIM build
export EDITOR="/usr/local/bin/vim"
alias vim=$EDITOR
alias vi=$EDITOR

alias ls='ls -G'

alias gs='git s'
alias gl='git l'
alias sha='git rev-parse HEAD | tr -d "\n" | pbcopy'

alias be="bundle exec"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias rspec="bundle exec rspec"
alias rake="bundle exec rake"
alias cap="bundle exec cap"
alias foreman="bundle exec foreman"

export PATH="/usr/local/bin:${PATH}"
export CDPATH="~/code"

# ssh-add /Users/cmar/.ssh/heroku_rsa > /dev/null 2>&1
