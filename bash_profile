source /usr/local/Cellar/git/1.8.1/etc/bash_completion.d/git-prompt.sh
source /usr/local/Cellar/git/1.8.1/etc/bash_completion.d/git-completion.bash

PS1='\! \e[0;36m\w/\e[m\e[0;33m$(__git_ps1 " (%s)")\e[m \e[0;35m⌘\e[m '

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Use Custom VIM build
export EDITOR="/usr/local/bin/vim"
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

bundled="rspec rake cap foreman"
for cmd in $bundled
do
  alias $cmd="bundle exec $cmd"
done

export PATH="/usr/local/bin:${PATH}"
export CDPATH="~/code"

# ssh-add /Users/cmar/.ssh/heroku_rsa > /dev/null 2>&1