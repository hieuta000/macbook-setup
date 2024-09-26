zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' # ignore case
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} = # colorz !

umask 0002

export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

export LDFLAGS="-L/opt/homebrew/opt/node@16/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@16/include"

export WORK_DIR=~/work/skyfire

export PATH="~/bin":$PATH
export PATH="/Applications/Docker.app/Contents/Resources/bin":$PATH
export PATH="/Users/hieuta/.local/state/fnm_multishells/12068_1725750187485/bin":$PATH
export FNM_ARCH="arm64"
export FNM_LOGLEVEL="info"
export FNM_DIR="/Users/hieuta/.local/share/fnm"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_RESOLVE_ENGINES="false"
export FNM_MULTISHELL_PATH="/Users/hieuta/.local/state/fnm_multishells/12068_1725750187485"
export FNM_COREPACK_ENABLED="false"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
rehash

bindkey '^ ' autosuggest-accept

alias curl='curl --no-progress-meter'
alias wk='cd $WORK_DIR'
alias cp='cp -v'
alias ll='ls -al'
alias du='du -h -d1 .'
alias grep='grep --exclude-dir=node_modules'

alias be='cd $WORK_DIR/sky-services'
alias we='cd $WORK_DIR/web7'
alias da='cd $WORK_DIR/sky-dashboard'
alias ai='cd $WORK_DIR/aida-ai'
alias sdk='cd $WORK_DIR/skyfire-sdk'
alias mac='cd ~/work/macbook-setup'

alias gohh='cd packages/server; direnv allow; npx ts-node payment_deploy.ts; npx ts-node hieu_payment_deploy.ts'

alias g='git'
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
alias gd='git diff'
alias gdhh='git diff HEAD^ HEAD'
alias gdhh2='git diff HEAD~2 HEAD'
alias gdhh3='git diff HEAD~3 HEAD'
alias gdhh4='git diff HEAD~4 HEAD'
alias gdhh5='git diff HEAD~5 HEAD'
alias gdhh6='git diff HEAD~6 HEAD'
alias gdhh7='git diff HEAD~7 HEAD'
alias gdhh8='git diff HEAD~8 HEAD'
alias gprcreate='gh pr create --fill'
alias gprcopy='gh pr view --json url --jq '.url' | pbcopy'
alias gprview='gprcopy;gh pr view --web'

alias yp='yarn prisma migrate dev'
alias ypmd='yarn prisma migrate dev'
alias yps='yarn prisma studio'
alias yi='yarn install'
alias yb='yarn build'
alias yt='yarn test'
alias yc='yarn build:client'
alias yl='yarn lint'
alias yibt='yi;yb;yt;yl'
alias yitb='yibt'
alias yib='yi;yb'

alias demo-1='ssh -i .ssh/id_rsa hieuta@34.66.15.83'
alias sandbox-1='ssh -i .ssh/id_rsa hieuta@35.194.28.196'

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
