source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/brew_bash_completion.sh
source /usr/local/etc/bash_completion.d/tmux
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37

PS1='\e[0;34m$(echo $RUBY_VERSION) \e[0;36m\w/\e[m\e[0;33m$(__git_ps1 " (%s)")\e[m \e[0;31m⌘\e[m '

complete -W "$(grep 'Host\ ' ~/.ssh/config | cut -d ' ' -f 4)" ssh
complete -W "$(chruby)" chruby

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
alias bs="bundle show --paths | xargs ag"

alias pmux="tmux -S /tmp/pair"

bundled="rspec rake cap foreman middleman"
for cmd in $bundled
do
  alias $cmd="bundle exec $cmd"
done
