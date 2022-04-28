if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
   . ~/.git-completion.bash
fi

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
[ -d "/Users/jklemen/Workspace/8b/bin" ] && export PATH="/Users/jklemen/Workspace/8b/bin:$PATH"
export GOPATH=$HOME/go

alias brake='bundle exec rake'
alias be='bundle exec'
alias ll='ls -Gal'

####### GIT Aliases ########
alias ga='git add'
alias gb='git branch'
alias gco='git commit -m'
alias gch='git checkout'
alias gf='git fetch'
alias gp='git push'
alias gs='git status'
alias gl='git log --oneline'
alias sls=serverless

export PS1='\[\e[36m\]\u\[\e[97m\]@\[\e[32m\]macbook\[\e[97m\]$ '
 
cuke() {
  be cucumber --require features $1
}

export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin                                                                                        
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias vm='ssh jklemen@jklemen-cnu.dev.enova.com'
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/jmklemen

cover () {
    t="/tmp/go-cover.$$.tmp"
    go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}

bench() {
  go test -bench $1 -run $1 --memprofile mem.out --cpuprofile cpu.out --benchmem
}

pprof() {
  go tool pprof $1 cpu.out
}
[ -d "/Users/jklemen/8b/8b/bin" ] && export PATH="/Users/jklemen/8b/8b/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

complete -C /usr/local/bin/terraform terraform
