if [ -f ~/.git-completion.zsh ]; then
   . ~/.git-completion.zsh
fi

source /usr/local/share/chruby/chruby.sh

####### Exports #######
export HOMEBREW_NO_AUTO_UPDATE=1
export PS1='\[\e[36m\]\u\[\e[97m\]@\[\e[32m\]macbook\[\e[97m\]$ '

####### RC Commands #######

loadrc() {
  curl -sSL https://raw.githubusercontent.com/NcUltimate/configs/master/bin/loadrc.sh | sh
}

dumprc() {
  curl -sSL https://raw.githubusercontent.com/NcUltimate/configs/master/bin/dumprc.sh | sh
}

addrc() {
  curl -sSL https://raw.githubusercontent.com/NcUltimate/configs/master/bin/addrc.sh | sh
}

rmrc() {
  curl -sSL https://raw.githubusercontent.com/NcUltimate/configs/master/bin/rmrc.sh | sh
}

####### Misc Aliases #######
alias ll='ls -Gal'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

jsondiff() {
  diff -y < $(jq --sort-keys < $1) < $(jq --sort-keys < $2) | colordiff | less -R
}

derezz() {
  ffmpeg -i $1 -c:v libx264 -c:a mp2 -vf scale=1280x720 -crf 26 "$1.mp4"
}


####### Git Aliases ########
alias ga='git add'
alias gb='git branch'
alias gco='git commit -m'
alias gch='git checkout'
alias gf='git fetch'
alias gp='git push'
alias gs='git status'
alias gl='git log --oneline'

####### Runtime #######
cd ~/Workspace
