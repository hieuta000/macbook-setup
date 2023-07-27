export PS1=$'\[\e]2;${USER}@\h::$PWD\[\a\]\[\e]1;${USER}@\h \W \a\]\[\033[1;33m\]\u\[\033[0m\]@\h:\[\033[36m\][\w$(__git_ps1 " (%s)")]:\[\033[0m\] '

umask 0002

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

export LDFLAGS="-L/opt/homebrew/opt/node@16/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@16/include"

export PATH="~/bin:/usr/local/sbin:/opt/homebrew/bin:/opt/homebrew/opt/node@16/bin:$PATH"

. ~/.git-prompt.sh

eval "$(direnv hook bash)"
eval "$(fnm env --use-on-cd)"

export PYTHON=/opt/homebrew/bin/python3

function getuuid {
    uuid=$(uuidgen | tr 'A-Z' 'a-z' | tr -d '\n')
    (osascript -e "display notification with title \"⌘-V to paste\" subtitle \"$uuid\"" &) >/dev/null 2>&1
    echo -n "$uuid" | pbcopy
}
export -f getuuid

export WORK_DIR=~/work/supermojo

alias wk='cd $WORK_DIR'
alias cp='cp -v'
alias ll='ls -al'
alias du='du -h -d1 .'
alias grep='grep --exclude-dir=node_modules'

alias be='cd $WORK_DIR/supermojo-backend'
alias fe='cd $WORK_DIR/supermojo-checkout-frontend'
alias co='cd $WORK_DIR/supermojo-checkout-frontend'
alias we='cd $WORK_DIR/web6'
alias ma='cd $WORK_DIR/marketplace-showcase'
alias da='cd $WORK_DIR/supermojo-dashboard-frontend'

alias gpr='git pull --rebase'
alias gp='git pull'
alias gc='git checkout'
alias gcm='git checkout main'
alias gs='git status'
alias gsw='git switch'
alias gb='git branch'
alias gt='git ls-remote --tags'
alias gcp="git cherry-pick"
alias greset='git reset –-hard'
alias gbclean='git branch --merged | egrep -v "(^\*|main|dev)" | xargs git branch --verbose -d'
alias gdlastcommit='git diff HEAD^ HEAD'

alias ypmd='yarn prisma migrate dev'
alias yps='yarn prisma studio'
alias yi='yarn install'
alias yb='yarn build'
alias yt='yarn test'
alias hh='cd ~/work/supermojo/web6/packages/server;yarn hardhat node'

alias tdump='sudo tcpdump -i any -A port'

alias tnewbe='tmux new -s be'
alias tnewma='tmux new -s ma'
alias tnewwe='tmux new -s we'
alias tnewda='tmux new -s da'
alias tnewfe='tmux new -s fe'
alias tnewco='tmux new -s co'

alias tls='tmux ls'
alias tbe='tmux a -t be'
alias tma='tmux a -t ma'
alias twe='tmux a -t we'
alias tda='tmux a -t da'
alias tfe='tmux a -t fe'
alias tco='tmux a -t co'

